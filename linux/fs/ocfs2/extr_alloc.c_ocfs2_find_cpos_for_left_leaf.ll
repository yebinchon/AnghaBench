; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_cpos_for_left_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_cpos_for_left_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.ocfs2_extent_list* }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_extent_list = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid extent tree at extent block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %0, %struct.ocfs2_path* %1, i64* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ocfs2_path*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i64*, i64** %6, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %20 = call %struct.TYPE_7__* @path_leaf_bh(%struct.ocfs2_path* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %24 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %105, %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %27
  %31 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %37, align 8
  store %struct.ocfs2_extent_list* %38, %struct.ocfs2_extent_list** %11, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %96, %30
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %39
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le64_to_cpu(i32 %54)
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %46
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %119

65:                                               ; preds = %61
  br label %105

66:                                               ; preds = %58
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = load i64*, i64** %6, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64*, i64** %6, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %81 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %86
  %88 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %80, %struct.TYPE_8__* %87)
  %89 = add nsw i64 %79, %88
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %6, align 8
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, 1
  %94 = load i64*, i64** %6, align 8
  store i64 %93, i64* %94, align 8
  br label %119

95:                                               ; preds = %46
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %39

99:                                               ; preds = %39
  %100 = load %struct.super_block*, %struct.super_block** %4, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @ocfs2_error(%struct.super_block* %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @EROFS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %9, align 4
  br label %119

105:                                              ; preds = %65
  %106 = load %struct.ocfs2_path*, %struct.ocfs2_path** %5, align 8
  %107 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %106, i32 0, i32 1
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %27

118:                                              ; preds = %27
  br label %119

119:                                              ; preds = %118, %99, %66, %64
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_7__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.TYPE_8__*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
