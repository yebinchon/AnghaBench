; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_random.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn*, %struct.l2cap_chan* }
%struct.hci_conn = type { i32, i32, i32, i32, i64 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i64, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32* }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@REQ_OOB = common dso_local global i64 0, align 8
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@SMP_CMD_DHKEY_CHECK = common dso_local global i32 0, align 4
@REQ_PASSKEY = common dso_local global i64 0, align 8
@DSP_PASSKEY = common dso_local global i64 0, align 8
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_CONFIRM_FAILED = common dso_local global i32 0, align 4
@JUST_WORKS = common dso_local global i64 0, align 8
@SMP_FLAG_WAIT_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_pairing_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_pairing_random(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.smp_chan*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i32], align 16
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 1
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %17, align 8
  store %struct.l2cap_chan* %18, %struct.l2cap_chan** %6, align 8
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 0
  %21 = load %struct.smp_chan*, %struct.smp_chan** %20, align 8
  store %struct.smp_chan* %21, %struct.smp_chan** %7, align 8
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 0
  %24 = load %struct.hci_conn*, %struct.hci_conn** %23, align 8
  store %struct.hci_conn* %24, %struct.hci_conn** %8, align 8
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %26 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %33, i32* %3, align 4
  br label %239

34:                                               ; preds = %2
  %35 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %36 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %37, i32 %40, i32 8)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = call i32 @skb_pull(%struct.sk_buff* %42, i32 8)
  %44 = load i32, i32* @SMP_FLAG_SC, align 4
  %45 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %46 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %45, i32 0, i32 1
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %51 = call i32 @smp_random(%struct.smp_chan* %50)
  store i32 %51, i32* %3, align 4
  br label %239

52:                                               ; preds = %34
  %53 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %59 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %9, align 8
  %61 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %62 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %61, i32 0, i32 9
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %10, align 8
  %64 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %65 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  %67 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %68 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %12, align 8
  br label %83

70:                                               ; preds = %52
  %71 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %72 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %71, i32 0, i32 9
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %9, align 8
  %74 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %75 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %10, align 8
  %77 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %78 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %77, i32 0, i32 7
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %11, align 8
  %80 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %81 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %12, align 8
  br label %83

83:                                               ; preds = %70, %57
  %84 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %85 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @REQ_OOB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %83
  %90 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %96 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %97 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %98 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @smp_send_cmd(%struct.l2cap_conn* %95, i32 %96, i32 8, i32* %99)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %103 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %104 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %102, i32 %103)
  br label %166

105:                                              ; preds = %83
  %106 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %107 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @REQ_PASSKEY, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %113 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @DSP_PASSKEY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %105
  %118 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %119 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %120 = call i32 @sc_passkey_round(%struct.smp_chan* %118, i32 %119)
  store i32 %120, i32* %3, align 4
  br label %239

121:                                              ; preds = %111
  %122 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %123 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  %127 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %128 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %131 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %130, i32 0, i32 9
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %134 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %133, i32 0, i32 8
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %137 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %140 = call i32 @smp_f4(i32 %129, i32* %132, i32* %135, i32* %138, i32 0, i32* %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %126
  %144 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %144, i32* %3, align 4
  br label %239

145:                                              ; preds = %126
  %146 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %147 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %150 = call i64 @crypto_memneq(i32 %148, i32* %149, i32 16)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @SMP_CONFIRM_FAILED, align 4
  store i32 %153, i32* %3, align 4
  br label %239

154:                                              ; preds = %145
  br label %165

155:                                              ; preds = %121
  %156 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %157 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %158 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %159 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %158, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @smp_send_cmd(%struct.l2cap_conn* %156, i32 %157, i32 8, i32* %160)
  %162 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %163 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %164 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %162, i32 %163)
  br label %165

165:                                              ; preds = %155, %154
  br label %166

166:                                              ; preds = %165, %101
  %167 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %168 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %169 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %172 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @sc_mackey_and_ltk(%struct.smp_chan* %167, i32 %170, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %166
  %178 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %178, i32* %3, align 4
  br label %239

179:                                              ; preds = %166
  %180 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %181 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @JUST_WORKS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %179
  %186 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %187 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @REQ_OOB, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %185, %179
  %192 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %193 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %198 = call i32 @sc_dhkey_check(%struct.smp_chan* %197)
  %199 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %200 = load i32, i32* @SMP_CMD_DHKEY_CHECK, align 4
  %201 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %199, i32 %200)
  br label %202

202:                                              ; preds = %196, %191
  store i32 0, i32* %3, align 4
  br label %239

203:                                              ; preds = %185
  %204 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %205 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = load i32*, i32** %12, align 8
  %211 = call i32 @smp_g2(i32 %206, i32* %207, i32* %208, i32* %209, i32* %210, i32* %13)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %215, i32* %3, align 4
  br label %239

216:                                              ; preds = %203
  %217 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %218 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %221 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %220, i32 0, i32 2
  %222 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %223 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %226 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @mgmt_user_confirm_request(i32 %219, i32* %221, i32 %224, i32 %227, i32 %228, i32 0)
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %216
  %233 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %233, i32* %3, align 4
  br label %239

234:                                              ; preds = %216
  %235 = load i32, i32* @SMP_FLAG_WAIT_USER, align 4
  %236 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %237 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %236, i32 0, i32 1
  %238 = call i32 @set_bit(i32 %235, i32* %237)
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %234, %232, %214, %202, %177, %152, %143, %117, %49, %32
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @smp_random(%struct.smp_chan*) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i32*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @sc_passkey_round(%struct.smp_chan*, i32) #1

declare dso_local i32 @smp_f4(i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i64 @crypto_memneq(i32, i32*, i32) #1

declare dso_local i32 @sc_mackey_and_ltk(%struct.smp_chan*, i32, i32) #1

declare dso_local i32 @sc_dhkey_check(%struct.smp_chan*) #1

declare dso_local i32 @smp_g2(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mgmt_user_confirm_request(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
