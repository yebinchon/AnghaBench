; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_cfctrl_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { i32 }
%struct.cfpkt = type { i32 }
%struct.cfctrl = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (...)*, i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32*)* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.cfctrl_request_info = type { i32, i32*, %struct.cfctrl_link_param }
%struct.cfctrl_link_param = type { i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32*, i64, i8*, i8* }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32 }

@CFCTRL_CMD_MASK = common dso_local global i32 0, align 4
@CFCTRL_RSP_BIT = common dso_local global i32 0, align 4
@CFCTRL_ERR_BIT = common dso_local global i32 0, align 4
@CFCTRL_SRV_MASK = common dso_local global i32 0, align 4
@UTILITY_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Request setup, invalid type (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Invalid O/E bit or parse error on CAIF control channel\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Frame Error Indication received\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Unrecognized Control Frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfctrl_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfctrl_recv(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [255 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.cfctrl*, align 8
  %12 = alloca %struct.cfctrl_request_info, align 8
  %13 = alloca %struct.cfctrl_request_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.cfctrl_link_param, align 8
  store %struct.cflayer* %0, %struct.cflayer** %3, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %24 = call %struct.cfctrl* @container_obj(%struct.cflayer* %23)
  store %struct.cfctrl* %24, %struct.cfctrl** %11, align 8
  %25 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %26 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CFCTRL_CMD_MASK, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 139
  br i1 %31, label %32, label %55

32:                                               ; preds = %2
  %33 = load i32, i32* @CFCTRL_RSP_BIT, align 4
  %34 = load i32, i32* @CFCTRL_RSP_BIT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %40 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %48 = call i64 @handle_loop(%struct.cfctrl* %45, i32 %46, %struct.cfpkt* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %38, %32, %2
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %369 [
    i32 137, label %57
    i32 140, label %318
    i32 139, label %332
    i32 141, label %339
    i32 135, label %345
    i32 134, label %351
    i32 138, label %357
    i32 136, label %363
  ]

57:                                               ; preds = %55
  %58 = call i32 @memset(%struct.cfctrl_link_param* %22, i32 0, i32 96)
  %59 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %60 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* @CFCTRL_SRV_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load i32, i32* %19, align 4
  %67 = ashr i32 %66, 4
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %71 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %70)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = and i32 %72, 7
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %19, align 4
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %81 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = and i32 %82, 3
  %84 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 4
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* %14, align 4
  switch i32 %85, label %245 [
    i32 129, label %86
    i32 132, label %86
    i32 128, label %95
    i32 133, label %110
    i32 131, label %124
    i32 130, label %163
  ]

86:                                               ; preds = %57, %57
  %87 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %248

92:                                               ; preds = %86
  %93 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %94 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %93)
  store i32 %94, i32* %10, align 4
  br label %248

95:                                               ; preds = %57
  %96 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %97 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %96)
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %19, align 4
  %99 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  br label %248

107:                                              ; preds = %95
  %108 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %109 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %108)
  store i32 %109, i32* %10, align 4
  br label %248

110:                                              ; preds = %57
  %111 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %112 = call i8* @cfpkt_extr_head_u32(%struct.cfpkt* %111)
  %113 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  br label %248

121:                                              ; preds = %110
  %122 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %123 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %122)
  store i32 %123, i32* %10, align 4
  br label %248

124:                                              ; preds = %57
  %125 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %126 = call i8* @cfpkt_extr_head_u32(%struct.cfpkt* %125)
  %127 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i8* %126, i8** %129, align 8
  %130 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  store i32* %134, i32** %20, align 8
  %135 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %136 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %135)
  store i32 %136, i32* %19, align 4
  br label %137

137:                                              ; preds = %150, %124
  %138 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %139 = call i32 @cfpkt_more(%struct.cfpkt* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %19, align 4
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i1 [ false, %137 ], [ %143, %141 ]
  br i1 %145, label %146, label %153

146:                                              ; preds = %144
  %147 = load i32, i32* %19, align 4
  %148 = load i32*, i32** %20, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %20, align 8
  store i32 %147, i32* %148, align 4
  br label %150

150:                                              ; preds = %146
  %151 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %152 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %151)
  store i32 %152, i32* %19, align 4
  br label %137

