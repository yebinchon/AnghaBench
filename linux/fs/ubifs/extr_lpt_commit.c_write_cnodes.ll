; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_write_cnodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_write_cnodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.ubifs_cnode*, i8* }
%struct.ubifs_cnode = type { %struct.ubifs_cnode*, i32, i64 }
%struct.ubifs_nnode = type { i32 }
%struct.ubifs_pnode = type { i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@COW_CNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LPT root is at %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"LPT head is at %d:%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"LPT ltab is at %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"LPT lsave is at %d:%d\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"LPT out of space mismatch at LEB %d:%d needing %d, done_ltab %d, done_lsave %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @write_cnodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_cnodes(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ubifs_cnode*, align 8
  %14 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 20
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %14, align 8
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 19
  %20 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %19, align 8
  store %struct.ubifs_cnode* %20, %struct.ubifs_cnode** %13, align 8
  %21 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %22 = icmp ne %struct.ubifs_cnode* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %615

24:                                               ; preds = %1
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %24
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %615

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 15
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %82, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %52
  store i32 1, i32* %12, align 4
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 18
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ubifs_pack_lsave(%struct.ubifs_info* %63, i8* %67, i32 %70)
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %77, i32 1, i32 %80)
  br label %82

82:                                               ; preds = %62, %52, %43
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %87, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ubifs_pack_ltab(%struct.ubifs_info* %93, i8* %97, i32 %100)
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %107, i32 1, i32 %110)
  br label %112

112:                                              ; preds = %92, %82
  br label %113

113:                                              ; preds = %305, %112
  %114 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %115 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %6, align 4
  br label %126

122:                                              ; preds = %113
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %124 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %232, %209, %126
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %253

135:                                              ; preds = %127
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 16
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ALIGN(i32 %142, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i8*, i8** %14, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr i8, i8* %147, i64 %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @memset(i8* %150, i32 255, i32 %153)
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr i8, i8* %157, i64 %159
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @ubifs_leb_write(%struct.ubifs_info* %155, i32 %156, i8* %160, i32 %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %141
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %2, align 4
  br label %615

168:                                              ; preds = %141
  br label %169

169:                                              ; preds = %168, %135
  %170 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %172 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %5, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %170, i32 2, i32 %175)
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %178 = call i32 @realloc_lpt_leb(%struct.ubifs_info* %177, i32* %4)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %169
  br label %601

182:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %186 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* %4, align 4
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 8
  %194 = icmp sle i32 %190, %193
  br label %195

195:                                              ; preds = %189, %182
  %196 = phi i1 [ false, %182 ], [ %194, %189 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @ubifs_assert(%struct.ubifs_info* %183, i32 %197)
  %199 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %199, i32 %200)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %195
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %2, align 4
  br label %615

206:                                              ; preds = %195
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %206
  store i32 1, i32* %12, align 4
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr i8, i8* %211, i64 %213
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 18
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ubifs_pack_lsave(%struct.ubifs_info* %210, i8* %214, i32 %217)
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %226 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %224, i32 1, i32 %227)
  br label %127

229:                                              ; preds = %206
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %252, label %232

232:                                              ; preds = %229
  store i32 1, i32* %11, align 4
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr i8, i8* %234, i64 %236
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %239 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %238, i32 0, i32 17
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @ubifs_pack_ltab(%struct.ubifs_info* %233, i8* %237, i32 %240)
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %243 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %5, align 4
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %248 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %249 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %247, i32 1, i32 %250)
  br label %127

252:                                              ; preds = %229
  br label %253

253:                                              ; preds = %252, %127
  %254 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %255 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %253
  %259 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %260 = load i8*, i8** %14, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr i8, i8* %260, i64 %262
  %264 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %265 = bitcast %struct.ubifs_cnode* %264 to %struct.ubifs_nnode*
  %266 = call i32 @ubifs_pack_nnode(%struct.ubifs_info* %259, i8* %263, %struct.ubifs_nnode* %265)
  br label %276

267:                                              ; preds = %253
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %269 = load i8*, i8** %14, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr i8, i8* %269, i64 %271
  %273 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %274 = bitcast %struct.ubifs_cnode* %273 to %struct.ubifs_pnode*
  %275 = call i32 @ubifs_pack_pnode(%struct.ubifs_info* %268, i8* %272, %struct.ubifs_pnode* %274)
  br label %276

