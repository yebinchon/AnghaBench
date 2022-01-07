; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_extent_block = type { i64, i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, i32* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Owner %llu has empty extent block at %llu\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*)* @ocfs2_rotate_tree_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_tree_left(%struct.TYPE_7__* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_cached_dealloc_ctxt* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca %struct.ocfs2_path*, align 8
  %9 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_path*, align 8
  %13 = alloca %struct.ocfs2_path*, align 8
  %14 = alloca %struct.ocfs2_extent_block*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %8, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %3, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %13, align 8
  %19 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %20 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %19)
  store %struct.ocfs2_extent_list* %20, %struct.ocfs2_extent_list** %15, align 8
  %21 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @ocfs2_is_empty_extent(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %152

28:                                               ; preds = %4
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %30 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %63, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %37 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %38 = call i32 @ocfs2_rotate_rightmost_leaf_left(%struct.TYPE_7__* %35, %struct.ocfs2_extent_tree* %36, %struct.ocfs2_path* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  br label %146

45:                                               ; preds = %28
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %47 = call %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path* %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %50, %struct.ocfs2_extent_block** %14, align 8
  %51 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %51, i32 0, i32 2
  store %struct.ocfs2_extent_list* %52, %struct.ocfs2_extent_list** %15, align 8
  %53 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %45
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %34

64:                                               ; preds = %57
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %64
  %71 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ocfs2_metadata_cache_get_super(i32 %73)
  %75 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ocfs2_metadata_cache_owner(i32 %77)
  %79 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %80 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @le64_to_cpu(i32 %81)
  %83 = call i32 @ocfs2_error(i32 %74, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %82)
  store i32 %83, i32* %10, align 4
  br label %146

84:                                               ; preds = %64
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %87 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %88 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %89 = call i32 @ocfs2_remove_rightmost_path(%struct.TYPE_7__* %85, %struct.ocfs2_extent_tree* %86, %struct.ocfs2_path* %87, %struct.ocfs2_cached_dealloc_ctxt* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %95

95:                                               ; preds = %92, %84
  br label %146

96:                                               ; preds = %45
  br label %97

97:                                               ; preds = %143, %96
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.ocfs2_path*, %struct.ocfs2_path** %8, align 8
  %102 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %103 = call i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__* %98, %struct.ocfs2_extent_tree* %99, i32 %100, %struct.ocfs2_path* %101, %struct.ocfs2_cached_dealloc_ctxt* %102, %struct.ocfs2_path** %13)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @EAGAIN, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %146

114:                                              ; preds = %106, %97
  br label %115

115:                                              ; preds = %144, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @EAGAIN, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %115
  %121 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  store %struct.ocfs2_path* %121, %struct.ocfs2_path** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %13, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %123 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %126 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %9, align 8
  %127 = call i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__* %122, %struct.ocfs2_extent_tree* %123, i32 %124, %struct.ocfs2_path* %125, %struct.ocfs2_cached_dealloc_ctxt* %126, %struct.ocfs2_path** %13)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp ne i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %146

138:                                              ; preds = %130, %120
  %139 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %140 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %139)
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %12, align 8
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %97

144:                                              ; preds = %138
  br label %115

145:                                              ; preds = %115
  br label %146

146:                                              ; preds = %145, %135, %111, %95, %70, %44
  %147 = load %struct.ocfs2_path*, %struct.ocfs2_path** %12, align 8
  %148 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %147)
  %149 = load %struct.ocfs2_path*, %struct.ocfs2_path** %13, align 8
  %150 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %149)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %146, %27
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @ocfs2_rotate_rightmost_leaf_left(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_8__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_remove_rightmost_path(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @__ocfs2_rotate_tree_left(%struct.TYPE_7__*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path**) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
