; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_init_file_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_init_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.fuse_inode = type { i32, i32, i64, i32, i32 }

@fuse_file_operations = common dso_local global i32 0, align 4
@fuse_file_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_init_file_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.fuse_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %4)
  store %struct.fuse_inode* %5, %struct.fuse_inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  store i32* @fuse_file_operations, i32** %7, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* @fuse_file_aops, i32** %10, align 8
  %11 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %12 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %11, i32 0, i32 4
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %15 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %14, i32 0, i32 3
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %18 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %20 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %19, i32 0, i32 1
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.fuse_inode*, %struct.fuse_inode** %3, align 8
  %23 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %22, i32 0, i32 0
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
