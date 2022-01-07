; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_extent_tree.c_ext_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_layout = type { i32, i32, i32 }
%struct.pnfs_block_extent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext_tree_lookup(%struct.pnfs_block_layout* %0, i32 %1, %struct.pnfs_block_extent* %2, i32 %3) #0 {
  %5 = alloca %struct.pnfs_block_layout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pnfs_block_extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pnfs_block_layout* %0, %struct.pnfs_block_layout** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pnfs_block_extent* %2, %struct.pnfs_block_extent** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %11 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %17 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %16, i32 0, i32 2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %20 = call i32 @__ext_tree_lookup(i32* %17, i32 %18, %struct.pnfs_block_extent* %19)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %26 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %7, align 8
  %29 = call i32 @__ext_tree_lookup(i32* %26, i32 %27, %struct.pnfs_block_extent* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.pnfs_block_layout*, %struct.pnfs_block_layout** %5, align 8
  %32 = getelementptr inbounds %struct.pnfs_block_layout, %struct.pnfs_block_layout* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ext_tree_lookup(i32*, i32, %struct.pnfs_block_extent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
