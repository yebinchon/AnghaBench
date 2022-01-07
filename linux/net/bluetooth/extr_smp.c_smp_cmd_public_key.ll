; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_public_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_public_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i32, i64, i32, i32, i32, i64, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i64, %struct.smp_cmd_pairing_confirm*, i64, i64, i32, i32, i64, i64, %struct.crypto_kpp*, i64, %struct.smp_cmd_pairing_confirm* }
%struct.crypto_kpp = type { i32 }
%struct.smp_cmd_pairing_confirm = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_public_key = type { i32 }
%struct.smp_chan = type { i64, %struct.smp_cmd_pairing_confirm*, i64, i64, i32, i32, i64, i64, %struct.crypto_kpp*, i64, %struct.smp_cmd_pairing_confirm* }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_FLAG_REMOTE_OOB = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_CONFIRM_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Remote Public Key X: %32phN\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Remote Public Key Y: %32phN\00", align 1
@SMP_FLAG_LOCAL_OOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"DHKey %32phN\00", align 1
@SMP_FLAG_REMOTE_PK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"%s selected method 0x%02x\00", align 1
@JUST_WORKS = common dso_local global i64 0, align 8
@JUST_CFM = common dso_local global i64 0, align 8
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@BT_SECURITY_FIPS = common dso_local global i32 0, align 4
@debug_pk = common dso_local global i32 0, align 4
@SMP_FLAG_DEBUG_KEY = common dso_local global i32 0, align 4
@DSP_PASSKEY = common dso_local global i64 0, align 8
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@SMP_CMD_PUBLIC_KEY = common dso_local global i32 0, align 4
@REQ_OOB = common dso_local global i64 0, align 8
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@REQ_PASSKEY = common dso_local global i64 0, align 8
@SMP_FLAG_WAIT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_public_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_public_key(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_public_key*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.smp_chan*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.crypto_kpp*, align 8
  %12 = alloca %struct.smp_cmd_pairing_confirm, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2cap_chan*, align 8
  %15 = alloca %struct.smp_dev*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.smp_cmd_public_key*
  store %struct.smp_cmd_public_key* %20, %struct.smp_cmd_public_key** %6, align 8
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %22 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %21, i32 0, i32 0
  %23 = load %struct.hci_conn*, %struct.hci_conn** %22, align 8
  store %struct.hci_conn* %23, %struct.hci_conn** %7, align 8
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 1
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %25, align 8
  store %struct.l2cap_chan* %26, %struct.l2cap_chan** %8, align 8
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 0
  %29 = load %struct.smp_dev*, %struct.smp_dev** %28, align 8
  %30 = bitcast %struct.smp_dev* %29 to %struct.smp_chan*
  store %struct.smp_chan* %30, %struct.smp_chan** %9, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 7
  %33 = load %struct.hci_dev*, %struct.hci_dev** %32, align 8
  store %struct.hci_dev* %33, %struct.hci_dev** %10, align 8
  %34 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %35 = call i32 (i8*, %struct.l2cap_conn*, ...) @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %42, i32* %3, align 4
  br label %348

43:                                               ; preds = %2
  %44 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.smp_cmd_public_key*, %struct.smp_cmd_public_key** %6, align 8
  %48 = call i32 @memcpy(i64 %46, %struct.smp_cmd_public_key* %47, i32 64)
  %49 = load i32, i32* @SMP_FLAG_REMOTE_OOB, align 4
  %50 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %51 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %50, i32 0, i32 5
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %43
  %55 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %56 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %59 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %62 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %65 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %64, i32 0, i32 10
  %66 = load %struct.smp_cmd_pairing_confirm*, %struct.smp_cmd_pairing_confirm** %65, align 8
  %67 = getelementptr inbounds %struct.smp_cmd_pairing_confirm, %struct.smp_cmd_pairing_confirm* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @smp_f4(i32 %57, i64 %60, i64 %63, %struct.smp_cmd_pairing_confirm* %66, i32 0, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %73, i32* %3, align 4
  br label %348

74:                                               ; preds = %54
  %75 = getelementptr inbounds %struct.smp_cmd_pairing_confirm, %struct.smp_cmd_pairing_confirm* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %78 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @crypto_memneq(i32 %76, i64 %79, i32 16)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @SMP_CONFIRM_FAILED, align 4
  store i32 %83, i32* %3, align 4
  br label %348

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %43
  %86 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %92 = bitcast %struct.smp_chan* %91 to %struct.smp_dev*
  %93 = call i32 @sc_send_public_key(%struct.smp_dev* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %3, align 4
  br label %348

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %85
  %100 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %101 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @SMP_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %102)
  %104 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %105 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 32
  %108 = call i32 @SMP_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* @SMP_FLAG_LOCAL_OOB, align 4
  %110 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %111 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %110, i32 0, i32 5
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %99
  %115 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 1
  %117 = load %struct.l2cap_chan*, %struct.l2cap_chan** %116, align 8
  store %struct.l2cap_chan* %117, %struct.l2cap_chan** %14, align 8
  %118 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %119 = icmp ne %struct.l2cap_chan* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %122 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %121, i32 0, i32 0
  %123 = load %struct.smp_dev*, %struct.smp_dev** %122, align 8
  %124 = icmp ne %struct.smp_dev* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %120, %114
  %126 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %126, i32* %3, align 4
  br label %348

127:                                              ; preds = %120
  %128 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %129 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %128, i32 0, i32 0
  %130 = load %struct.smp_dev*, %struct.smp_dev** %129, align 8
  store %struct.smp_dev* %130, %struct.smp_dev** %15, align 8
  %131 = load %struct.smp_dev*, %struct.smp_dev** %15, align 8
  %132 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %131, i32 0, i32 8
  %133 = load %struct.crypto_kpp*, %struct.crypto_kpp** %132, align 8
  store %struct.crypto_kpp* %133, %struct.crypto_kpp** %11, align 8
  br label %138

134:                                              ; preds = %99
  %135 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %136 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %135, i32 0, i32 8
  %137 = load %struct.crypto_kpp*, %struct.crypto_kpp** %136, align 8
  store %struct.crypto_kpp* %137, %struct.crypto_kpp** %11, align 8
  br label %138

138:                                              ; preds = %134, %127
  %139 = load %struct.crypto_kpp*, %struct.crypto_kpp** %11, align 8
  %140 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %141 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %144 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %143, i32 0, i32 7
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @compute_ecdh_secret(%struct.crypto_kpp* %139, i64 %142, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %138
  %149 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %149, i32* %3, align 4
  br label %348

150:                                              ; preds = %138
  %151 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %152 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @SMP_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @SMP_FLAG_REMOTE_PK, align 4
  %156 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %157 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %156, i32 0, i32 5
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %160 = bitcast %struct.smp_chan* %159 to %struct.smp_dev*
  %161 = call i64 @sc_select_method(%struct.smp_dev* %160)
  %162 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %163 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %165 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to %struct.l2cap_conn*
  %169 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %170 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i8*, %struct.l2cap_conn*, ...) @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.l2cap_conn* %168, i64 %171)
  %173 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %174 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @JUST_WORKS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %150
  %179 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %180 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @JUST_CFM, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %178, %150
  %185 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  %186 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %187 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  br label %192

188:                                              ; preds = %178
  %189 = load i32, i32* @BT_SECURITY_FIPS, align 4
  %190 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %191 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %188, %184
  %193 = load i32, i32* @debug_pk, align 4
  %194 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %195 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @crypto_memneq(i32 %193, i64 %196, i32 64)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %201 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %202 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %201, i32 0, i32 5
  %203 = call i32 @set_bit(i32 %200, i32* %202)
  br label %204

204:                                              ; preds = %199, %192
  %205 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %206 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @DSP_PASSKEY, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %250

210:                                              ; preds = %204
  %211 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %212 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %211, i32 0, i32 0
  %213 = call i32 @get_random_bytes(i32* %212, i32 4)
  %214 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %215 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = srem i32 %216, 1000000
  store i32 %217, i32* %215, align 8
  %218 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %219 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %218, i32 0, i32 5
  store i64 0, i64* %219, align 8
  %220 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %221 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %220, i32 0, i32 6
  store i64 0, i64* %221, align 8
  %222 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %223 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %224 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %223, i32 0, i32 4
  %225 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %226 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %229 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %232 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %235 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @mgmt_user_passkey_notify(%struct.hci_dev* %222, i32* %224, i32 %227, i32 %230, i32 %233, i64 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %210
  %240 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %240, i32* %3, align 4
  br label %348

241:                                              ; preds = %210
  %242 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %243 = bitcast %struct.smp_chan* %242 to %struct.smp_dev*
  %244 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %245 = call i32 @SMP_ALLOW_CMD(%struct.smp_dev* %243, i32 %244)
  %246 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %247 = bitcast %struct.smp_chan* %246 to %struct.smp_dev*
  %248 = load i32, i32* @SMP_CMD_PUBLIC_KEY, align 4
  %249 = call i32 @sc_passkey_round(%struct.smp_dev* %247, i32 %248)
  store i32 %249, i32* %3, align 4
  br label %348

250:                                              ; preds = %204
  %251 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %252 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @REQ_OOB, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %250
  %257 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %258 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %263 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %264 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %265 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %264, i32 0, i32 1
  %266 = load %struct.smp_cmd_pairing_confirm*, %struct.smp_cmd_pairing_confirm** %265, align 8
  %267 = call i32 @smp_send_cmd(%struct.l2cap_conn* %262, i32 %263, i32 8, %struct.smp_cmd_pairing_confirm* %266)
  br label %268

268:                                              ; preds = %261, %256
  %269 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %270 = bitcast %struct.smp_chan* %269 to %struct.smp_dev*
  %271 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %272 = call i32 @SMP_ALLOW_CMD(%struct.smp_dev* %270, i32 %271)
  store i32 0, i32* %3, align 4
  br label %348

273:                                              ; preds = %250
  %274 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %275 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %280 = bitcast %struct.smp_chan* %279 to %struct.smp_dev*
  %281 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %282 = call i32 @SMP_ALLOW_CMD(%struct.smp_dev* %280, i32 %281)
  br label %283

283:                                              ; preds = %278, %273
  %284 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %285 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @REQ_PASSKEY, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %312

289:                                              ; preds = %283
  %290 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %291 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %292 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %291, i32 0, i32 4
  %293 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %294 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %297 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = call i64 @mgmt_user_passkey_request(%struct.hci_dev* %290, i32* %292, i32 %295, i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %289
  %302 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %302, i32* %3, align 4
  br label %348

303:                                              ; preds = %289
  %304 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %305 = bitcast %struct.smp_chan* %304 to %struct.smp_dev*
  %306 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %307 = call i32 @SMP_ALLOW_CMD(%struct.smp_dev* %305, i32 %306)
  %308 = load i32, i32* @SMP_FLAG_WAIT_USER, align 4
  %309 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %310 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %309, i32 0, i32 5
  %311 = call i32 @set_bit(i32 %308, i32* %310)
  store i32 0, i32* %3, align 4
  br label %348

312:                                              ; preds = %283
  %313 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %314 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %313, i32 0, i32 0
  %315 = load %struct.hci_conn*, %struct.hci_conn** %314, align 8
  %316 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  store i32 0, i32* %3, align 4
  br label %348

320:                                              ; preds = %312
  %321 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %322 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %325 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %328 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %331 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %330, i32 0, i32 1
  %332 = load %struct.smp_cmd_pairing_confirm*, %struct.smp_cmd_pairing_confirm** %331, align 8
  %333 = getelementptr inbounds %struct.smp_cmd_pairing_confirm, %struct.smp_cmd_pairing_confirm* %12, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @smp_f4(i32 %323, i64 %326, i64 %329, %struct.smp_cmd_pairing_confirm* %332, i32 0, i32 %334)
  store i32 %335, i32* %13, align 4
  %336 = load i32, i32* %13, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %320
  %339 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %339, i32* %3, align 4
  br label %348

340:                                              ; preds = %320
  %341 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %342 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %343 = call i32 @smp_send_cmd(%struct.l2cap_conn* %341, i32 %342, i32 4, %struct.smp_cmd_pairing_confirm* %12)
  %344 = load %struct.smp_chan*, %struct.smp_chan** %9, align 8
  %345 = bitcast %struct.smp_chan* %344 to %struct.smp_dev*
  %346 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %347 = call i32 @SMP_ALLOW_CMD(%struct.smp_dev* %345, i32 %346)
  store i32 0, i32* %3, align 4
  br label %348

348:                                              ; preds = %340, %338, %319, %303, %301, %268, %241, %239, %148, %125, %96, %82, %72, %41
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, ...) #1

declare dso_local i32 @memcpy(i64, %struct.smp_cmd_public_key*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_f4(i32, i64, i64, %struct.smp_cmd_pairing_confirm*, i32, i32) #1

declare dso_local i64 @crypto_memneq(i32, i64, i32) #1

declare dso_local i32 @sc_send_public_key(%struct.smp_dev*) #1

declare dso_local i32 @SMP_DBG(i8*, i64) #1

declare dso_local i64 @compute_ecdh_secret(%struct.crypto_kpp*, i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @sc_select_method(%struct.smp_dev*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @mgmt_user_passkey_notify(%struct.hci_dev*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_dev*, i32) #1

declare dso_local i32 @sc_passkey_round(%struct.smp_dev*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_pairing_confirm*) #1

declare dso_local i64 @mgmt_user_passkey_request(%struct.hci_dev*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
