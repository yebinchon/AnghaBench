; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_rotate_tree_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c___ocfs2_rotate_tree_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_path*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_path**)* @__ocfs2_rotate_tree_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_rotate_tree_left(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_path* %3, %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_path** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_extent_tree*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_path*, align 8
  %12 = alloca %struct.ocfs2_cached_dealloc_ctxt*, align 8
  %13 = alloca %struct.ocfs2_path**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.ocfs2_path*, align 8
  %19 = alloca %struct.ocfs2_path*, align 8
  %20 = alloca %struct.super_block*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %11, align 8
  store %struct.ocfs2_cached_dealloc_ctxt* %4, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  store %struct.ocfs2_path** %5, %struct.ocfs2_path*** %13, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %18, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  %21 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %22 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %23)
  store %struct.super_block* %24, %struct.super_block** %20, align 8
  %25 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %26 = call %struct.TYPE_6__* @path_leaf_el(%struct.ocfs2_path* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @ocfs2_is_empty_extent(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %168

33:                                               ; preds = %6
  %34 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %13, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %20, align 8
  %36 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %37 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %35, %struct.ocfs2_path* %36, i64* %17)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %162

43:                                               ; preds = %33
  %44 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %45 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %44)
  store %struct.ocfs2_path* %45, %struct.ocfs2_path** %18, align 8
  %46 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %47 = icmp ne %struct.ocfs2_path* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %162

53:                                               ; preds = %43
  %54 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %55 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %56 = call i32 @ocfs2_cp_path(%struct.ocfs2_path* %54, %struct.ocfs2_path* %55)
  %57 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %58 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %57)
  store %struct.ocfs2_path* %58, %struct.ocfs2_path** %19, align 8
  %59 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %60 = icmp ne %struct.ocfs2_path* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %162

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %160, %66
  %68 = load i64, i64* %17, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %161

70:                                               ; preds = %67
  %71 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @ocfs2_find_path(i32 %73, %struct.ocfs2_path* %74, i64 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %162

82:                                               ; preds = %70
  %83 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %85 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %86 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %83, %struct.ocfs2_path* %84, %struct.ocfs2_path* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %89 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %99 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @trace_ocfs2_rotate_subtree(i32 %87, i64 %97, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %105 = call i32 @ocfs2_extend_rotate_transaction(i32* %102, i32 0, i32 %103, %struct.ocfs2_path* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %82
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @mlog_errno(i32 %109)
  br label %162

111:                                              ; preds = %82
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %114 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %117 = call i32 @ocfs2_path_bh_journal_access(i32* %112, i32 %115, %struct.ocfs2_path* %116, i32 0)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @mlog_errno(i32 %121)
  br label %162

123:                                              ; preds = %111
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %9, align 8
  %126 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %127 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.ocfs2_cached_dealloc_ctxt*, %struct.ocfs2_cached_dealloc_ctxt** %12, align 8
  %130 = call i32 @ocfs2_rotate_subtree_left(i32* %124, %struct.ocfs2_extent_tree* %125, %struct.ocfs2_path* %126, %struct.ocfs2_path* %127, i32 %128, %struct.ocfs2_cached_dealloc_ctxt* %129, i32* %16)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @EAGAIN, align 4
  %133 = sub nsw i32 0, %132
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %123
  %136 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %137 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %13, align 8
  store %struct.ocfs2_path* %136, %struct.ocfs2_path** %137, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %19, align 8
  br label %162

138:                                              ; preds = %123
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @mlog_errno(i32 %142)
  br label %162

144:                                              ; preds = %138
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  br label %161

148:                                              ; preds = %144
  %149 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %150 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %151 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %149, %struct.ocfs2_path* %150)
  %152 = load %struct.super_block*, %struct.super_block** %20, align 8
  %153 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %154 = call i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block* %152, %struct.ocfs2_path* %153, i64* %17)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %148
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @mlog_errno(i32 %158)
  br label %162

160:                                              ; preds = %148
  br label %67

161:                                              ; preds = %147, %67
  br label %162

162:                                              ; preds = %161, %157, %141, %135, %120, %108, %79, %61, %48, %40
  %163 = load %struct.ocfs2_path*, %struct.ocfs2_path** %19, align 8
  %164 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %163)
  %165 = load %struct.ocfs2_path*, %struct.ocfs2_path** %18, align 8
  %166 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %165)
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %162, %32
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_is_empty_extent(i32*) #1

declare dso_local %struct.TYPE_6__* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_cpos_for_right_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_cp_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @trace_ocfs2_rotate_subtree(i32, i64, i32) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(i32*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @ocfs2_rotate_subtree_left(i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32, %struct.ocfs2_cached_dealloc_ctxt*, i32*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
