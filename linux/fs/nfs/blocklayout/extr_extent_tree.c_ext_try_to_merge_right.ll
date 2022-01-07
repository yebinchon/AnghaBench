; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_try_to_merge_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_try_to_merge_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.pnfs_block_extent = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pnfs_block_extent* (%struct.rb_root*, %struct.pnfs_block_extent*)* @ext_try_to_merge_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pnfs_block_extent* @ext_try_to_merge_right(%struct.rb_root* %0, %struct.pnfs_block_extent* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.pnfs_block_extent*, align 8
  %5 = alloca %struct.pnfs_block_extent*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.pnfs_block_extent* %1, %struct.pnfs_block_extent** %4, align 8
  %6 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %7 = call %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent* %6)
  store %struct.pnfs_block_extent* %7, %struct.pnfs_block_extent** %5, align 8
  %8 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %9 = icmp ne %struct.pnfs_block_extent* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %12 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %13 = call i64 @ext_can_merge(%struct.pnfs_block_extent* %11, %struct.pnfs_block_extent* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %17 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %20 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %24 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %23, i32 0, i32 1
  %25 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %26 = call i32 @rb_erase(i32* %24, %struct.rb_root* %25)
  %27 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %28 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @nfs4_put_deviceid_node(i32 %29)
  %31 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %5, align 8
  %32 = call i32 @kfree(%struct.pnfs_block_extent* %31)
  br label %33

33:                                               ; preds = %15, %10, %2
  %34 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  ret %struct.pnfs_block_extent* %34
}

declare dso_local %struct.pnfs_block_extent* @ext_tree_next(%struct.pnfs_block_extent*) #1

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
