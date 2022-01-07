; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_dep_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_digital_dep.c_digital_tg_recv_dep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_digital_dev = type { i32 (%struct.sk_buff*)*, i64, i64, %struct.sk_buff*, i64, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64, i64* }
%struct.digital_dep_req_res = type { i64, i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"14.4.1.6\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"14.4.1.2\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@DIGITAL_NFC_DEP_FRAME_DIR_OUT = common dso_local global i64 0, align 8
@DIGITAL_CMD_DEP_REQ = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"DIGITAL_NFC_DEP_PFB_I_PDU\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"14.12.3.4\00", align 1
@digital_tg_send_ack = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_digital_dev*, i8*, %struct.sk_buff*)* @digital_tg_recv_dep_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @digital_tg_recv_dep_req(%struct.nfc_digital_dev* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.nfc_digital_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.digital_dep_req_res*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nfc_digital_dev* %0, %struct.nfc_digital_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %292

17:                                               ; preds = %3
  %18 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %18, i32 0, i32 0
  %20 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 %20(%struct.sk_buff* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %292

27:                                               ; preds = %17
  %28 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %292

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %40 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EMSGSIZE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %292

46:                                               ; preds = %35
  store i64 24, i64* %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = bitcast i64* %49 to %struct.digital_dep_req_res*
  store %struct.digital_dep_req_res* %50, %struct.digital_dep_req_res** %8, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %46
  %57 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %58 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DIGITAL_NFC_DEP_FRAME_DIR_OUT, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %64 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DIGITAL_CMD_DEP_REQ, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %56, %46
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %292

71:                                               ; preds = %62
  %72 = load %struct.digital_dep_req_res*, %struct.digital_dep_req_res** %8, align 8
  %73 = getelementptr inbounds %struct.digital_dep_req_res, %struct.digital_dep_req_res* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i64 @DIGITAL_NFC_DEP_DID_BIT_SET(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %80 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %85 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %86, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %83
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  br label %99

96:                                               ; preds = %83, %78
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %292

99:                                               ; preds = %93
  br label %109

100:                                              ; preds = %71
  %101 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %102 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %292

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @DIGITAL_NFC_DEP_NAD_BIT_SET(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %292

116:                                              ; preds = %109
  %117 = load i64, i64* %10, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %292

125:                                              ; preds = %116
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @skb_pull(%struct.sk_buff* %126, i64 %127)
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @DIGITAL_NFC_DEP_PFB_TYPE(i32 %129)
  switch i32 %130, label %286 [
    i32 129, label %131
    i32 130, label %190
    i32 128, label %268
  ]

131:                                              ; preds = %125
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %134 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %131
  %138 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %139 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %138, i32 0, i32 4
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %140)
  %142 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %143 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  %146 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %145)
  %147 = icmp eq i32 %141, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %137
  %149 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %150 = call i32 @digital_tg_send_saved_skb(%struct.nfc_digital_dev* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %292

154:                                              ; preds = %148
  br label %313

155:                                              ; preds = %137
  br label %156

156:                                              ; preds = %155, %131
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %157)
  %159 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %160 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = call i32 @PROTOCOL_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %292

167:                                              ; preds = %156
  %168 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %169 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %168, i32 0, i32 3
  %170 = load %struct.sk_buff*, %struct.sk_buff** %169, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  %172 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %173 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %172, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %173, align 8
  %174 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %177 = load i32, i32* @digital_tg_send_ack, align 4
  %178 = call %struct.sk_buff* @digital_recv_dep_data_gather(%struct.nfc_digital_dev* %174, i32 %175, %struct.sk_buff* %176, i32 %177, i32* null)
  store %struct.sk_buff* %178, %struct.sk_buff** %6, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = call i64 @IS_ERR(%struct.sk_buff* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %167
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = call i32 @PTR_ERR(%struct.sk_buff* %183)
  store i32 %184, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %292

185:                                              ; preds = %167
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = icmp ne %struct.sk_buff* %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %316

189:                                              ; preds = %185
  store i32 0, i32* %7, align 4
  br label %286

190:                                              ; preds = %125
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @DIGITAL_NFC_DEP_NACK_BIT_SET(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %190
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  %197 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %196)
  %198 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %199 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %197, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32, i32* @EIO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  br label %292

205:                                              ; preds = %194
  %206 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %207 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %206, i32 0, i32 4
  store i64 0, i64* %207, align 8
  %208 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %209 = call i32 @digital_tg_send_saved_skb(%struct.nfc_digital_dev* %208)
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %205
  br label %292

213:                                              ; preds = %205
  br label %313

214:                                              ; preds = %190
  %215 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %216 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %237

219:                                              ; preds = %214
  %220 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %221 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %220, i32 0, i32 4
  store i64 0, i64* %221, align 8
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  %224 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %223)
  %225 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %226 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %236

229:                                              ; preds = %219
  %230 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %231 = call i32 @digital_tg_send_saved_skb(%struct.nfc_digital_dev* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %229
  br label %292

235:                                              ; preds = %229
  br label %313

236:                                              ; preds = %219
  br label %237

237:                                              ; preds = %236, %214
  %238 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %239 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %238, i32 0, i32 5
  %240 = load %struct.sk_buff*, %struct.sk_buff** %239, align 8
  %241 = icmp ne %struct.sk_buff* %240, null
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @DIGITAL_NFC_DEP_PFB_PNI(i32 %243)
  %245 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %246 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %244, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %242, %237
  %250 = load i32, i32* @EIO, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %7, align 4
  br label %292

252:                                              ; preds = %242
  %253 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %254 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %253, i32 0, i32 3
  %255 = load %struct.sk_buff*, %struct.sk_buff** %254, align 8
  %256 = call i32 @kfree_skb(%struct.sk_buff* %255)
  %257 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %258 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %257, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %258, align 8
  %259 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %260 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %261 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %260, i32 0, i32 5
  %262 = load %struct.sk_buff*, %struct.sk_buff** %261, align 8
  %263 = call i32 @digital_tg_send_dep_res(%struct.nfc_digital_dev* %259, %struct.sk_buff* %262)
  store i32 %263, i32* %7, align 4
  %264 = load i32, i32* %7, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %252
  br label %292

267:                                              ; preds = %252
  br label %313

268:                                              ; preds = %125
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @DIGITAL_NFC_DEP_PFB_IS_TIMEOUT(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %7, align 4
  br label %292

275:                                              ; preds = %268
  %276 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %277 = call i32 @digital_tg_send_atn(%struct.nfc_digital_dev* %276)
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %292

281:                                              ; preds = %275
  %282 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %283 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %283, align 8
  br label %313

286:                                              ; preds = %125, %189
  %287 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %288 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %291 = call i32 @nfc_tm_data_received(i32 %289, %struct.sk_buff* %290)
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %286, %280, %272, %266, %249, %234, %212, %202, %182, %163, %153, %122, %113, %105, %96, %68, %43, %33, %25, %14
  %293 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %294 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %293, i32 0, i32 5
  %295 = load %struct.sk_buff*, %struct.sk_buff** %294, align 8
  %296 = call i32 @kfree_skb(%struct.sk_buff* %295)
  %297 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %298 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %297, i32 0, i32 5
  store %struct.sk_buff* null, %struct.sk_buff** %298, align 8
  %299 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %300 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %299, i32 0, i32 4
  store i64 0, i64* %300, align 8
  %301 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %302 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %301, i32 0, i32 3
  %303 = load %struct.sk_buff*, %struct.sk_buff** %302, align 8
  %304 = call i32 @kfree_skb(%struct.sk_buff* %303)
  %305 = load %struct.nfc_digital_dev*, %struct.nfc_digital_dev** %4, align 8
  %306 = getelementptr inbounds %struct.nfc_digital_dev, %struct.nfc_digital_dev* %305, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %306, align 8
  %307 = load i32, i32* %7, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %292
  %310 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %311 = call i32 @kfree_skb(%struct.sk_buff* %310)
  br label %312

312:                                              ; preds = %309, %292
  br label %316

313:                                              ; preds = %281, %267, %235, %213, %154
  %314 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %315 = call i32 @dev_kfree_skb(%struct.sk_buff* %314)
  br label %316

316:                                              ; preds = %313, %312, %188
  ret void
}

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PROTOCOL_ERR(i8*) #1

declare dso_local i32 @digital_skb_pull_dep_sod(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i64 @DIGITAL_NFC_DEP_DID_BIT_SET(i32) #1

declare dso_local i64 @DIGITAL_NFC_DEP_NAD_BIT_SET(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_TYPE(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_PNI(i32) #1

declare dso_local i32 @digital_tg_send_saved_skb(%struct.nfc_digital_dev*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @digital_recv_dep_data_gather(%struct.nfc_digital_dev*, i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @DIGITAL_NFC_DEP_NACK_BIT_SET(i32) #1

declare dso_local i32 @digital_tg_send_dep_res(%struct.nfc_digital_dev*, %struct.sk_buff*) #1

declare dso_local i32 @DIGITAL_NFC_DEP_PFB_IS_TIMEOUT(i32) #1

declare dso_local i32 @digital_tg_send_atn(%struct.nfc_digital_dev*) #1

declare dso_local i32 @nfc_tm_data_received(i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
