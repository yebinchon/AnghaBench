; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_subtree_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_rotate_subtree_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i64, i64, %struct.ocfs2_extent_rec* }
%struct.ocfs2_extent_rec = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"Inode %llu has non-full interior leaf node %llu (next free = %u)\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Inode %llu: Rotate fails because rightmost leaf block %llu is empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32)* @ocfs2_rotate_subtree_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_rotate_subtree_right(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_path* %2, %struct.ocfs2_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_extent_tree*, align 8
  %9 = alloca %struct.ocfs2_path*, align 8
  %10 = alloca %struct.ocfs2_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_extent_list*, align 8
  %18 = alloca %struct.ocfs2_extent_list*, align 8
  %19 = alloca %struct.ocfs2_extent_rec, align 4
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %8, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %9, align 8
  store %struct.ocfs2_path* %3, %struct.ocfs2_path** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %20 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %21 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %15, align 8
  %22 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %23 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %22)
  store %struct.ocfs2_extent_list* %23, %struct.ocfs2_extent_list** %18, align 8
  %24 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %5
  %32 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ocfs2_metadata_cache_get_super(i32 %34)
  %36 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %37 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ocfs2_metadata_cache_owner(i32 %38)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @le16_to_cpu(i64 %45)
  %47 = call i32 @ocfs2_error(i32 %35, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %42, i32 %46)
  %48 = load i32, i32* @EROFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %195

50:                                               ; preds = %5
  %51 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %51, i32 0, i32 2
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %52, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i64 0
  %55 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %195

58:                                               ; preds = %50
  %59 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %16, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %68 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %69 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.buffer_head*, %struct.buffer_head** %74, align 8
  %76 = icmp ne %struct.buffer_head* %67, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ocfs2_path_bh_journal_access(i32* %79, i32 %82, %struct.ocfs2_path* %83, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %58
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %193

91:                                               ; preds = %58
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %126, %91
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %97 = call i32 @path_num_items(%struct.ocfs2_path* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %129

99:                                               ; preds = %94
  %100 = load i32*, i32** %7, align 8
  %101 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %102 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ocfs2_path_bh_journal_access(i32* %100, i32 %103, %struct.ocfs2_path* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @mlog_errno(i32 %110)
  br label %193

112:                                              ; preds = %99
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %115 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @ocfs2_path_bh_journal_access(i32* %113, i32 %116, %struct.ocfs2_path* %117, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %193

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %94

129:                                              ; preds = %94
  %130 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %131 = call %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path* %130)
  store %struct.buffer_head* %131, %struct.buffer_head** %14, align 8
  %132 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %133 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %132)
  store %struct.ocfs2_extent_list* %133, %struct.ocfs2_extent_list** %17, align 8
  %134 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %135 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %8, align 8
  %141 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @ocfs2_metadata_cache_owner(i32 %142)
  %144 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @mlog_bug_on_msg(i32 %139, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %143, i64 %146)
  %148 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %149 = call i32 @ocfs2_create_empty_extent(%struct.ocfs2_extent_list* %148)
  %150 = load i32*, i32** %7, align 8
  %151 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %152 = call i32 @ocfs2_journal_dirty(i32* %150, %struct.buffer_head* %151)
  %153 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %154 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @le16_to_cpu(i64 %155)
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  %158 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %159 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %158, i32 0, i32 2
  %160 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %160, i64 %162
  %164 = bitcast %struct.ocfs2_extent_rec* %19 to i8*
  %165 = bitcast %struct.ocfs2_extent_rec* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 4 %165, i64 4, i1 false)
  %166 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %17, align 8
  %167 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %166, i32 0, i32 2
  %168 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %167, align 8
  %169 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %168, i64 0
  %170 = bitcast %struct.ocfs2_extent_rec* %169 to i8*
  %171 = bitcast %struct.ocfs2_extent_rec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  %172 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %173 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %172, i32 0, i32 0
  %174 = call i32 @le16_add_cpu(i64* %173, i32 -1)
  %175 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %176 = call i32 @ocfs2_shift_records_right(%struct.ocfs2_extent_list* %175)
  %177 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %178 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %177, i32 0, i32 2
  %179 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %178, align 8
  %180 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %179, i64 0
  %181 = call i32 @memset(%struct.ocfs2_extent_rec* %180, i32 0, i32 4)
  %182 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %18, align 8
  %183 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %182, i32 0, i32 0
  %184 = call i32 @le16_add_cpu(i64* %183, i32 1)
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %187 = call i32 @ocfs2_journal_dirty(i32* %185, %struct.buffer_head* %186)
  %188 = load i32*, i32** %7, align 8
  %189 = load %struct.ocfs2_path*, %struct.ocfs2_path** %9, align 8
  %190 = load %struct.ocfs2_path*, %struct.ocfs2_path** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @ocfs2_complete_edge_insert(i32* %188, %struct.ocfs2_path* %189, %struct.ocfs2_path* %190, i32 %191)
  br label %193

193:                                              ; preds = %129, %122, %109, %88
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %193, %57, %31
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local %struct.buffer_head* @path_leaf_bh(%struct.ocfs2_path*) #1

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i64 @ocfs2_metadata_cache_owner(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_path_bh_journal_access(i32*, i32, %struct.ocfs2_path*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @path_num_items(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_create_empty_extent(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @ocfs2_shift_records_right(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @memset(%struct.ocfs2_extent_rec*, i32, i32) #1

declare dso_local i32 @ocfs2_complete_edge_insert(i32*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
