; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_create_new_meta_bhs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_alloc.c_ocfs2_create_new_meta_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_extent_block = type { %struct.TYPE_4__, i8*, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_4__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_EXTENT_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ocfs2_extent_tree*, i32, %struct.ocfs2_alloc_context*, %struct.buffer_head**)* @ocfs2_create_new_meta_bhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_new_meta_bhs(i32* %0, %struct.ocfs2_extent_tree* %1, i32 %2, %struct.ocfs2_alloc_context* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocfs2_extent_tree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ocfs2_super*, align 8
  %19 = alloca %struct.ocfs2_extent_block*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %9, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %10, align 8
  %20 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ocfs2_metadata_cache_get_super(i32 %22)
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %18, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %169, %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %173

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 @ocfs2_claim_metadata(i32* %30, %struct.ocfs2_alloc_context* %31, i32 %34, i32* %16, i32* %14, i32* %15, i32* %17)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %174

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %166, %41
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %169

49:                                               ; preds = %43
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call %struct.buffer_head* @sb_getblk(%struct.TYPE_5__* %52, i32 %53)
  %55 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %55, i64 %57
  store %struct.buffer_head* %54, %struct.buffer_head** %58, align 8
  %59 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %59, i64 %61
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = icmp eq %struct.buffer_head* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %174

70:                                               ; preds = %49
  %71 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %74, i64 %76
  %78 = load %struct.buffer_head*, %struct.buffer_head** %77, align 8
  %79 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %73, %struct.buffer_head* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %7, align 8
  %82 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %84, i64 %86
  %88 = load %struct.buffer_head*, %struct.buffer_head** %87, align 8
  %89 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %90 = call i32 @ocfs2_journal_access_eb(i32* %80, i32 %83, %struct.buffer_head* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %70
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @mlog_errno(i32 %94)
  br label %174

96:                                               ; preds = %70
  %97 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %97, i64 %99
  %101 = load %struct.buffer_head*, %struct.buffer_head** %100, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %105 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memset(i64 %103, i32 0, i32 %108)
  %110 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %110, i64 %112
  %114 = load %struct.buffer_head*, %struct.buffer_head** %113, align 8
  %115 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %117, %struct.ocfs2_extent_block** %19, align 8
  %118 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %119 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @OCFS2_EXTENT_BLOCK_SIGNATURE, align 4
  %122 = call i32 @strcpy(i32 %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = call i8* @cpu_to_le64(i32 %123)
  %125 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %126 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %128 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @cpu_to_le32(i32 %129)
  %131 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %134 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_le16(i32 %135)
  %137 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %138 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load i32, i32* %16, align 4
  %140 = call i8* @cpu_to_le64(i32 %139)
  %141 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %142 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i8* @cpu_to_le16(i32 %143)
  %145 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %146 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %145, i32 0, i32 1
  store i8* %144, i8** %146, align 8
  %147 = load %struct.ocfs2_super*, %struct.ocfs2_super** %18, align 8
  %148 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__* %149)
  %151 = call i8* @cpu_to_le16(i32 %150)
  %152 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %153 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i8* %151, i8** %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %17, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %160, i64 %162
  %164 = load %struct.buffer_head*, %struct.buffer_head** %163, align 8
  %165 = call i32 @ocfs2_journal_dirty(i32* %159, %struct.buffer_head* %164)
  br label %166

166:                                              ; preds = %96
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %43

169:                                              ; preds = %43
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %11, align 4
  br label %25

173:                                              ; preds = %25
  store i32 0, i32* %12, align 4
  br label %174

174:                                              ; preds = %173, %93, %65, %38
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %193, %177
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %183, i64 %185
  %187 = load %struct.buffer_head*, %struct.buffer_head** %186, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  %189 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %189, i64 %191
  store %struct.buffer_head* null, %struct.buffer_head** %192, align 8
  br label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %178

196:                                              ; preds = %178
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @mlog_errno(i32 %197)
  br label %199

199:                                              ; preds = %196, %174
  %200 = load i32, i32* %12, align 4
  ret i32 %200
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_metadata_cache_get_super(i32) #1

declare dso_local i32 @ocfs2_claim_metadata(i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_journal_access_eb(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_extent_recs_per_eb(%struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
