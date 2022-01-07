; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_append_rec_to_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_append_rec_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_extent_rec = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_extent_list = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_path*, %struct.ocfs2_path**)* @ocfs2_append_rec_to_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_append_rec_to_path(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_rec* %2, %struct.ocfs2_path* %3, %struct.ocfs2_path** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_path*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %8, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path** %4, %struct.ocfs2_path*** %10, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %14, align 8
  %16 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %10, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %16, align 8
  %17 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %24 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %23)
  store %struct.ocfs2_extent_list* %24, %struct.ocfs2_extent_list** %13, align 8
  %25 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %90

34:                                               ; preds = %31
  %35 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i64 @ocfs2_is_empty_extent(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %34, %5
  %42 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %43 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ocfs2_metadata_cache_get_super(i32 %44)
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %47 = call i32 @ocfs2_find_cpos_for_left_leaf(i32 %45, %struct.ocfs2_path* %46, i64* %15)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %110

53:                                               ; preds = %41
  %54 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ocfs2_metadata_cache_owner(i32 %56)
  %58 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load i64, i64* %15, align 8
  %63 = call i32 @trace_ocfs2_append_rec_to_path(i64 %57, i32 %61, i64 %62)
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %68 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %67)
  store %struct.ocfs2_path* %68, %struct.ocfs2_path** %14, align 8
  %69 = load %struct.ocfs2_path*, %struct.ocfs2_path** %14, align 8
  %70 = icmp ne %struct.ocfs2_path* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %110

76:                                               ; preds = %66
  %77 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %78 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ocfs2_path*, %struct.ocfs2_path** %14, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @ocfs2_find_path(i32 %79, %struct.ocfs2_path* %80, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %110

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %53
  br label %90

90:                                               ; preds = %89, %34, %31
  %91 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %92 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %96 = call i32 @ocfs2_journal_access_path(i32 %93, i32* %94, %struct.ocfs2_path* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @mlog_errno(i32 %100)
  br label %110

102:                                              ; preds = %90
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %105 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %106 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %107 = call i32 @ocfs2_adjust_rightmost_records(i32* %103, %struct.ocfs2_extent_tree* %104, %struct.ocfs2_path* %105, %struct.ocfs2_extent_rec* %106)
  %108 = load %struct.ocfs2_path*, %struct.ocfs2_path** %14, align 8
  %109 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %10, align 8
  store %struct.ocfs2_path* %108, %struct.ocfs2_path** %109, align 8
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %102, %99, %85, %71, %50
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.ocfs2_path*, %struct.ocfs2_path** %14, align 8
  %115 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(i32, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @trace_ocfs2_append_rec_to_path(i64, i32, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_journal_access_path(i32, i32*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_adjust_rightmost_records(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