276:                                              ; preds = %267, %258
  %277 = load i32, i32* @DIRTY_CNODE, align 4
  %278 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %279 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %278, i32 0, i32 1
  %280 = call i32 @clear_bit(i32 %277, i32* %279)
  %281 = call i32 (...) @smp_mb__before_atomic()
  %282 = load i32, i32* @COW_CNODE, align 4
  %283 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %284 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %283, i32 0, i32 1
  %285 = call i32 @clear_bit(i32 %282, i32* %284)
  %286 = call i32 (...) @smp_mb__after_atomic()
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %5, align 4
  %289 = add nsw i32 %288, %287
  store i32 %289, i32* %5, align 4
  %290 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %290, i32 1, i32 %291)
  %293 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %294 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %293, i32 0, i32 0
  %295 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %294, align 8
  store %struct.ubifs_cnode* %295, %struct.ubifs_cnode** %13, align 8
  br label %296

296:                                              ; preds = %276
  %297 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %298 = icmp ne %struct.ubifs_cnode* %297, null
  br i1 %298, label %299, label %305

299:                                              ; preds = %296
  %300 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %13, align 8
  %301 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %302 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %301, i32 0, i32 19
  %303 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %302, align 8
  %304 = icmp ne %struct.ubifs_cnode* %300, %303
  br label %305

305:                                              ; preds = %299, %296
  %306 = phi i1 [ false, %296 ], [ %304, %299 ]
  br i1 %306, label %113, label %307

307:                                              ; preds = %305
  %308 = load i32, i32* %12, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %408, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %5, align 4
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %313 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %311, %314
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = icmp sgt i32 %315, %318
  br i1 %319, label %320, label %388

320:                                              ; preds = %310
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* %7, align 4
  %323 = sub nsw i32 %321, %322
  store i32 %323, i32* %9, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %326 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %325, i32 0, i32 16
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @ALIGN(i32 %324, i32 %327)
  store i32 %328, i32* %10, align 4
  %329 = load i8*, i8** %14, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr i8, i8* %329, i64 %331
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* %9, align 4
  %335 = sub nsw i32 %333, %334
  %336 = call i32 @memset(i8* %332, i32 255, i32 %335)
  %337 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %338 = load i32, i32* %4, align 4
  %339 = load i8*, i8** %14, align 8
  %340 = load i32, i32* %7, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr i8, i8* %339, i64 %341
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* %10, align 4
  %345 = call i32 @ubifs_leb_write(%struct.ubifs_info* %337, i32 %338, i8* %342, i32 %343, i32 %344)
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %8, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %320
  %349 = load i32, i32* %8, align 4
  store i32 %349, i32* %2, align 4
  br label %615

350:                                              ; preds = %320
  %351 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %352 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %353 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %5, align 4
  %356 = sub nsw i32 %354, %355
  %357 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %351, i32 2, i32 %356)
  %358 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %359 = call i32 @realloc_lpt_leb(%struct.ubifs_info* %358, i32* %4)
  store i32 %359, i32* %8, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %350
  br label %601

363:                                              ; preds = %350
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %364 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %365 = load i32, i32* %4, align 4
  %366 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %367 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %366, i32 0, i32 7
  %368 = load i32, i32* %367, align 4
  %369 = icmp sge i32 %365, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %363
  %371 = load i32, i32* %4, align 4
  %372 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %373 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %372, i32 0, i32 8
  %374 = load i32, i32* %373, align 8
  %375 = icmp sle i32 %371, %374
  br label %376

376:                                              ; preds = %370, %363
  %377 = phi i1 [ false, %363 ], [ %375, %370 ]
  %378 = zext i1 %377 to i32
  %379 = call i32 @ubifs_assert(%struct.ubifs_info* %364, i32 %378)
  %380 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %381 = load i32, i32* %4, align 4
  %382 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %380, i32 %381)
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %376
  %386 = load i32, i32* %8, align 4
  store i32 %386, i32* %2, align 4
  br label %615

387:                                              ; preds = %376
  br label %388

388:                                              ; preds = %387, %310
  store i32 1, i32* %12, align 4
  %389 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %390 = load i8*, i8** %14, align 8
  %391 = load i32, i32* %5, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr i8, i8* %390, i64 %392
  %394 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %395 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %394, i32 0, i32 18
  %396 = load i32, i32* %395, align 8
  %397 = call i32 @ubifs_pack_lsave(%struct.ubifs_info* %389, i8* %393, i32 %396)
  %398 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %399 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* %5, align 4
  %402 = add nsw i32 %401, %400
  store i32 %402, i32* %5, align 4
  %403 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %404 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %405 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %403, i32 1, i32 %406)
  br label %408

