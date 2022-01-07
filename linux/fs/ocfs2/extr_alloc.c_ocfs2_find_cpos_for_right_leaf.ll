; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_cpos_for_right_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_find_cpos_for_right_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.ocfs2_extent_list* }
%struct.TYPE_6__ = type { i64 }
%struct.ocfs2_extent_list = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"Invalid extent tree at extent block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %0, %struct.ocfs2_path* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %16 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %112

20:                                               ; preds = %3
  %21 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %22 = call %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %96, %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %109

32:                                               ; preds = %29
  %33 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %34 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %39, align 8
  store %struct.ocfs2_extent_list* %40, %struct.ocfs2_extent_list** %12, align 8
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %87, %32
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %45
  %53 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = load i64, i64* %11, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %110

73:                                               ; preds = %69
  br label %96

74:                                               ; preds = %64
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %110

86:                                               ; preds = %52
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %45

90:                                               ; preds = %45
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @ocfs2_error(%struct.super_block* %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @EROFS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %110

96:                                               ; preds = %73
  %97 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %98 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %11, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  br label %29

109:                                              ; preds = %29
  br label %110

110:                                              ; preds = %109, %90, %74, %72
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %19
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
