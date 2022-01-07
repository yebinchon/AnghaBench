; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_propagate_v.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_prepare_propagate_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, %struct.inode*)* @nilfs_btree_prepare_propagate_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_prepare_propagate_v(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, %struct.inode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_bmap*, align 8
  %8 = alloca %struct.nilfs_btree_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %7, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.inode* %4, %struct.inode** %11, align 8
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %15, i64 %17
  %19 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @buffer_nilfs_volatile(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %5
  %24 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %25 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = call i32 @nilfs_btree_prepare_update_v(%struct.nilfs_bmap* %24, %struct.nilfs_btree_path* %25, i32 %26, %struct.inode* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %6, align 4
  br label %105

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %5
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %39 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %38)
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %43, i64 %45
  %47 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @buffer_dirty(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %42, %35
  %53 = phi i1 [ false, %35 ], [ %51, %42 ]
  br i1 %53, label %54, label %72

54:                                               ; preds = %52
  %55 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %55, i64 %57
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @buffer_nilfs_volatile(i32 %60)
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = call i32 @nilfs_btree_prepare_update_v(%struct.nilfs_bmap* %63, %struct.nilfs_btree_path* %64, i32 %65, %struct.inode* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  br label %76

71:                                               ; preds = %54
  br label %35

72:                                               ; preds = %52
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  store i32 0, i32* %6, align 4
  br label %105

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %84 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.inode*, %struct.inode** %11, align 8
  %87 = call i32 @nilfs_btree_abort_update_v(%struct.nilfs_bmap* %83, %struct.nilfs_btree_path* %84, i32 %85, %struct.inode* %86)
  br label %77

88:                                               ; preds = %77
  %89 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %89, i64 %91
  %93 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @buffer_nilfs_volatile(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %88
  %98 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %7, align 8
  %99 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = call i32 @nilfs_btree_abort_update_v(%struct.nilfs_bmap* %98, %struct.nilfs_btree_path* %99, i32 %100, %struct.inode* %101)
  br label %103

103:                                              ; preds = %97, %88
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %72, %31
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @buffer_nilfs_volatile(i32) #1

declare dso_local i32 @nilfs_btree_prepare_update_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local i32 @buffer_dirty(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_btree_abort_update_v(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