408:                                              ; preds = %388, %307
  %409 = load i32, i32* %11, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %509, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* %5, align 4
  %413 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %414 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = add nsw i32 %412, %415
  %417 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %418 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = icmp sgt i32 %416, %419
  br i1 %420, label %421, label %489

421:                                              ; preds = %411
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* %7, align 4
  %424 = sub nsw i32 %422, %423
  store i32 %424, i32* %9, align 4
  %425 = load i32, i32* %9, align 4
  %426 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %427 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %426, i32 0, i32 16
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @ALIGN(i32 %425, i32 %428)
  store i32 %429, i32* %10, align 4
  %430 = load i8*, i8** %14, align 8
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr i8, i8* %430, i64 %432
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* %9, align 4
  %436 = sub nsw i32 %434, %435
  %437 = call i32 @memset(i8* %433, i32 255, i32 %436)
  %438 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %439 = load i32, i32* %4, align 4
  %440 = load i8*, i8** %14, align 8
  %441 = load i32, i32* %7, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr i8, i8* %440, i64 %442
  %444 = load i32, i32* %7, align 4
  %445 = load i32, i32* %10, align 4
  %446 = call i32 @ubifs_leb_write(%struct.ubifs_info* %438, i32 %439, i8* %443, i32 %444, i32 %445)
  store i32 %446, i32* %8, align 4
  %447 = load i32, i32* %8, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %421
  %450 = load i32, i32* %8, align 4
  store i32 %450, i32* %2, align 4
  br label %615

451:                                              ; preds = %421
  %452 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %453 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %454 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %5, align 4
  %457 = sub nsw i32 %455, %456
  %458 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %452, i32 2, i32 %457)
  %459 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %460 = call i32 @realloc_lpt_leb(%struct.ubifs_info* %459, i32* %4)
  store i32 %460, i32* %8, align 4
  %461 = load i32, i32* %8, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %451
  br label %601

464:                                              ; preds = %451
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %465 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %466 = load i32, i32* %4, align 4
  %467 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %468 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %467, i32 0, i32 7
  %469 = load i32, i32* %468, align 4
  %470 = icmp sge i32 %466, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %464
  %472 = load i32, i32* %4, align 4
  %473 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %474 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %473, i32 0, i32 8
  %475 = load i32, i32* %474, align 8
  %476 = icmp sle i32 %472, %475
  br label %477

477:                                              ; preds = %471, %464
  %478 = phi i1 [ false, %464 ], [ %476, %471 ]
  %479 = zext i1 %478 to i32
  %480 = call i32 @ubifs_assert(%struct.ubifs_info* %465, i32 %479)
  %481 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %482 = load i32, i32* %4, align 4
  %483 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %481, i32 %482)
  store i32 %483, i32* %8, align 4
  %484 = load i32, i32* %8, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %477
  %487 = load i32, i32* %8, align 4
  store i32 %487, i32* %2, align 4
  br label %615

488:                                              ; preds = %477
  br label %489

489:                                              ; preds = %488, %411
  %490 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %491 = load i8*, i8** %14, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr i8, i8* %491, i64 %493
  %495 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %496 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %495, i32 0, i32 17
  %497 = load i32, i32* %496, align 4
  %498 = call i32 @ubifs_pack_ltab(%struct.ubifs_info* %490, i8* %494, i32 %497)
  %499 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %500 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* %5, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* %5, align 4
  %504 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %505 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %506 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %504, i32 1, i32 %507)
  br label %509

509:                                              ; preds = %489, %408
  %510 = load i32, i32* %5, align 4
  %511 = load i32, i32* %7, align 4
  %512 = sub nsw i32 %510, %511
  store i32 %512, i32* %9, align 4
  %513 = load i32, i32* %9, align 4
  %514 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %515 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %514, i32 0, i32 16
  %516 = load i32, i32* %515, align 8
  %517 = call i32 @ALIGN(i32 %513, i32 %516)
  store i32 %517, i32* %10, align 4
  %518 = load i8*, i8** %14, align 8
  %519 = load i32, i32* %5, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr i8, i8* %518, i64 %520
  %522 = load i32, i32* %10, align 4
  %523 = load i32, i32* %9, align 4
  %524 = sub nsw i32 %522, %523
  %525 = call i32 @memset(i8* %521, i32 255, i32 %524)
  %526 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %527 = load i32, i32* %4, align 4
  %528 = load i8*, i8** %14, align 8
  %529 = load i32, i32* %7, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr i8, i8* %528, i64 %530
  %532 = load i32, i32* %7, align 4
  %533 = load i32, i32* %10, align 4
  %534 = call i32 @ubifs_leb_write(%struct.ubifs_info* %526, i32 %527, i8* %531, i32 %532, i32 %533)
  store i32 %534, i32* %8, align 4
  %535 = load i32, i32* %8, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %539