153:                                              ; preds = %144
  %154 = load i32*, i32** %20, align 8
  store i32 0, i32* %154, align 4
  %155 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %248

160:                                              ; preds = %153
  %161 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %162 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %161)
  store i32 %162, i32* %10, align 4
  br label %248

163:                                              ; preds = %57
  %164 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %165 = call i8* @cfpkt_extr_head_u16(%struct.cfpkt* %164)
  %166 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  store i8* %165, i8** %168, align 8
  %169 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %170 = call i8* @cfpkt_extr_head_u16(%struct.cfpkt* %169)
  %171 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  store i8* %170, i8** %173, align 8
  %174 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %20, align 8
  %179 = load i32, i32* @UTILITY_NAME_LENGTH, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp uge i64 8, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @caif_assert(i32 %182)
  store i32 0, i32* %21, align 4
  br label %184

184:                                              ; preds = %200, %163
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* @UTILITY_NAME_LENGTH, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %190 = call i32 @cfpkt_more(%struct.cfpkt* %189)
  %191 = icmp ne i32 %190, 0
  br label %192

192:                                              ; preds = %188, %184
  %193 = phi i1 [ false, %184 ], [ %191, %188 ]
  br i1 %193, label %194, label %203

194:                                              ; preds = %192
  %195 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %196 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %195)
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32*, i32** %20, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %20, align 8
  store i32 %197, i32* %198, align 4
  br label %200

200:                                              ; preds = %194
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  br label %184

203:                                              ; preds = %192
  %204 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %205 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = getelementptr inbounds %struct.cfctrl_link_param, %struct.cfctrl_link_param* %22, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %20, align 8
  br label %214

214:                                              ; preds = %224, %203
  %215 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %216 = call i32 @cfpkt_more(%struct.cfpkt* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %8, align 4
  %221 = icmp ne i32 %219, 0
  br label %222

222:                                              ; preds = %218, %214
  %223 = phi i1 [ false, %214 ], [ %221, %218 ]
  br i1 %223, label %224, label %230

224:                                              ; preds = %222
  %225 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %226 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %225)
  store i32 %226, i32* %19, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32*, i32** %20, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %20, align 8
  store i32 %227, i32* %228, align 4
  br label %214

230:                                              ; preds = %222
  %231 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %232 = load i32, i32* %5, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %248

236:                                              ; preds = %230
  %237 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %238 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %237)
  store i32 %238, i32* %10, align 4
  %239 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %240 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %239)
  store i32 %240, i32* %8, align 4
  %241 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %242 = bitcast [255 x i32]* %9 to i32**
  %243 = load i32, i32* %8, align 4
  %244 = call i32 @cfpkt_extr_head(%struct.cfpkt* %241, i32** %242, i32 %243)
  br label %248

245:                                              ; preds = %57
  %246 = load i32, i32* %14, align 4
  %247 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %246)
  br label %372

248:                                              ; preds = %236, %235, %160, %159, %121, %120, %107, %106, %92, %91
  %249 = load i32, i32* %6, align 4
  %250 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %12, i32 0, i32 0
  store i32 %249, i32* %250, align 8
  %251 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %12, i32 0, i32 2
  %252 = bitcast %struct.cfctrl_link_param* %251 to i8*
  %253 = bitcast %struct.cfctrl_link_param* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 96, i1 false)
  %254 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %255 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %254, i32 0, i32 2
  %256 = call i32 @spin_lock_bh(i32* %255)
  %257 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %258 = call %struct.cfctrl_request_info* @cfctrl_remove_req(%struct.cfctrl* %257, %struct.cfctrl_request_info* %12)
  store %struct.cfctrl_request_info* %258, %struct.cfctrl_request_info** %13, align 8
  %259 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %260 = load i32, i32* @CFCTRL_ERR_BIT, align 4
  %261 = load i32, i32* %5, align 4
  %262 = and i32 %260, %261
  %263 = icmp eq i32 %259, %262
  br i1 %263, label %268, label %264

