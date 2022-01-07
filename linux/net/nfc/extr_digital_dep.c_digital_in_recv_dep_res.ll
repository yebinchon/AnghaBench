; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_dep_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_in_recv_dep_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i32, i8*, %struct.sk_buff*, %struct.sk_buff*, i64, i64, i32 }
%struct.sk_buff = type { i32, i32* }
%struct.digital_data_exch = type { i32, i32 (i32, %struct.sk_buff*, i32)* }
%struct.digital_dep_req_res = type { i64, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_N_RETRY_NACK = common dso_local global i64 0, align 8
@DIGITAL_NFC_DEP_N_RETRY_ATN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_IN = common dso_local global i64 0, align 8
@DIGITAL_CMD_DEP_RES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"14.8.2.1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"14.12.3.3\00", align 1
@digital_in_send_ack = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"14.12.4.5\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"14.12.4.3\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"14.12.4.4\00", align 1
@DIGITAL_NFC_DEP_RTOX_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"14.8.4.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_in_recv_dep_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_in_recv_dep_res(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.digital_data_exch*, align 8
  %8 = alloca %struct.digital_dep_req_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.digital_data_exch*
  store %struct.digital_data_exch* %14, %struct.digital_data_exch** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i64 @IS_ERR(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %76

18:                                               ; preds = %3
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.sk_buff* %19)
  store i32 %20, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %30, %18
  %36 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %37 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load i64, i64* @DIGITAL_NFC_DEP_N_RETRY_NACK, align 8
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %44 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  %45 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %46 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %47 = call i32 @digital_in_send_nack(%struct.nfc_digital_dev* %45, %struct.digital_data_exch* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %352

51:                                               ; preds = %42
  br label %376

52:                                               ; preds = %35, %30, %25
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @ETIMEDOUT, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %59 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* @DIGITAL_NFC_DEP_N_RETRY_ATN, align 8
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %57
  %65 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %66 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %68 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %69 = call i32 @digital_in_send_atn(%struct.nfc_digital_dev* %67, %struct.digital_data_exch* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %352

73:                                               ; preds = %64
  br label %376

74:                                               ; preds = %57, %52
  br label %75

75:                                               ; preds = %74
  br label %342

76:                                               ; preds = %3
  %77 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %77, %struct.sk_buff* %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %342

84:                                               ; preds = %76
  %85 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %86 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %85, i32 0, i32 0
  %87 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 %87(%struct.sk_buff* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %84
  %93 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 4
  br i1 %96, label %97, label %116

97:                                               ; preds = %92
  %98 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %99 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load i64, i64* @DIGITAL_NFC_DEP_N_RETRY_NACK, align 8
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %97
  %105 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %106 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %105, i32 0, i32 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %108 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %109 = call i32 @digital_in_send_nack(%struct.nfc_digital_dev* %107, %struct.digital_data_exch* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %352

113:                                              ; preds = %104
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = call i32 @kfree_skb(%struct.sk_buff* %114)
  br label %376

116:                                              ; preds = %97, %92
  %117 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %352

118:                                              ; preds = %84
  %119 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %120 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %119, i32 0, i32 6
  store i64 0, i64* %120, align 8
  %121 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %122 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %121, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %127 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* @EMSGSIZE, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %342

133:                                              ; preds = %118
  store i32 24, i32* %10, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = bitcast i32* %136 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %137, %struct.digital_dep_req_res** %8, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %155, label %143

143:                                              ; preds = %133
  %144 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %145 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @DIGITAL_NFC_DEP_FRAME_DIR_IN, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %151 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @DIGITAL_CMD_DEP_RES, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149, %143, %133
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %11, align 4
  br label %352

158:                                              ; preds = %149
  %159 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %160 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = call i64 @DIGITAL_NFC_DEP_DID_BIT_SET(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %158
  %166 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %352

169:                                              ; preds = %158
  %170 = load i32, i32* %9, align 4
  %171 = call i64 @DIGITAL_NFC_DEP_NAD_BIT_SET(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @EIO, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %11, align 4
  br label %342

176:                                              ; preds = %169
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %177, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %11, align 4
  br label %352

185:                                              ; preds = %176
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @skb_pull(%struct.sk_buff* %186, i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @DIGITAL_NFC_DEP_PFB_TYPE(i32 %189)
  switch i32 %190, label %341 [
    i32 129, label %191
    i32 130, label %234
    i32 128, label %289
  ]

191:                                              ; preds = %185
  %192 = load i32, i32* %9, align 4
  %193 = call i8* @DIGITAL_NFC_DEP_PFB_PNI(i32 %192)
  %194 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %195 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %191
  %199 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %11, align 4
  br label %352

202:                                              ; preds = %191
  %203 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %204 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr i8, i8* %205, i64 1
  %207 = ptrtoint i8* %206 to i32
  %208 = call i8* @DIGITAL_NFC_DEP_PFB_PNI(i32 %207)
  %209 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %210 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  %211 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %212 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %211, i32 0, i32 3
  %213 = load %struct.sk_buff*, %struct.sk_buff** %212, align 8
  %214 = call i32 @kfree_skb(%struct.sk_buff* %213)
  %215 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %216 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %215, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %216, align 8
  %217 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %220 = load i32, i32* @digital_in_send_ack, align 4
  %221 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %222 = call %struct.sk_buff* @digital_recv_dep_data_gather(%struct.nfc_digital_dev* %217, i32 %218, %struct.sk_buff* %219, i32 %220, %struct.digital_data_exch* %221)
  store %struct.sk_buff* %222, %struct.sk_buff** %6, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %224 = call i64 @IS_ERR(%struct.sk_buff* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %202
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = call i32 @PTR_ERR(%struct.sk_buff* %227)
  store i32 %228, i32* %11, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %352

229:                                              ; preds = %202
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = icmp ne %struct.sk_buff* %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  br label %376

233:                                              ; preds = %229
  store i32 0, i32* %11, align 4
  br label %341

234:                                              ; preds = %185
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @DIGITAL_NFC_DEP_NACK_BIT_SET(i32 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %240 = load i32, i32* @EIO, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %11, align 4
  br label %342

242:                                              ; preds = %234
  %243 = load i32, i32* %9, align 4
  %244 = call i8* @DIGITAL_NFC_DEP_PFB_PNI(i32 %243)
  %245 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %246 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %245, i32 0, i32 2
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %244, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %242
  %250 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %251 = load i32, i32* @EIO, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %11, align 4
  br label %342

253:                                              ; preds = %242
  %254 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %255 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr i8, i8* %256, i64 1
  %258 = ptrtoint i8* %257 to i32
  %259 = call i8* @DIGITAL_NFC_DEP_PFB_PNI(i32 %258)
  %260 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %261 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %260, i32 0, i32 2
  store i8* %259, i8** %261, align 8
  %262 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %263 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %262, i32 0, i32 4
  %264 = load %struct.sk_buff*, %struct.sk_buff** %263, align 8
  %265 = icmp ne %struct.sk_buff* %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %253
  %267 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %268 = load i32, i32* @EIO, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %11, align 4
  br label %342

270:                                              ; preds = %253
  %271 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %272 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %271, i32 0, i32 3
  %273 = load %struct.sk_buff*, %struct.sk_buff** %272, align 8
  %274 = call i32 @kfree_skb(%struct.sk_buff* %273)
  %275 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %276 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %275, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %276, align 8
  %277 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %278 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %279 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %278, i32 0, i32 4
  %280 = load %struct.sk_buff*, %struct.sk_buff** %279, align 8
  %281 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %282 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %281, i32 0, i32 7
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @digital_in_send_dep_req(%struct.nfc_digital_dev* %277, i32* null, %struct.sk_buff* %280, i32 %283)
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %270
  br label %352

288:                                              ; preds = %270
  br label %373

289:                                              ; preds = %185
  %290 = load i32, i32* %9, align 4
  %291 = call i32 @DIGITAL_NFC_DEP_PFB_IS_TIMEOUT(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %289
  %294 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %295 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %296 = call i32 @digital_in_send_saved_skb(%struct.nfc_digital_dev* %294, %struct.digital_data_exch* %295)
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  br label %352

300:                                              ; preds = %293
  br label %373

301:                                              ; preds = %289
  %302 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %303 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %302, i32 0, i32 6
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %311, label %306

306:                                              ; preds = %301
  %307 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %308 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %306, %301
  %312 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %313 = load i32, i32* @EIO, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %11, align 4
  br label %352

315:                                              ; preds = %306
  %316 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %317 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @DIGITAL_NFC_DEP_RTOX_VALUE(i32 %320)
  store i32 %321, i32* %12, align 4
  %322 = load i32, i32* %12, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %315
  %325 = load i32, i32* %12, align 4
  %326 = load i32, i32* @DIGITAL_NFC_DEP_RTOX_MAX, align 4
  %327 = icmp sgt i32 %325, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %324, %315
  %329 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %330 = load i32, i32* @EIO, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %11, align 4
  br label %352

332:                                              ; preds = %324
  %333 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %334 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %335 = load i32, i32* %12, align 4
  %336 = call i32 @digital_in_send_rtox(%struct.nfc_digital_dev* %333, %struct.digital_data_exch* %334, i32 %335)
  store i32 %336, i32* %11, align 4
  %337 = load i32, i32* %11, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  br label %352

340:                                              ; preds = %332
  br label %373

341:                                              ; preds = %185, %233
  br label %342

342:                                              ; preds = %341, %266, %249, %238, %173, %130, %82, %75
  %343 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %344 = getelementptr inbounds %struct.digital_data_exch, %struct.digital_data_exch* %343, i32 0, i32 1
  %345 = load i32 (i32, %struct.sk_buff*, i32)*, i32 (i32, %struct.sk_buff*, i32)** %344, align 8
  %346 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %347 = getelementptr inbounds %struct.digital_data_exch, %struct.digital_data_exch* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %350 = load i32, i32* %11, align 4
  %351 = call i32 %345(i32 %348, %struct.sk_buff* %349, i32 %350)
  br label %352

352:                                              ; preds = %342, %339, %328, %311, %299, %287, %226, %198, %182, %165, %155, %116, %112, %72, %50
  %353 = load %struct.digital_data_exch*, %struct.digital_data_exch** %7, align 8
  %354 = call i32 @kfree(%struct.digital_data_exch* %353)
  %355 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %356 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %355, i32 0, i32 4
  %357 = load %struct.sk_buff*, %struct.sk_buff** %356, align 8
  %358 = call i32 @kfree_skb(%struct.sk_buff* %357)
  %359 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %360 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %359, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %360, align 8
  %361 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %362 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %361, i32 0, i32 3
  %363 = load %struct.sk_buff*, %struct.sk_buff** %362, align 8
  %364 = call i32 @kfree_skb(%struct.sk_buff* %363)
  %365 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %366 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %365, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %366, align 8
  %367 = load i32, i32* %11, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %352
  %370 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %371 = call i32 @kfree_skb(%struct.sk_buff* %370)
  br label %372

372:                                              ; preds = %369, %352
  br label %376

373:                                              ; preds = %340, %300, %288
  %374 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %375 = call i32 @dev_kfree_skb(%struct.sk_buff* %374)
  br label %376

376:                                              ; preds = %373, %372, %232, %113, %73, %51
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @digital_in_send_nack(%struct.nfc_digital_dev*, %struct.digital_data_exch*) #1

declare dso_local i32 @digital_in_send_atn(%struct.nfc_digital_dev*, %struct.digital_data_exch*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @DIGITAL_NFC_DEP_DID_BIT_SET(i32) #1

declare dso_local i64 @DIGITAL_NFC_DEP_NAD_BIT_SET(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_TYPE(i32) #1

declare dso_local i8* @DIGITAL_NFC_DEP_PFB_PNI(i32) #1

declare dso_local %struct.sk_buff* @digital_recv_dep_data_gather(%struct.nfc_digital_dev*, i32, %struct.sk_buff*, i32, %struct.digital_data_exch*) #1

declare dso_local i32 @DIGITAL_NFC_DEP_NACK_BIT_SET(i32) #1

declare dso_local i32 @digital_in_send_dep_req(%struct.nfc_digital_dev*, i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_IS_TIMEOUT(i32) #1

declare dso_local i32 @digital_in_send_saved_skb(%struct.nfc_digital_dev*, %struct.digital_data_exch*) #1

declare dso_local i32 @DIGITAL_NFC_DEP_RTOX_VALUE(i32) #1

declare dso_local i32 @digital_in_send_rtox(%struct.nfc_digital_dev*, %struct.digital_data_exch*, i32) #1

declare dso_local i32 @kfree(%struct.digital_data_exch*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