537:                                              ; preds = %509
  %538 = load i32, i32* %8, align 4
  store i32 %538, i32* %2, align 4
  br label %615

539:                                              ; preds = %509
  %540 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %541 = load i32, i32* %10, align 4
  %542 = load i32, i32* %9, align 4
  %543 = sub nsw i32 %541, %542
  %544 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %540, i32 4, i32 %543)
  %545 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %546 = load i32, i32* %5, align 4
  %547 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %548 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %547, i32 0, i32 16
  %549 = load i32, i32* %548, align 8
  %550 = call i32 @ALIGN(i32 %546, i32 %549)
  %551 = call i32 @dbg_chk_lpt_sz(%struct.ubifs_info* %545, i32 3, i32 %550)
  store i32 %551, i32* %8, align 4
  %552 = load i32, i32* %8, align 4
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %556

554:                                              ; preds = %539
  %555 = load i32, i32* %8, align 4
  store i32 %555, i32* %2, align 4
  br label %615

556:                                              ; preds = %539
  %557 = load i32, i32* %4, align 4
  %558 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %559 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %558, i32 0, i32 0
  store i32 %557, i32* %559, align 8
  %560 = load i32, i32* %5, align 4
  %561 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %562 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %561, i32 0, i32 16
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @ALIGN(i32 %560, i32 %563)
  %565 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %566 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %565, i32 0, i32 1
  store i32 %564, i32* %566, align 4
  %567 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %568 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %567, i32 0, i32 9
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %571 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %570, i32 0, i32 10
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @dbg_lp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %569, i32 %572)
  %574 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %575 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %578 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %577, i32 0, i32 1
  %579 = load i32, i32* %578, align 4
  %580 = call i32 @dbg_lp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %576, i32 %579)
  %581 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %582 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %581, i32 0, i32 11
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %585 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %584, i32 0, i32 12
  %586 = load i32, i32* %585, align 8
  %587 = call i32 @dbg_lp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %583, i32 %586)
  %588 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %589 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %588, i32 0, i32 15
  %590 = load i64, i64* %589, align 8
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %600

592:                                              ; preds = %556
  %593 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %594 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %593, i32 0, i32 13
  %595 = load i32, i32* %594, align 4
  %596 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %597 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %596, i32 0, i32 14
  %598 = load i32, i32* %597, align 8
  %599 = call i32 @dbg_lp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %595, i32 %598)
  br label %600

600:                                              ; preds = %592, %556
  store i32 0, i32* %2, align 4
  br label %615

601:                                              ; preds = %463, %362, %181
  %602 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %603 = load i32, i32* %4, align 4
  %604 = load i32, i32* %5, align 4
  %605 = load i32, i32* %6, align 4
  %606 = load i32, i32* %11, align 4
  %607 = load i32, i32* %12, align 4
  %608 = call i32 @ubifs_err(%struct.ubifs_info* %602, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %603, i32 %604, i32 %605, i32 %606, i32 %607)
  %609 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %610 = call i32 @ubifs_dump_lpt_info(%struct.ubifs_info* %609)
  %611 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %612 = call i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info* %611)
  %613 = call i32 (...) @dump_stack()
  %614 = load i32, i32* %8, align 4
  store i32 %614, i32* %2, align 4
  br label %615

615:                                              ; preds = %601, %600, %554, %537, %486, %449, %385, %348, %204, %166, %40, %23
  %616 = load i32, i32* %2, align 4
  ret i32 %616
}

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_pack_lsave(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @dbg_chk_lpt_sz(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_pack_ltab(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ubifs_leb_write(%struct.ubifs_info*, i32, i8*, i32, i32) #1

declare dso_local i32 @realloc_lpt_leb(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_pack_nnode(%struct.ubifs_info*, i8*, %struct.ubifs_nnode*) #1

declare dso_local i32 @ubifs_pack_pnode(%struct.ubifs_info*, i8*, %struct.ubifs_pnode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @dbg_lp(i8*, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_dump_lpt_info(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
