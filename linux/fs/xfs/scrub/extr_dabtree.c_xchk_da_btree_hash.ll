; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_btree_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_btree_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xchk_da_btree = type { i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xfs_da_state_blk* }
%struct.xfs_da_state_blk = type { i32 }
%struct.xfs_da_node_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_da_btree_hash(%struct.xchk_da_btree* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xchk_da_btree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_da_state_blk*, align 8
  %9 = alloca %struct.xfs_da_node_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.xchk_da_btree* %0, %struct.xchk_da_btree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @be32_to_cpu(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %17 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %15, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @xchk_da_set_corrupt(%struct.xchk_da_btree* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %31 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %29, i64* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %69

39:                                               ; preds = %28
  %40 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %41 = getelementptr inbounds %struct.xchk_da_btree, %struct.xchk_da_btree* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %44, align 8
  store %struct.xfs_da_state_blk* %45, %struct.xfs_da_state_blk** %8, align 8
  %46 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %8, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %49, i64 %52
  %54 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.xfs_da_node_entry* @xchk_da_btree_entry(%struct.xchk_da_btree* %46, i32 %48, i32 %55)
  store %struct.xfs_da_node_entry* %56, %struct.xfs_da_node_entry** %9, align 8
  %57 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %9, align 8
  %58 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %39
  %65 = load %struct.xchk_da_btree*, %struct.xchk_da_btree** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @xchk_da_set_corrupt(%struct.xchk_da_btree* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %39
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xchk_da_set_corrupt(%struct.xchk_da_btree*, i32) #1

declare dso_local %struct.xfs_da_node_entry* @xchk_da_btree_entry(%struct.xchk_da_btree*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
