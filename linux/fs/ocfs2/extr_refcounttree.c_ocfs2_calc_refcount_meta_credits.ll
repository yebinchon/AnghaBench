; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_calc_refcount_meta_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_calc_refcount_meta_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_block = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocfs2_refcount_rec = type { i64, i32, i64 }
%struct.ocfs2_extent_tree = type { i32 }

@OCFS2_REFCOUNT_TREE_FL = common dso_local global i32 0, align 4
@OCFS2_EXPAND_REFCOUNT_TREE_CREDITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, i32*, i32*)* @ocfs2_calc_refcount_meta_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_refcount_meta_credits(%struct.super_block* %0, %struct.ocfs2_caching_info* %1, %struct.buffer_head* %2, i64 %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ocfs2_caching_info*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.ocfs2_refcount_block*, align 8
  %21 = alloca %struct.ocfs2_refcount_rec, align 8
  %22 = alloca %struct.buffer_head*, align 8
  %23 = alloca %struct.buffer_head*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.ocfs2_extent_tree, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.ocfs2_caching_info* %1, %struct.ocfs2_caching_info** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %19, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %23, align 8
  br label %27

27:                                               ; preds = %147, %7
  %28 = load i64, i64* %12, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %156

30:                                               ; preds = %27
  %31 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info* %31, %struct.buffer_head* %32, i64 %33, i64 %34, %struct.ocfs2_refcount_rec* %21, i32* %16, %struct.buffer_head** %22)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @mlog_errno(i32 %39)
  br label %241

41:                                               ; preds = %30
  %42 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %44 = icmp ne %struct.buffer_head* %42, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %41
  %46 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %52, %struct.ocfs2_refcount_block** %20, align 8
  %53 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %54 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le16_to_cpu(i32 %56)
  %58 = load i32, i32* %18, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %62 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @le16_to_cpu(i32 %64)
  %66 = icmp sgt i64 %60, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %48
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %67, %48
  br label %71

71:                                               ; preds = %70, %45
  store i32 0, i32* %18, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  %77 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %77, %struct.buffer_head** %23, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %79 = call i32 @get_bh(%struct.buffer_head* %78)
  br label %80

80:                                               ; preds = %71, %41
  %81 = load i32, i32* %18, align 4
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @le64_to_cpu(i32 %85)
  %87 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @le32_to_cpu(i64 %88)
  %90 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @le32_to_cpu(i64 %91)
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @trace_ocfs2_calc_refcount_meta_credits_iterate(i32 %81, i64 %82, i64 %83, i64 %86, i32 %89, i32 %92, i32 %93)
  %95 = load i64, i64* %19, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add nsw i64 %95, %96
  %98 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @le32_to_cpu(i64 %102)
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %100, %104
  %106 = call i64 @min(i64 %97, i64 %105)
  %107 = load i64, i64* %19, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %24, align 8
  %109 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %80
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %18, align 4
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @le64_to_cpu(i32 %121)
  %123 = icmp ne i64 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %18, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %127

127:                                              ; preds = %124, %118, %112
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %128, %129
  %131 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @le64_to_cpu(i32 %132)
  %134 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %21, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @le32_to_cpu(i64 %135)
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %133, %137
  %139 = icmp slt i64 %130, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %140, %127
  br label %147

144:                                              ; preds = %80
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %144, %143
  %148 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %149 = call i32 @brelse(%struct.buffer_head* %148)
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %12, align 8
  %152 = sub nsw i64 %151, %150
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %24, align 8
  %154 = load i64, i64* %19, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %19, align 8
  br label %27

156:                                              ; preds = %27
  %157 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %158 = icmp ne %struct.buffer_head* %157, null
  br i1 %158, label %159, label %185

159:                                              ; preds = %156
  %160 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %161 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %163, %struct.ocfs2_refcount_block** %20, align 8
  %164 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %165 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @le16_to_cpu(i32 %167)
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  %172 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %173 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @le16_to_cpu(i32 %175)
  %177 = icmp sgt i64 %171, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %159
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %178, %159
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %181, %156
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %241

189:                                              ; preds = %185
  %190 = load i32, i32* %17, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %190
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %194
  store i32 %197, i32* %195, align 4
  %198 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %201, %struct.ocfs2_refcount_block** %20, align 8
  %202 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %20, align 8
  %203 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @le32_to_cpu(i64 %204)
  %206 = load i32, i32* @OCFS2_REFCOUNT_TREE_FL, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %230

209:                                              ; preds = %189
  %210 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %9, align 8
  %211 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %212 = call i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree* %25, %struct.ocfs2_caching_info* %210, %struct.buffer_head* %211)
  %213 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %25, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @ocfs2_extend_meta_needed(i32 %214)
  %216 = load i32*, i32** %13, align 8
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %215
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %216, align 4
  %221 = load %struct.super_block*, %struct.super_block** %8, align 8
  %222 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %25, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @ocfs2_calc_extend_credits(%struct.super_block* %221, i32 %223)
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, %224
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 4
  br label %240

230:                                              ; preds = %189
  %231 = load i64, i64* @OCFS2_EXPAND_REFCOUNT_TREE_CREDITS, align 8
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %231
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %232, align 4
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %240

240:                                              ; preds = %230, %209
  br label %241

241:                                              ; preds = %240, %188, %38
  %242 = load i64, i64* %11, align 8
  %243 = load i64, i64* %12, align 8
  %244 = load i32*, i32** %13, align 8
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %14, align 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @trace_ocfs2_calc_refcount_meta_credits(i64 %242, i64 %243, i32 %245, i32 %247)
  %249 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %250 = call i32 @brelse(%struct.buffer_head* %249)
  %251 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  %252 = call i32 @brelse(%struct.buffer_head* %251)
  %253 = load i32, i32* %15, align 4
  ret i32 %253
}

declare dso_local i32 @ocfs2_get_refcount_rec(%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i64, %struct.ocfs2_refcount_rec*, i32*, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @trace_ocfs2_calc_refcount_meta_credits_iterate(i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @ocfs2_init_refcount_extent_tree(%struct.ocfs2_extent_tree*, %struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i64 @ocfs2_extend_meta_needed(i32) #1

declare dso_local i64 @ocfs2_calc_extend_credits(%struct.super_block*, i32) #1

declare dso_local i32 @trace_ocfs2_calc_refcount_meta_credits(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
