; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_3__*, %struct.l2cap_chan* }
%struct.TYPE_3__ = type { i64, i64, i64, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i32, i32, i32*, i32* }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_pairing = type { i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@SMP_CMD_NOTSUPP = common dso_local global i64 0, align 8
@SMP_ENC_KEY_SIZE = common dso_local global i64 0, align 8
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@SMP_AUTH_SC = common dso_local global i64 0, align 8
@SMP_AUTH_REQUIREMENTS = common dso_local global i64 0, align 8
@SMP_OOB_PRESENT = common dso_local global i64 0, align 8
@SMP_FLAG_LOCAL_OOB = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RSP = common dso_local global i32 0, align 4
@SMP_AUTH_CT2 = common dso_local global i64 0, align 8
@SMP_FLAG_CT2 = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i64 0, align 8
@SMP_SC_NO_DIST = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@JUST_WORKS = common dso_local global i64 0, align 8
@JUST_CFM = common dso_local global i64 0, align 8
@SMP_CMD_PUBLIC_KEY = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i64 0, align 8
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4
@SMP_FLAG_TK_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_pairing_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smp_cmd_pairing_rsp(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_pairing*, align 8
  %7 = alloca %struct.smp_cmd_pairing*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.smp_chan*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %19, %struct.smp_cmd_pairing** %7, align 8
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %20, i32 0, i32 1
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %21, align 8
  store %struct.l2cap_chan* %22, %struct.l2cap_chan** %8, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = load %struct.smp_chan*, %struct.smp_chan** %24, align 8
  store %struct.smp_chan* %25, %struct.smp_chan** %9, align 8
  %26 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %27 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load %struct.hci_dev*, %struct.hci_dev** %29, align 8
  store %struct.hci_dev* %30, %struct.hci_dev** %10, align 8
  %31 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 32
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i64, i64* @SMP_INVALID_PARAMS, align 8
  store i64 %39, i64* %3, align 8
  br label %280

40:                                               ; preds = %2
  %41 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %42 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @SMP_CMD_NOTSUPP, align 8
  store i64 %49, i64* %3, align 8
  br label %280

50:                                               ; preds = %40
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @skb_pull(%struct.sk_buff* %51, i32 32)
  %53 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %54 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = bitcast i32* %56 to i8*
  %58 = bitcast i8* %57 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %58, %struct.smp_cmd_pairing** %6, align 8
  %59 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %60 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %63 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @min(i32 %61, i32 %64)
  store i64 %65, i64* %11, align 8
  %66 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @check_enc_key_size(%struct.l2cap_conn* %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %50
  %71 = load i64, i64* @SMP_ENC_KEY_SIZE, align 8
  store i64 %71, i64* %3, align 8
  br label %280

72:                                               ; preds = %50
  %73 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %74 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %77 = call i64 @AUTH_REQ_MASK(%struct.hci_dev* %76)
  %78 = and i64 %75, %77
  store i64 %78, i64* %12, align 8
  %79 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %80 = load i32, i32* @HCI_SC_ONLY, align 4
  %81 = call i64 @hci_dev_test_flag(%struct.hci_dev* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @SMP_AUTH_SC, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* @SMP_AUTH_REQUIREMENTS, align 8
  store i64 %89, i64* %3, align 8
  br label %280

90:                                               ; preds = %83, %72
  %91 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %92 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SMP_OOB_PRESENT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %98 = call %struct.TYPE_4__* @SMP_DEV(%struct.hci_dev* %97)
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load i32, i32* @SMP_FLAG_LOCAL_OOB, align 4
  %104 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %105 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %102, %96, %90
  %108 = load i32, i32* @SMP_CMD_PAIRING_RSP, align 4
  %109 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %110 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  store i32 %108, i32* %112, align 4
  %113 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %114 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %118 = call i32 @memcpy(i32* %116, %struct.smp_cmd_pairing* %117, i32 32)
  %119 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %120 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %123 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %127 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SMP_AUTH_CT2, align 8
  %130 = and i64 %128, %129
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %107
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* @SMP_AUTH_CT2, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @SMP_FLAG_CT2, align 4
  %139 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %140 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %139, i32 0, i32 0
  %141 = call i32 @set_bit(i32 %138, i32* %140)
  br label %142

142:                                              ; preds = %137, %132, %107
  %143 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %144 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %143, i32 0, i32 0
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ACL_LINK, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %142
  %151 = load i32, i32* @SMP_SC_NO_DIST, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %154 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %158 = call i32 @smp_distribute_keys(%struct.smp_chan* %157)
  store i64 0, i64* %3, align 8
  br label %280

159:                                              ; preds = %142
  %160 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %161 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @SMP_AUTH_SC, align 8
  %164 = and i64 %162, %163
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* @SMP_AUTH_SC, align 8
  %169 = and i64 %167, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* @SMP_FLAG_SC, align 4
  %173 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %174 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %173, i32 0, i32 0
  %175 = call i32 @set_bit(i32 %172, i32* %174)
  br label %191

176:                                              ; preds = %166, %159
  %177 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %178 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %186 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %187 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i64 %185, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %176
  br label %191

191:                                              ; preds = %190, %171
  %192 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %193 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %192, i32 0, i32 0
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %191
  %200 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %201 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %202 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %205 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @get_auth_method(%struct.smp_chan* %200, i32 %203, i32 %206)
  store i64 %207, i64* %14, align 8
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* @JUST_WORKS, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %215, label %211

211:                                              ; preds = %199
  %212 = load i64, i64* %14, align 8
  %213 = load i64, i64* @JUST_CFM, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211, %199
  %216 = load i64, i64* @SMP_AUTH_REQUIREMENTS, align 8
  store i64 %216, i64* %3, align 8
  br label %280

217:                                              ; preds = %211
  br label %218

218:                                              ; preds = %217, %191
  %219 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %220 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @get_random_bytes(i32 %221, i32 4)
  %223 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %224 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %227 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* @SMP_FLAG_SC, align 4
  %231 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %232 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %231, i32 0, i32 0
  %233 = call i64 @test_bit(i32 %230, i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %218
  %236 = load i32, i32* @SMP_SC_NO_DIST, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %239 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %243 = load i32, i32* @SMP_CMD_PUBLIC_KEY, align 4
  %244 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %242, i32 %243)
  %245 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %246 = call i64 @sc_send_public_key(%struct.smp_chan* %245)
  store i64 %246, i64* %3, align 8
  br label %280

247:                                              ; preds = %218
  %248 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %249 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* %12, align 8
  %252 = or i64 %251, %250
  store i64 %252, i64* %12, align 8
  %253 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %254 = load i64, i64* %12, align 8
  %255 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %6, align 8
  %256 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %259 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @tk_request(%struct.l2cap_conn* %253, i32 0, i64 %254, i32 %257, i32 %260)
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %247
  %265 = load i64, i64* @SMP_UNSPECIFIED, align 8
  store i64 %265, i64* %3, align 8
  br label %280

266:                                              ; preds = %247
  %267 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %268 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %269 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %268, i32 0, i32 0
  %270 = call i32 @set_bit(i32 %267, i32* %269)
  %271 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %272 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %273 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %272, i32 0, i32 0
  %274 = call i64 @test_bit(i32 %271, i32* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %278 = call i64 @smp_confirm(%struct.smp_chan* %277)
  store i64 %278, i64* %3, align 8
  br label %280

279:                                              ; preds = %266
  store i64 0, i64* %3, align 8
  br label %280

280:                                              ; preds = %279, %276, %264, %235, %215, %150, %88, %70, %48, %38
  %281 = load i64, i64* %3, align 8
  ret i64 %281
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @check_enc_key_size(%struct.l2cap_conn*, i64) #1

declare dso_local i64 @AUTH_REQ_MASK(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.TYPE_4__* @SMP_DEV(%struct.hci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.smp_cmd_pairing*, i32) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

declare dso_local i64 @get_auth_method(%struct.smp_chan*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i64 @sc_send_public_key(%struct.smp_chan*) #1

declare dso_local i32 @tk_request(%struct.l2cap_conn*, i32, i64, i32, i32) #1

declare dso_local i64 @smp_confirm(%struct.smp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
