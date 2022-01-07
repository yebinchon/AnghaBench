; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_try_to_merge_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_try_to_merge_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.pnfs_block_extent = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_block_extent* (%struct.rb_root*, %struct.pnfs_block_extent*)* @ext_try_to_merge_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_block_extent* @ext_try_to_merge_left(%struct.rb_root* %0, %struct.pnfs_block_extent* %1) #0 {
  %3 = alloca %struct.pnfs_block_extent*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct.pnfs_block_extent*, align 8
  %6 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %4, align 8
  store %struct.pnfs_block_extent* %1, %struct.pnfs_block_extent** %5, align 8
  %7 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %8 = call %struct.pnfs_block_extent* @ext_tree_prev(%struct.pnfs_block_extent* %7)
  store %struct.pnfs_block_extent* %8, %struct.pnfs_block_extent** %6, align 8
  %9 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %10 = icmp ne %struct.pnfs_block_extent* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %13 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %14 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %12, %struct.pnfs_block_extent* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %18 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  %21 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %25 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %24, i32 0, i32 1
  %26 = load %struct.rb_root*, %struct.rb_root** %4, align 8
  %27 = call i32 @rb_erase(i32* %25, %struct.rb_root* %26)
  %28 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %29 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @nfs4_put_deviceid_node(i32 %30)
  %32 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %33 = call i32 @kfree(%struct.pnfs_block_extent* %32)
  %34 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %6, align 8
  store %struct.pnfs_block_extent* %34, %struct.pnfs_block_extent** %3, align 8
  br label %37

35:                                               ; preds = %11, %2
  %36 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  store %struct.pnfs_block_extent* %36, %struct.pnfs_block_extent** %3, align 8
  br label %37

37:                                               ; preds = %35, %16
  %38 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %3, align 8
  ret %struct.pnfs_block_extent* %38
}

declare dso_local %struct.pnfs_block_extent* @ext_tree_prev(%struct.pnfs_block_extent*) #1

declare dso_local i64 @ext_can_merge(%struct.pnfs_block_extent*, %struct.pnfs_block_extent*) #1

declare dso_local i32 @rb_erase(i32*, %struct.rb_root*) #1

declare dso_local i32 @nfs4_put_deviceid_node(i32) #1

declare dso_local i32 @kfree(%struct.pnfs_block_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
