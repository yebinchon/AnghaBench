; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_gather_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_gather_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_btree_node = type { i32 }

@NILFS_BTREE_ROOT_NCHILDREN_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32*, i32*, i32)* @nilfs_btree_gather_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_btree_gather_data(%struct.nilfs_bmap* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.nilfs_btree_node*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %21 = call %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap* %20)
  store %struct.nilfs_btree_node* %21, %struct.nilfs_btree_node** %12, align 8
  %22 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %23 = call i32 @nilfs_btree_height(%struct.nilfs_bmap* %22)
  switch i32 %23, label %53 [
    i32 2, label %24
    i32 3, label %27
  ]

24:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %25 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  store %struct.nilfs_btree_node* %25, %struct.nilfs_btree_node** %11, align 8
  %26 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  store i32 %26, i32* %17, align 4
  br label %56

27:                                               ; preds = %4
  %28 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %29 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp sgt i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @NILFS_BTREE_ROOT_NCHILDREN_MAX, align 4
  %38 = call i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node* %34, i32 %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @nilfs_btree_get_block(%struct.nilfs_bmap* %39, i32 %40, %struct.buffer_head** %10)
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %27
  %45 = load i32, i32* %19, align 4
  store i32 %45, i32* %5, align 4
  br label %106

46:                                               ; preds = %27
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.nilfs_btree_node*
  store %struct.nilfs_btree_node* %50, %struct.nilfs_btree_node** %11, align 8
  %51 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %52 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %51)
  store i32 %52, i32* %17, align 4
  br label %56

53:                                               ; preds = %4
  store %struct.nilfs_btree_node* null, %struct.nilfs_btree_node** %11, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %106

56:                                               ; preds = %46, %24
  %57 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %58 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %56
  %65 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %66 = call i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node* %65)
  store i32* %66, i32** %13, align 8
  %67 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node* %67, i32 %68)
  store i32* %69, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %70

70:                                               ; preds = %95, %64
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le64_to_cpu(i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le64_to_cpu(i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %74
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %70

98:                                               ; preds = %70
  %99 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %100 = icmp ne %struct.buffer_head* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %53, %44
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_root(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_height(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nilfs_btree_node_get_ptr(%struct.nilfs_btree_node*, i32, i32) #1

declare dso_local i32 @nilfs_btree_get_block(%struct.nilfs_bmap*, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32* @nilfs_btree_node_dkeys(%struct.nilfs_btree_node*) #1

declare dso_local i32* @nilfs_btree_node_dptrs(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