264:                                              ; preds = %248
  %265 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %266 = call i32 @cfpkt_erroneous(%struct.cfpkt* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %264, %248
  %269 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %270 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %271 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 8
  %273 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %272, align 8
  %274 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %275 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %13, align 8
  %280 = icmp ne %struct.cfctrl_request_info* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %268
  %282 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %13, align 8
  %283 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  br label %286

285:                                              ; preds = %268
  br label %286

286:                                              ; preds = %285, %281
  %287 = phi i32* [ %284, %281 ], [ null, %285 ]
  %288 = call i32 %273(i32 %278, i32 0, i32* %287)
  br label %312

289:                                              ; preds = %264
  %290 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %291 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 7
  %293 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %292, align 8
  %294 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %295 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* %10, align 4
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %17, align 4
  %302 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %13, align 8
  %303 = icmp ne %struct.cfctrl_request_info* %302, null
  br i1 %303, label %304, label %308

304:                                              ; preds = %289
  %305 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %13, align 8
  %306 = getelementptr inbounds %struct.cfctrl_request_info, %struct.cfctrl_request_info* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  br label %309

308:                                              ; preds = %289
  br label %309

309:                                              ; preds = %308, %304
  %310 = phi i32* [ %307, %304 ], [ null, %308 ]
  %311 = call i32 %293(i32 %298, i32 %299, i32 %300, i32 %301, i32* %310)
  br label %312

312:                                              ; preds = %309, %286
  %313 = load %struct.cfctrl_request_info*, %struct.cfctrl_request_info** %13, align 8
  %314 = call i32 @kfree(%struct.cfctrl_request_info* %313)
  %315 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %316 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %315, i32 0, i32 2
  %317 = call i32 @spin_unlock_bh(i32* %316)
  br label %371

318:                                              ; preds = %55
  %319 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %320 = call i32 @cfpkt_extr_head_u8(%struct.cfpkt* %319)
  store i32 %320, i32* %10, align 4
  %321 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %322 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 6
  %324 = load i32 (i32, i32)*, i32 (i32, i32)** %323, align 8
  %325 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %326 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = call i32 %324(i32 %329, i32 %330)
  br label %371

332:                                              ; preds = %55
  %333 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %334 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %335 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 5
  %337 = load i32 (...)*, i32 (...)** %336, align 8
  %338 = call i32 (...) %337()
  br label %371

339:                                              ; preds = %55
  %340 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %341 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 4
  %343 = load i32 (...)*, i32 (...)** %342, align 8
  %344 = call i32 (...) %343()
  br label %371

345:                                              ; preds = %55
  %346 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %347 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 3
  %349 = load i32 (...)*, i32 (...)** %348, align 8
  %350 = call i32 (...) %349()
  br label %371

351:                                              ; preds = %55
  %352 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %353 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 2
  %355 = load i32 (...)*, i32 (...)** %354, align 8
  %356 = call i32 (...) %355()
  br label %371

357:                                              ; preds = %55
  %358 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %359 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i32 (...)*, i32 (...)** %360, align 8
  %362 = call i32 (...) %361()
  br label %371

363:                                              ; preds = %55
  %364 = load %struct.cfctrl*, %struct.cfctrl** %11, align 8
  %365 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  %367 = load i32 (...)*, i32 (...)** %366, align 8
  %368 = call i32 (...) %367()
  br label %371

369:                                              ; preds = %55
  %370 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %372

371:                                              ; preds = %363, %357, %351, %345, %339, %332, %318, %312
  store i32 0, i32* %7, align 4
  br label %372

372:                                              ; preds = %371, %369, %245
  %373 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %374 = call i32 @cfpkt_destroy(%struct.cfpkt* %373)
  %375 = load i32, i32* %7, align 4
  ret i32 %375
}

declare dso_local %struct.cfctrl* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @cfpkt_extr_head_u8(%struct.cfpkt*) #1

declare dso_local i64 @handle_loop(%struct.cfctrl*, i32, %struct.cfpkt*) #1

declare dso_local i32 @memset(%struct.cfctrl_link_param*, i32, i32) #1

declare dso_local i8* @cfpkt_extr_head_u32(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_more(%struct.cfpkt*) #1

declare dso_local i8* @cfpkt_extr_head_u16(%struct.cfpkt*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @cfpkt_extr_head(%struct.cfpkt*, i32**, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.cfctrl_request_info* @cfctrl_remove_req(%struct.cfctrl*, %struct.cfctrl_request_info*) #1

declare dso_local i32 @cfpkt_erroneous(%struct.cfpkt*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.cfctrl_request_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
