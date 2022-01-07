; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_bnode.c_hfs_bnode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BNODE_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"get_node(%d:%d): %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_bnode_get(%struct.hfs_bnode* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  store %struct.hfs_bnode* %0, %struct.hfs_bnode** %2, align 8
  %3 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %4 = icmp ne %struct.hfs_bnode* %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %7 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %6, i32 0, i32 0
  %8 = call i32 @atomic_inc(i32* %7)
  %9 = load i32, i32* @BNODE_REFS, align 4
  %10 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %11 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %16 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  %19 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = call i32 @hfs_dbg(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
