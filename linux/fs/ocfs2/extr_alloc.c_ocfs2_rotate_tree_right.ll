; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_tree_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.super_block = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"Owner %llu: error during insert of %u (left path cpos %u) results in two identical paths ending at %llu\0A\00", align 1
@SPLIT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, i32, i64, %struct.ocfs2_path*, %struct.ocfs2_path**)* @ocfs2_rotate_tree_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_tree_right(%struct.TYPE_10__* %0, %struct.ocfs2_extent_tree* %1, i32 %2, i64 %3, %struct.ocfs2_path* %4, %struct.ocfs2_path** %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ocfs2_path*, align 8
  %12 = alloca %struct.ocfs2_path**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_path*, align 8
  %18 = alloca %struct.super_block*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.ocfs2_path* %4, %struct.ocfs2_path** %11, align 8
  store %struct.ocfs2_path** %5, %struct.ocfs2_path*** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %17, align 8
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %23 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.super_block* @ocfs2_metadata_cache_get_super(i32 %24)
  store %struct.super_block* %25, %struct.super_block** %18, align 8
  %26 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* null, %struct.ocfs2_path** %26, align 8
  %27 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %28 = call %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path* %27)
  store %struct.ocfs2_path* %28, %struct.ocfs2_path** %17, align 8
  %29 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %30 = icmp ne %struct.ocfs2_path* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %179

36:                                               ; preds = %6
  %37 = load %struct.super_block*, %struct.super_block** %18, align 8
  %38 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %39 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %37, %struct.ocfs2_path* %38, i64* %16)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @mlog_errno(i32 %43)
  br label %179

45:                                               ; preds = %36
  %46 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %47 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ocfs2_metadata_cache_owner(i32 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @trace_ocfs2_rotate_tree_right(i64 %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %177, %45
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp sle i64 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %62, label %178

62:                                               ; preds = %60
  %63 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ocfs2_metadata_cache_owner(i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @trace_ocfs2_rotate_tree_right(i64 %66, i64 %67, i64 %68)
  %70 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %74 = load i64, i64* %16, align 8
  %75 = call i32 @ocfs2_find_path(i32 %72, %struct.ocfs2_path* %73, i64 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %179

81:                                               ; preds = %62
  %82 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %83 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %82)
  %84 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %85 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %84)
  %86 = icmp eq %struct.TYPE_11__* %83, %85
  %87 = zext i1 %86 to i32
  %88 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ocfs2_metadata_cache_owner(i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %95 = call %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path* %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @mlog_bug_on_msg(i32 %87, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %92, i64 %93, i64 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @SPLIT_NONE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %81
  %103 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i64 @ocfs2_rotate_requires_path_adjustment(%struct.ocfs2_path* %103, i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %109 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* %108, %struct.ocfs2_path** %109, align 8
  br label %182

110:                                              ; preds = %102, %81
  %111 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %112 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %113 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %114 = call i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree* %111, %struct.ocfs2_path* %112, %struct.ocfs2_path* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %117 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %127 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @trace_ocfs2_rotate_subtree(i32 %115, i64 %125, i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %134 = call i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__* %130, i32 %131, i32 %132, %struct.ocfs2_path* %133)
  store i32 %134, i32* %13, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %110
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @mlog_errno(i32 %138)
  br label %179

140:                                              ; preds = %110
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %142 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %143 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %144 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @ocfs2_rotate_subtree_right(%struct.TYPE_10__* %141, %struct.ocfs2_extent_tree* %142, %struct.ocfs2_path* %143, %struct.ocfs2_path* %144, i32 %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %140
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @mlog_errno(i32 %150)
  br label %179

152:                                              ; preds = %140
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @SPLIT_NONE, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %158 = call i32 @path_leaf_el(%struct.ocfs2_path* %157)
  %159 = load i64, i64* %10, align 8
  %160 = call i64 @ocfs2_leftmost_rec_contains(i32 %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %164 = load %struct.ocfs2_path**, %struct.ocfs2_path*** %12, align 8
  store %struct.ocfs2_path* %163, %struct.ocfs2_path** %164, align 8
  br label %182

165:                                              ; preds = %156, %152
  %166 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %167 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %168 = call i32 @ocfs2_mv_path(%struct.ocfs2_path* %166, %struct.ocfs2_path* %167)
  %169 = load %struct.super_block*, %struct.super_block** %18, align 8
  %170 = load %struct.ocfs2_path*, %struct.ocfs2_path** %11, align 8
  %171 = call i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block* %169, %struct.ocfs2_path* %170, i64* %16)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %165
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @mlog_errno(i32 %175)
  br label %179

177:                                              ; preds = %165
  br label %53

178:                                              ; preds = %60
  br label %179

179:                                              ; preds = %178, %174, %149, %137, %78, %42, %31
  %180 = load %struct.ocfs2_path*, %struct.ocfs2_path** %17, align 8
  %181 = call i32 @ocfs2_free_path(%struct.ocfs2_path* %180)
  br label %182

182:                                              ; preds = %179, %162, %107
  %183 = load i32, i32* %13, align 4
  ret i32 %183
}

declare dso_local %struct.super_block* @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local %struct.ocfs2_path* @ocfs2_new_path_from_path(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_find_cpos_for_left_leaf(%struct.super_block*, %struct.ocfs2_path*, i64*) #1

declare dso_local i32 @trace_ocfs2_rotate_tree_right(i64, i64, i64) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @ocfs2_find_path(i32, %struct.ocfs2_path*, i64) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64, i64, i64) #1

declare dso_local %struct.TYPE_11__* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local i64 @ocfs2_rotate_requires_path_adjustment(%struct.ocfs2_path*, i64) #1

declare dso_local i32 @ocfs2_find_subtree_root(%struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @trace_ocfs2_rotate_subtree(i32, i64, i32) #1

declare dso_local i32 @ocfs2_extend_rotate_transaction(%struct.TYPE_10__*, i32, i32, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_rotate_subtree_right(%struct.TYPE_10__*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

declare dso_local i64 @ocfs2_leftmost_rec_contains(i32, i64) #1

declare dso_local i32 @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_mv_path(%struct.ocfs2_path*, %struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_free_path(%struct.ocfs2_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
