; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_tk_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_tk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan*, %struct.hci_conn* }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i64, i32, i32 }
%struct.hci_conn = type { i64, i64, i64, i32, i32, i32, i32 }

@SMP_FLAG_TK_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tk_request: auth:%d lcl:%d rem:%d\00", align 1
@SMP_AUTH_MITM = common dso_local global i32 0, align 4
@JUST_CFM = common dso_local global i64 0, align 8
@SMP_FLAG_INITIATOR = common dso_local global i32 0, align 4
@JUST_WORKS = common dso_local global i64 0, align 8
@HCI_IO_NO_INPUT_OUTPUT = common dso_local global i64 0, align 8
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMP_FLAG_MITM_AUTH = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@OVERLAP = common dso_local global i64 0, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@CFM_PASSKEY = common dso_local global i64 0, align 8
@REQ_PASSKEY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"PassKey: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i32, i32, i32, i32)* @tk_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tk_request(%struct.l2cap_conn* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hci_conn*, align 8
  %13 = alloca %struct.l2cap_chan*, align 8
  %14 = alloca %struct.smp_chan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %17, i32 0, i32 1
  %19 = load %struct.hci_conn*, %struct.hci_conn** %18, align 8
  store %struct.hci_conn* %19, %struct.hci_conn** %12, align 8
  %20 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  %21 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %20, i32 0, i32 0
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %21, align 8
  store %struct.l2cap_chan* %22, %struct.l2cap_chan** %13, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 0
  %25 = load %struct.smp_chan*, %struct.smp_chan** %24, align 8
  store %struct.smp_chan* %25, %struct.smp_chan** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %27 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memset(i32 %28, i32 0, i32 4)
  %30 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %31 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %32 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %31, i32 0, i32 1
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SMP_AUTH_MITM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %5
  %43 = load i64, i64* @JUST_CFM, align 8
  %44 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %45 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %53

46:                                               ; preds = %5
  %47 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @get_auth_method(%struct.smp_chan* %47, i32 %48, i32 %49)
  %51 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %42
  %54 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %55 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @JUST_CFM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32, i32* @SMP_FLAG_INITIATOR, align 4
  %61 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %62 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %61, i32 0, i32 1
  %63 = call i64 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* @JUST_WORKS, align 8
  %67 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %68 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59, %53
  %70 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %71 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @JUST_CFM, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %77 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HCI_IO_NO_INPUT_OUTPUT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i64, i64* @JUST_WORKS, align 8
  %83 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %84 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %75, %69
  %86 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %87 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @JUST_WORKS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %93 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %94 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %93, i32 0, i32 1
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  store i32 0, i32* %6, align 4
  br label %228

96:                                               ; preds = %85
  %97 = load i32, i32* @SMP_FLAG_SC, align 4
  %98 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %99 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %228

105:                                              ; preds = %96
  %106 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %107 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @JUST_CFM, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load i32, i32* @SMP_FLAG_MITM_AUTH, align 4
  %113 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %114 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %113, i32 0, i32 1
  %115 = call i32 @set_bit(i32 %112, i32* %114)
  %116 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %117 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %123 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %124 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %111
  br label %126

126:                                              ; preds = %125, %105
  %127 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %128 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @OVERLAP, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %134 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load i64, i64* @CFM_PASSKEY, align 8
  %140 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %141 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %146

142:                                              ; preds = %132
  %143 = load i64, i64* @REQ_PASSKEY, align 8
  %144 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %145 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %126
  %148 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %149 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CFM_PASSKEY, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %147
  %154 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %155 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memset(i32 %156, i32 0, i32 4)
  %158 = call i32 @get_random_bytes(i32* %15, i32 4)
  %159 = load i32, i32* %15, align 4
  %160 = srem i32 %159, 1000000
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %163 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @put_unaligned_le32(i32 %161, i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %169 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %170 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %169, i32 0, i32 1
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %153, %147
  %173 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %174 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @REQ_PASSKEY, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %191

178:                                              ; preds = %172
  %179 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %180 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %183 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %182, i32 0, i32 5
  %184 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %185 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %188 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @mgmt_user_passkey_request(i32 %181, i32* %183, i32 %186, i32 %189)
  store i32 %190, i32* %16, align 4
  br label %226

191:                                              ; preds = %172
  %192 = load %struct.smp_chan*, %struct.smp_chan** %14, align 8
  %193 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @JUST_CFM, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %191
  %198 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %199 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %202 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %201, i32 0, i32 5
  %203 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %204 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %207 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @mgmt_user_confirm_request(i32 %200, i32* %202, i32 %205, i32 %208, i32 %209, i32 1)
  store i32 %210, i32* %16, align 4
  br label %225

211:                                              ; preds = %191
  %212 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %213 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %216 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %215, i32 0, i32 5
  %217 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %218 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %221 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %15, align 4
  %224 = call i32 @mgmt_user_passkey_notify(i32 %214, i32* %216, i32 %219, i32 %222, i32 %223, i32 0)
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %211, %197
  br label %226

226:                                              ; preds = %225, %178
  %227 = load i32, i32* %16, align 4
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %226, %102, %91
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i64 @get_auth_method(%struct.smp_chan*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @mgmt_user_passkey_request(i32, i32*, i32, i32) #1

declare dso_local i32 @mgmt_user_confirm_request(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_user_passkey_notify(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
