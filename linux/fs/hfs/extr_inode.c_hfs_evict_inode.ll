; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_inode.c_hfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.inode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 0
  %5 = call i32 @truncate_inode_pages_final(i32* %4)
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call i32 @clear_inode(%struct.inode* %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i64 @HFS_IS_RSRC(%struct.inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  %16 = icmp ne %struct.inode* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  %22 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %23, align 8
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call %struct.TYPE_2__* @HFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  %28 = call i32 @iput(%struct.inode* %27)
  br label %29

29:                                               ; preds = %17, %11, %1
  ret void
}

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i64 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
