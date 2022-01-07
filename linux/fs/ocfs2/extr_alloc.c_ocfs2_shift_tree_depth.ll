; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_shift_tree_depth.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_shift_tree_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { %struct.buffer_head*, i32, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i64 }
%struct.ocfs2_extent_list = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_extent_block = type { i32, %struct.ocfs2_extent_list }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_shift_tree_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_shift_tree_depth(i32* %0, %struct.ocfs2_extent_tree* %1, %struct.ocfs2_alloc_context* %2, %struct.buffer_head** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_extent_tree*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.ocfs2_extent_block*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %6, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %7, align 8
  store %struct.buffer_head** %3, %struct.buffer_head*** %8, align 8
  store i32 0, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %17 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %18 = call i32 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %23 = call i32 @ocfs2_reuse_blk_from_dealloc(i32* %21, %struct.ocfs2_extent_tree* %22, %struct.buffer_head** %13, i32 1, i32* %11)
  store i32 %23, i32* %9, align 4
  br label %35

24:                                               ; preds = %4
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %26 = icmp ne %struct.ocfs2_alloc_context* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %30 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %31 = call i32 @ocfs2_create_new_meta_bhs(i32* %28, %struct.ocfs2_extent_tree* %29, i32 1, %struct.ocfs2_alloc_context* %30, %struct.buffer_head** %13)
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %186

41:                                               ; preds = %35
  %42 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %45, %struct.ocfs2_extent_block** %14, align 8
  %46 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %47 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %53 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %52, i32 0, i32 1
  store %struct.ocfs2_extent_list* %53, %struct.ocfs2_extent_list** %16, align 8
  %54 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %54, i32 0, i32 2
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %55, align 8
  store %struct.ocfs2_extent_list* %56, %struct.ocfs2_extent_list** %15, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %62 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %63 = call i32 @ocfs2_journal_access_eb(i32* %57, i32 %60, %struct.buffer_head* %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %41
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @mlog_errno(i32 %67)
  br label %186

69:                                               ; preds = %41
  %70 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %102, %69
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @le16_to_cpu(i64 %84)
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %80
  %88 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %89 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %95 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = bitcast %struct.TYPE_2__* %93 to i8*
  %101 = bitcast %struct.TYPE_2__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 16, i1 false)
  br label %102

102:                                              ; preds = %87
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %80

105:                                              ; preds = %80
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %108 = call i32 @ocfs2_journal_dirty(i32* %106, %struct.buffer_head* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %111 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %112 = call i32 @ocfs2_et_root_journal_access(i32* %109, %struct.ocfs2_extent_tree* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %186

118:                                              ; preds = %105
  %119 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %16, align 8
  %120 = call i32 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list* %119)
  store i32 %120, i32* %12, align 4
  %121 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %122 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %121, i32 0, i32 0
  %123 = call i32 @le16_add_cpu(i64* %122, i32 1)
  %124 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %125 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i64 0, i64* %128, align 8
  %129 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %130 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %133 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %131, i32* %136, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @cpu_to_le32(i32 %137)
  %139 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %140 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %138, i32* %143, align 8
  store i32 1, i32* %10, align 4
  br label %144

144:                                              ; preds = %159, %118
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %147 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @le16_to_cpu(i64 %148)
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %144
  %152 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %153 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %152, i32 0, i32 2
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %156
  %158 = call i32 @memset(%struct.TYPE_2__* %157, i32 0, i32 4)
  br label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %144

162:                                              ; preds = %144
  %163 = call i64 @cpu_to_le16(i32 1)
  %164 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %165 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %167 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @cpu_to_le16(i32 1)
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %162
  %172 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %173 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %14, align 8
  %174 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @le64_to_cpu(i32 %175)
  %177 = call i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree* %172, i32 %176)
  br label %178

178:                                              ; preds = %171, %162
  %179 = load i32*, i32** %5, align 8
  %180 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %6, align 8
  %181 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %180, i32 0, i32 0
  %182 = load %struct.buffer_head*, %struct.buffer_head** %181, align 8
  %183 = call i32 @ocfs2_journal_dirty(i32* %179, %struct.buffer_head* %182)
  %184 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %185 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %184, %struct.buffer_head** %185, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store i32 0, i32* %9, align 4
  br label %186

186:                                              ; preds = %178, %115, %66, %38
  %187 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  %189 = load i32, i32* %9, align 4
  ret i32 %189
}

declare dso_local i32 @ocfs2_is_dealloc_empty(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_reuse_blk_from_dealloc(i32*, %struct.ocfs2_extent_tree*, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @ocfs2_create_new_meta_bhs(i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_et_root_journal_access(i32*, %struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @ocfs2_sum_rightmost_rec(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_et_set_last_eb_blk(%struct.ocfs2_extent_tree*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
