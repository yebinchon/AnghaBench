; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_split_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_split_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_iext_node = type { i8**, i32** }

@NODE_SIZE = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@KEYS_PER_NODE = common dso_local global i32 0, align 4
@XFS_IEXT_KEY_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfs_iext_node* (%struct.xfs_iext_node**, i32*, i32*)* @xfs_iext_split_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfs_iext_node* @xfs_iext_split_node(%struct.xfs_iext_node** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.xfs_iext_node**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_iext_node*, align 8
  %8 = alloca %struct.xfs_iext_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfs_iext_node** %0, %struct.xfs_iext_node*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %4, align 8
  %13 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %12, align 8
  store %struct.xfs_iext_node* %13, %struct.xfs_iext_node** %7, align 8
  %14 = load i32, i32* @NODE_SIZE, align 4
  %15 = load i32, i32* @KM_NOFS, align 4
  %16 = call %struct.xfs_iext_node* @kmem_zalloc(i32 %14, i32 %15)
  store %struct.xfs_iext_node* %16, %struct.xfs_iext_node** %8, align 8
  %17 = load i32, i32* @KEYS_PER_NODE, align 4
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @KEYS_PER_NODE, align 4
  %21 = and i32 %20, 1
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KEYS_PER_NODE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %29 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %4, align 8
  store %struct.xfs_iext_node* %28, %struct.xfs_iext_node** %29, align 8
  %30 = load i32*, i32** %5, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 0, i32* %31, align 4
  br label %106

32:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %85, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %33
  %38 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %7, align 8
  %39 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %40, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %48 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  store i8* %46, i8** %52, align 8
  %53 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %55, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %63 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* %61, i32** %67, align 8
  %68 = load i8*, i8** @XFS_IEXT_KEY_INVALID, align 8
  %69 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %7, align 8
  %70 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %71, i64 %75
  store i8* %68, i8** %76, align 8
  %77 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %7, align 8
  %78 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %79, i64 %83
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %37
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %33

88:                                               ; preds = %33
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %95 = load %struct.xfs_iext_node**, %struct.xfs_iext_node*** %4, align 8
  store %struct.xfs_iext_node* %94, %struct.xfs_iext_node** %95, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  br label %105

102:                                              ; preds = %88
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %93
  br label %106

106:                                              ; preds = %105, %27
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @KEYS_PER_NODE, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i8*, i8** @XFS_IEXT_KEY_INVALID, align 8
  %113 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  %114 = getelementptr inbounds %struct.xfs_iext_node, %struct.xfs_iext_node* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %107

122:                                              ; preds = %107
  %123 = load %struct.xfs_iext_node*, %struct.xfs_iext_node** %8, align 8
  ret %struct.xfs_iext_node* %123
}

declare dso_local %struct.xfs_iext_node* @kmem_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
