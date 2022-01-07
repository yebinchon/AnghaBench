; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_new_up_state_weight.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_new_up_state_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_osdmap = type { i64, i32*, i32*, %struct.ceph_entity_addr* }
%struct.ceph_entity_addr = type { i32 }

@e_inval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"osd%d weight 0x%x %s\0A\00", align 1
@CEPH_OSD_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"(in)\00", align 1
@CEPH_OSD_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"(out)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CEPH_OSD_EXISTS = common dso_local global i32 0, align 4
@CEPH_OSD_AUTOOUT = common dso_local global i32 0, align 4
@CEPH_OSD_NEW = common dso_local global i32 0, align 4
@CEPH_OSD_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"osd%d down\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"osd%d does not exist\0A\00", align 1
@CEPH_OSD_DEFAULT_PRIMARY_AFFINITY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"osd%d up\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32, %struct.ceph_osdmap*)* @decode_new_up_state_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_new_up_state_weight(i8** %0, i8* %1, i32 %2, %struct.ceph_osdmap* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_osdmap*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ceph_entity_addr, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.ceph_entity_addr, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ceph_osdmap* %3, %struct.ceph_osdmap** %9, align 8
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @e_inval, align 4
  %29 = call i32 @ceph_decode_32_safe(i8** %25, i8* %26, i32 %27, i32 %28)
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %45, %4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i8**, i8*** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @e_inval, align 4
  %38 = call i32 @ceph_decode_skip_32(i8** %35, i8* %36, i32 %37)
  %39 = load i8**, i8*** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @ceph_decode_entity_addr(i8** %39, i8* %40, %struct.ceph_entity_addr* %15)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %298

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %11, align 8
  %51 = load i8**, i8*** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @e_inval, align 4
  %55 = call i32 @ceph_decode_32_safe(i8** %51, i8* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp sge i32 %56, 5
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i64 4, i64 4
  %60 = add i64 4, %59
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load i8**, i8*** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @e_inval, align 4
  %69 = call i32 @ceph_decode_need(i8** %65, i8* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = sext i32 %70 to i64
  %74 = getelementptr i8, i8* %72, i64 %73
  store i8* %74, i8** %71, align 8
  %75 = load i8**, i8*** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @e_inval, align 4
  %79 = call i32 @ceph_decode_32_safe(i8** %75, i8* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %145, %48
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %13, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %146

84:                                               ; preds = %80
  %85 = load i8**, i8*** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @e_inval, align 4
  %88 = call i32 @ceph_decode_need(i8** %85, i8* %86, i32 8, i32 %87)
  %89 = load i8**, i8*** %6, align 8
  %90 = call i8* @ceph_decode_32(i8** %89)
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %16, align 8
  %92 = load i8**, i8*** %6, align 8
  %93 = call i8* @ceph_decode_32(i8** %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %17, align 4
  %95 = load i64, i64* %16, align 8
  %96 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %97 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp uge i64 %95, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load i64, i64* %16, align 8
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @CEPH_OSD_IN, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %84
  br label %114

108:                                              ; preds = %84
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @CEPH_OSD_OUT, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %114

114:                                              ; preds = %108, %107
  %115 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %107 ], [ %113, %108 ]
  %116 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %102, i32 %103, i8* %115)
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %119 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %16, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %114
  %126 = load i32, i32* @CEPH_OSD_EXISTS, align 4
  %127 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %128 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %16, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %126
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* @CEPH_OSD_AUTOOUT, align 4
  %135 = load i32, i32* @CEPH_OSD_NEW, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %139 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, %137
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %125, %114
  br label %80

146:                                              ; preds = %80
  %147 = load i8**, i8*** %6, align 8
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %12, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i8**, i8*** %6, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i8**, i8*** %6, align 8
  %152 = call i8* @ceph_decode_32(i8** %151)
  %153 = ptrtoint i8* %152 to i32
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %248, %146
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %13, align 4
  %157 = icmp ne i32 %155, 0
  br i1 %157, label %158, label %249

158:                                              ; preds = %154
  %159 = load i8**, i8*** %6, align 8
  %160 = call i8* @ceph_decode_32(i8** %159)
  %161 = ptrtoint i8* %160 to i64
  store i64 %161, i64* %18, align 8
  %162 = load i32, i32* %8, align 4
  %163 = icmp sge i32 %162, 5
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i8**, i8*** %6, align 8
  %166 = call i8* @ceph_decode_32(i8** %165)
  %167 = ptrtoint i8* %166 to i32
  store i32 %167, i32* %19, align 4
  br label %171

168:                                              ; preds = %158
  %169 = load i8**, i8*** %6, align 8
  %170 = call i32 @ceph_decode_8(i8** %169)
  store i32 %170, i32* %19, align 4
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* %19, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* @CEPH_OSD_UP, align 4
  store i32 %175, i32* %19, align 4
  br label %176

176:                                              ; preds = %174, %171
  %177 = load i64, i64* %18, align 8
  %178 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %179 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp uge i64 %177, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @BUG_ON(i32 %182)
  %184 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %185 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %18, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CEPH_OSD_UP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %176
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* @CEPH_OSD_UP, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i64, i64* %18, align 8
  %200 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %198, %193, %176
  %202 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %203 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %18, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CEPH_OSD_EXISTS, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %201
  %212 = load i32, i32* %19, align 4
  %213 = load i32, i32* @CEPH_OSD_EXISTS, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %211
  %217 = load i64, i64* %18, align 8
  %218 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %217)
  %219 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %220 = load i64, i64* %18, align 8
  %221 = load i32, i32* @CEPH_OSD_DEFAULT_PRIMARY_AFFINITY, align 4
  %222 = call i32 @set_primary_affinity(%struct.ceph_osdmap* %219, i64 %220, i32 %221)
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %20, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* %20, align 4
  store i32 %226, i32* %5, align 4
  br label %301

227:                                              ; preds = %216
  %228 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %229 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %228, i32 0, i32 3
  %230 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %229, align 8
  %231 = load i64, i64* %18, align 8
  %232 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %230, i64 %231
  %233 = call i32 @memset(%struct.ceph_entity_addr* %232, i32 0, i32 4)
  %234 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %235 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %18, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 0, i32* %238, align 4
  br label %248

239:                                              ; preds = %211, %201
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %242 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* %18, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = xor i32 %246, %240
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %239, %227
  br label %154

249:                                              ; preds = %154
  %250 = load i8*, i8** %10, align 8
  %251 = load i8**, i8*** %6, align 8
  store i8* %250, i8** %251, align 8
  %252 = load i8**, i8*** %6, align 8
  %253 = call i8* @ceph_decode_32(i8** %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %13, align 4
  br label %255

255:                                              ; preds = %275, %249
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %13, align 4
  %258 = icmp ne i32 %256, 0
  br i1 %258, label %259, label %295

259:                                              ; preds = %255
  %260 = load i8**, i8*** %6, align 8
  %261 = call i8* @ceph_decode_32(i8** %260)
  %262 = ptrtoint i8* %261 to i64
  store i64 %262, i64* %21, align 8
  %263 = load i64, i64* %21, align 8
  %264 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %265 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp uge i64 %263, %266
  %268 = zext i1 %267 to i32
  %269 = call i32 @BUG_ON(i32 %268)
  %270 = load i8**, i8*** %6, align 8
  %271 = load i8*, i8** %7, align 8
  %272 = call i64 @ceph_decode_entity_addr(i8** %270, i8* %271, %struct.ceph_entity_addr* %22)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %259
  br label %298

275:                                              ; preds = %259
  %276 = load i64, i64* %21, align 8
  %277 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 %276)
  %278 = load i32, i32* @CEPH_OSD_EXISTS, align 4
  %279 = load i32, i32* @CEPH_OSD_UP, align 4
  %280 = or i32 %278, %279
  %281 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %282 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = load i64, i64* %21, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %280
  store i32 %287, i32* %285, align 4
  %288 = load %struct.ceph_osdmap*, %struct.ceph_osdmap** %9, align 8
  %289 = getelementptr inbounds %struct.ceph_osdmap, %struct.ceph_osdmap* %288, i32 0, i32 3
  %290 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %289, align 8
  %291 = load i64, i64* %21, align 8
  %292 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %290, i64 %291
  %293 = bitcast %struct.ceph_entity_addr* %292 to i8*
  %294 = bitcast %struct.ceph_entity_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %293, i8* align 4 %294, i64 4, i1 false)
  br label %255

295:                                              ; preds = %255
  %296 = load i8*, i8** %12, align 8
  %297 = load i8**, i8*** %6, align 8
  store i8* %296, i8** %297, align 8
  store i32 0, i32* %5, align 4
  br label %301

298:                                              ; preds = %274, %43
  %299 = load i32, i32* @EINVAL, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %298, %295, %225
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_skip_32(i8**, i8*, i32) #1

declare dso_local i64 @ceph_decode_entity_addr(i8**, i8*, %struct.ceph_entity_addr*) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_32(i8**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_info(i8*, i64, ...) #1

declare dso_local i32 @ceph_decode_8(i8**) #1

declare dso_local i32 @set_primary_affinity(%struct.ceph_osdmap*, i64, i32) #1

declare dso_local i32 @memset(%struct.ceph_entity_addr*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
