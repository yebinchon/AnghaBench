; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_lookup_last.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_do_lookup_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32* }
%struct.nilfs_btree_node = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32*, i32*)* @nilfs_btree_do_lookup_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_do_lookup_last(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nilfs_btree_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %17 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %16)
  store %struct.nilfs_btree_node* %17, %struct.nilfs_btree_node** %10, align 8
  %18 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %19 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %108

26:                                               ; preds = %4
  %27 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %28 = call i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node* %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %32 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %33, i64 %35
  %37 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %39, i64 %41
  %43 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %45 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %90, %26
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %48
  %52 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %54, i64 %56
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i32 0, i32 1
  %59 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %52, i32 %53, i32** %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %5, align 4
  br label %108

64:                                               ; preds = %51
  %65 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %65, i32 %66)
  store %struct.nilfs_btree_node* %67, %struct.nilfs_btree_node** %10, align 8
  %68 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %69 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @nilfs_btree_bad_node(%struct.nilfs_bmap* %68, %struct.nilfs_btree_node* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %64
  %77 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %78 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %77)
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  %80 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %80, i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %85, i64 %87
  %89 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %13, align 4
  br label %48

93:                                               ; preds = %48
  %94 = load i32*, i32** %8, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %97, i32 %98)
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %93
  %102 = load i32*, i32** %9, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %73, %62, %23
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_level(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i32, i32**) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i64 @nilfs_btree_bad_node(%struct.nilfs_bmap*, %struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
