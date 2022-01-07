; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_suballoc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_suballoc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i64, i64, i32, i8*, %struct.TYPE_12__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_suballoc_result = type { i8* }
%struct.ocfs2_chain_list = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"Chain allocator dinode %llu has %u used bits but only %u total\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_alloc_context*, i32*, i64, i64, %struct.ocfs2_suballoc_result*)* @ocfs2_claim_suballoc_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context* %0, i32* %1, i64 %2, i64 %3, %struct.ocfs2_suballoc_result* %4) #0 {
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocfs2_suballoc_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_chain_list*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_alloc_context* %0, %struct.ocfs2_alloc_context** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ocfs2_suballoc_result* %4, %struct.ocfs2_suballoc_result** %10, align 8
  store i64 0, i64* %14, align 8
  %18 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %19 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %15, align 8
  %21 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %25 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = icmp sgt i64 %30, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %42 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %41, i32 0, i32 6
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = icmp ne %struct.TYPE_7__* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %49 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %48, i32 0, i32 6
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %53, %struct.ocfs2_dinode** %17, align 8
  %54 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %55 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le32_to_cpu(i32 %64)
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le32_to_cpu(i32 %70)
  %72 = icmp sge i64 %65, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %5
  %74 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %75 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %74, i32 0, i32 5
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %80 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @le64_to_cpu(i32 %81)
  %83 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %84 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @le32_to_cpu(i32 %87)
  %89 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %90 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  %95 = call i32 @ocfs2_error(i32 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %82, i64 %88, i64 %94)
  store i32 %95, i32* %11, align 4
  br label %245

96:                                               ; preds = %5
  %97 = load i8*, i8** %15, align 8
  %98 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %99 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %98, i32 0, i32 0
  store i8* %97, i8** %99, align 8
  %100 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %101 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %126

104:                                              ; preds = %96
  %105 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %106 = load i32*, i32** %7, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %110 = call i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context* %105, i32* %106, i64 %107, i64 %108, %struct.ocfs2_suballoc_result* %109, i64* %14)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %104
  br label %227

114:                                              ; preds = %104
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @ENOSPC, align 4
  %120 = sub nsw i32 0, %119
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %245

125:                                              ; preds = %117, %114
  br label %126

126:                                              ; preds = %125, %96
  %127 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %128 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = bitcast i32* %129 to %struct.ocfs2_chain_list*
  store %struct.ocfs2_chain_list* %130, %struct.ocfs2_chain_list** %16, align 8
  %131 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %132 = call i64 @ocfs2_find_victim_chain(%struct.ocfs2_chain_list* %131)
  store i64 %132, i64* %12, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %135 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %141 = call i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %136, i32* %137, i64 %138, i64 %139, %struct.ocfs2_suballoc_result* %140, i64* %14)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %158, label %144

144:                                              ; preds = %126
  %145 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %146 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %145, i32 0, i32 5
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = call i64 @ocfs2_is_cluster_bitmap(%struct.TYPE_12__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %152 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %15, align 8
  br label %157

154:                                              ; preds = %144
  %155 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %156 = call i8* @ocfs2_group_from_res(%struct.ocfs2_suballoc_result* %155)
  store i8* %156, i8** %15, align 8
  br label %157

157:                                              ; preds = %154, %150
  br label %227

158:                                              ; preds = %126
  %159 = load i32, i32* %11, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @ENOSPC, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %245

169:                                              ; preds = %161, %158
  %170 = load i64, i64* %12, align 8
  %171 = call i32 @trace_ocfs2_claim_suballoc_bits(i64 %170)
  %172 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %173 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %172, i32 0, i32 3
  store i32 1, i32* %173, align 8
  store i64 0, i64* %13, align 8
  br label %174

174:                                              ; preds = %223, %169
  %175 = load i64, i64* %13, align 8
  %176 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %177 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @le16_to_cpu(i32 %178)
  %180 = icmp ult i64 %175, %179
  br i1 %180, label %181, label %226

181:                                              ; preds = %174
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %12, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %223

186:                                              ; preds = %181
  %187 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %16, align 8
  %188 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %187, i32 0, i32 0
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = load i64, i64* %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %186
  br label %223

196:                                              ; preds = %186
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %199 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %198, i32 0, i32 2
  store i64 %197, i64* %199, align 8
  %200 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = load i64, i64* %8, align 8
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %205 = call i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context* %200, i32* %201, i64 %202, i64 %203, %struct.ocfs2_suballoc_result* %204, i64* %14)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %196
  %209 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %10, align 8
  %210 = call i8* @ocfs2_group_from_res(%struct.ocfs2_suballoc_result* %209)
  store i8* %210, i8** %15, align 8
  br label %226

211:                                              ; preds = %196
  %212 = load i32, i32* %11, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @ENOSPC, align 4
  %217 = sub nsw i32 0, %216
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @mlog_errno(i32 %220)
  br label %245

222:                                              ; preds = %214, %211
  br label %223

223:                                              ; preds = %222, %195, %185
  %224 = load i64, i64* %13, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %13, align 8
  br label %174

226:                                              ; preds = %208, %174
  br label %227

227:                                              ; preds = %226, %157, %113
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @ENOSPC, align 4
  %230 = sub nsw i32 0, %229
  %231 = icmp ne i32 %228, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %227
  %233 = load i64, i64* %14, align 8
  %234 = load i64, i64* %9, align 8
  %235 = icmp ult i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %238 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %237, i32 0, i32 4
  store i8* null, i8** %238, align 8
  br label %243

239:                                              ; preds = %232
  %240 = load i8*, i8** %15, align 8
  %241 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %242 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %241, i32 0, i32 4
  store i8* %240, i8** %242, align 8
  br label %243

243:                                              ; preds = %239, %236
  br label %244

244:                                              ; preds = %243, %227
  br label %245

245:                                              ; preds = %244, %219, %166, %122, %73
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @mlog_errno(i32 %249)
  br label %251

251:                                              ; preds = %248, %245
  %252 = load i32, i32* %11, align 4
  ret i32 %252
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i64, i64, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_search_one_group(%struct.ocfs2_alloc_context*, i32*, i64, i64, %struct.ocfs2_suballoc_result*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_find_victim_chain(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_search_chain(%struct.ocfs2_alloc_context*, i32*, i64, i64, %struct.ocfs2_suballoc_result*, i64*) #1

declare dso_local i64 @ocfs2_is_cluster_bitmap(%struct.TYPE_12__*) #1

declare dso_local i8* @ocfs2_group_from_res(%struct.ocfs2_suballoc_result*) #1

declare dso_local i32 @trace_ocfs2_claim_suballoc_bits(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
