; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_3__*, %struct.l2cap_chan* }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i32, i8**, i32, i8** }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_pairing = type { i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@SMP_CMD_NOTSUPP = common dso_local global i32 0, align 4
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@SMP_AUTH_BONDING = common dso_local global i32 0, align 4
@SMP_PAIRING_NOTSUPP = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@SMP_AUTH_SC = common dso_local global i32 0, align 4
@SMP_AUTH_REQUIREMENTS = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_REQ = common dso_local global i8* null, align 8
@SMP_OOB_PRESENT = common dso_local global i64 0, align 8
@SMP_FLAG_LOCAL_OOB = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_CONN_AES_CCM = common dso_local global i32 0, align 4
@HCI_FORCE_BREDR_SMP = common dso_local global i32 0, align 4
@SMP_CROSS_TRANSP_NOT_ALLOWED = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@SMP_AUTH_CT2 = common dso_local global i32 0, align 4
@SMP_FLAG_CT2 = common dso_local global i32 0, align 4
@SMP_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@SMP_SC_NO_DIST = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RSP = common dso_local global i8* null, align 8
@HCI_IO_NO_INPUT_OUTPUT = common dso_local global i32 0, align 4
@BT_SECURITY_MEDIUM = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i64 0, align 8
@JUST_WORKS = common dso_local global i32 0, align 4
@JUST_CFM = common dso_local global i32 0, align 4
@SMP_FLAG_INITIATOR = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@SMP_CMD_PUBLIC_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_pairing_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_pairing_req(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_pairing, align 8
  %7 = alloca %struct.smp_cmd_pairing*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca %struct.smp_chan*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.smp_cmd_pairing*
  store %struct.smp_cmd_pairing* %20, %struct.smp_cmd_pairing** %7, align 8
  %21 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %22 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %21, i32 0, i32 1
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %22, align 8
  store %struct.l2cap_chan* %23, %struct.l2cap_chan** %8, align 8
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load %struct.hci_dev*, %struct.hci_dev** %27, align 8
  store %struct.hci_dev* %28, %struct.hci_dev** %9, align 8
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 24
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %37, i32* %3, align 4
  br label %352

38:                                               ; preds = %2
  %39 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %40 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @SMP_CMD_NOTSUPP, align 4
  store i32 %47, i32* %3, align 4
  br label %352

48:                                               ; preds = %38
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %50 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %49, i32 0, i32 0
  %51 = load %struct.smp_chan*, %struct.smp_chan** %50, align 8
  %52 = icmp ne %struct.smp_chan* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %55 = call %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn* %54)
  store %struct.smp_chan* %55, %struct.smp_chan** %10, align 8
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 0
  %59 = load %struct.smp_chan*, %struct.smp_chan** %58, align 8
  store %struct.smp_chan* %59, %struct.smp_chan** %10, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %62 = icmp ne %struct.smp_chan* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %64, i32* %3, align 4
  br label %352

65:                                               ; preds = %60
  %66 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %67 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %70 = call i32 @AUTH_REQ_MASK(%struct.hci_dev* %69)
  %71 = and i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %73 = load i32, i32* @HCI_BONDABLE, align 4
  %74 = call i64 @hci_dev_test_flag(%struct.hci_dev* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @SMP_AUTH_BONDING, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @SMP_PAIRING_NOTSUPP, align 4
  store i32 %82, i32* %3, align 4
  br label %352

83:                                               ; preds = %76, %65
  %84 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %85 = load i32, i32* @HCI_SC_ONLY, align 4
  %86 = call i64 @hci_dev_test_flag(%struct.hci_dev* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @SMP_AUTH_SC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @SMP_AUTH_REQUIREMENTS, align 4
  store i32 %94, i32* %3, align 4
  br label %352

95:                                               ; preds = %88, %83
  %96 = load i8*, i8** @SMP_CMD_PAIRING_REQ, align 8
  %97 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %98 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %97, i32 0, i32 4
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  store i8* %96, i8** %100, align 8
  %101 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %102 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %101, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  %105 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %106 = call i32 @memcpy(i8** %104, %struct.smp_cmd_pairing* %105, i32 24)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @skb_pull(%struct.sk_buff* %107, i32 24)
  %109 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %110 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @SMP_OOB_PRESENT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %95
  %115 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %116 = call %struct.TYPE_4__* @SMP_DEV(%struct.hci_dev* %115)
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* @SMP_FLAG_LOCAL_OOB, align 4
  %122 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %123 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %122, i32 0, i32 1
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %114, %95
  %126 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %127 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @ACL_LINK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %202

133:                                              ; preds = %125
  %134 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %135 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %136 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  %139 = call i64 @test_bit(i32 %134, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %133
  %142 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %143 = load i32, i32* @HCI_FORCE_BREDR_SMP, align 4
  %144 = call i64 @hci_dev_test_flag(%struct.hci_dev* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @SMP_CROSS_TRANSP_NOT_ALLOWED, align 4
  store i32 %147, i32* %3, align 4
  br label %352

148:                                              ; preds = %141, %133
  %149 = load i32, i32* @SMP_FLAG_SC, align 4
  %150 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %151 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %150, i32 0, i32 1
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  %153 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %154 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %155 = call i32 @build_bredr_pairing_cmd(%struct.smp_chan* %153, %struct.smp_cmd_pairing* %154, %struct.smp_cmd_pairing* %6)
  %156 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %157 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @SMP_AUTH_CT2, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %148
  %163 = load i32, i32* @SMP_FLAG_CT2, align 4
  %164 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %165 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %164, i32 0, i32 1
  %166 = call i32 @set_bit(i32 %163, i32* %165)
  br label %167

167:                                              ; preds = %162, %148
  %168 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %169 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %6, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @min(i32 %170, i32 %172)
  store i32 %173, i32* %11, align 4
  %174 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @check_enc_key_size(%struct.l2cap_conn* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %167
  %179 = load i32, i32* @SMP_ENC_KEY_SIZE, align 4
  store i32 %179, i32* %3, align 4
  br label %352

180:                                              ; preds = %167
  %181 = load i32, i32* @SMP_SC_NO_DIST, align 4
  %182 = xor i32 %181, -1
  %183 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %184 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %182
  store i32 %186, i32* %184, align 8
  %187 = load i8*, i8** @SMP_CMD_PAIRING_RSP, align 8
  %188 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %189 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %188, i32 0, i32 2
  %190 = load i8**, i8*** %189, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 0
  store i8* %187, i8** %191, align 8
  %192 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %193 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %192, i32 0, i32 2
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  %196 = call i32 @memcpy(i8** %195, %struct.smp_cmd_pairing* %6, i32 24)
  %197 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %198 = load i8*, i8** @SMP_CMD_PAIRING_RSP, align 8
  %199 = call i32 @smp_send_cmd(%struct.l2cap_conn* %197, i8* %198, i32 24, %struct.smp_cmd_pairing* %6)
  %200 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %201 = call i32 @smp_distribute_keys(%struct.smp_chan* %200)
  store i32 0, i32* %3, align 4
  br label %352

202:                                              ; preds = %125
  %203 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %204 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @build_pairing_cmd(%struct.l2cap_conn* %203, %struct.smp_cmd_pairing* %204, %struct.smp_cmd_pairing* %6, i32 %205)
  %207 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %6, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @SMP_AUTH_SC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %202
  %213 = load i32, i32* @SMP_FLAG_SC, align 4
  %214 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %215 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %214, i32 0, i32 1
  %216 = call i32 @set_bit(i32 %213, i32* %215)
  %217 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %6, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @SMP_AUTH_CT2, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %212
  %223 = load i32, i32* @SMP_FLAG_CT2, align 4
  %224 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %225 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %224, i32 0, i32 1
  %226 = call i32 @set_bit(i32 %223, i32* %225)
  br label %227

227:                                              ; preds = %222, %212
  br label %228

228:                                              ; preds = %227, %202
  %229 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %230 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %229, i32 0, i32 0
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @HCI_IO_NO_INPUT_OUTPUT, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %228
  %237 = load i32, i32* @BT_SECURITY_MEDIUM, align 4
  store i32 %237, i32* %13, align 4
  br label %241

238:                                              ; preds = %228
  %239 = load i32, i32* %12, align 4
  %240 = call i32 @authreq_to_seclevel(i32 %239)
  store i32 %240, i32* %13, align 4
  br label %241

241:                                              ; preds = %238, %236
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %244 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %243, i32 0, i32 0
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp sgt i32 %242, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %241
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %252 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %251, i32 0, i32 0
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 2
  store i32 %250, i32* %254, align 8
  br label %255

255:                                              ; preds = %249, %241
  %256 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %257 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %256, i32 0, i32 0
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* @BT_SECURITY_HIGH, align 8
  %263 = icmp sge i64 %261, %262
  br i1 %263, label %264, label %285

264:                                              ; preds = %255
  %265 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %266 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %267 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %266, i32 0, i32 0
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %272 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @get_auth_method(%struct.smp_chan* %265, i32 %270, i32 %273)
  store i32 %274, i32* %15, align 4
  %275 = load i32, i32* %15, align 4
  %276 = load i32, i32* @JUST_WORKS, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %282, label %278

278:                                              ; preds = %264
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* @JUST_CFM, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %278, %264
  %283 = load i32, i32* @SMP_AUTH_REQUIREMENTS, align 4
  store i32 %283, i32* %3, align 4
  br label %352

284:                                              ; preds = %278
  br label %285

285:                                              ; preds = %284, %255
  %286 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %287 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %6, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @min(i32 %288, i32 %290)
  store i32 %291, i32* %11, align 4
  %292 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %293 = load i32, i32* %11, align 4
  %294 = call i64 @check_enc_key_size(%struct.l2cap_conn* %292, i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %285
  %297 = load i32, i32* @SMP_ENC_KEY_SIZE, align 4
  store i32 %297, i32* %3, align 4
  br label %352

298:                                              ; preds = %285
  %299 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %300 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @get_random_bytes(i32 %301, i32 4)
  %303 = load i8*, i8** @SMP_CMD_PAIRING_RSP, align 8
  %304 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %305 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %304, i32 0, i32 2
  %306 = load i8**, i8*** %305, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 0
  store i8* %303, i8** %307, align 8
  %308 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %309 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %308, i32 0, i32 2
  %310 = load i8**, i8*** %309, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 1
  %312 = call i32 @memcpy(i8** %311, %struct.smp_cmd_pairing* %6, i32 24)
  %313 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %314 = load i8*, i8** @SMP_CMD_PAIRING_RSP, align 8
  %315 = call i32 @smp_send_cmd(%struct.l2cap_conn* %313, i8* %314, i32 24, %struct.smp_cmd_pairing* %6)
  %316 = load i32, i32* @SMP_FLAG_INITIATOR, align 4
  %317 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %318 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %317, i32 0, i32 1
  %319 = call i32 @clear_bit(i32 %316, i32* %318)
  %320 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %321 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %322 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %320, i32 %321)
  %323 = load i32, i32* @SMP_FLAG_SC, align 4
  %324 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %325 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %324, i32 0, i32 1
  %326 = call i64 @test_bit(i32 %323, i32* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %298
  %329 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %330 = load i32, i32* @SMP_CMD_PUBLIC_KEY, align 4
  %331 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %329, i32 %330)
  %332 = load i32, i32* @SMP_SC_NO_DIST, align 4
  %333 = xor i32 %332, -1
  %334 = load %struct.smp_chan*, %struct.smp_chan** %10, align 8
  %335 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = and i32 %336, %333
  store i32 %337, i32* %335, align 8
  store i32 0, i32* %3, align 4
  br label %352

338:                                              ; preds = %298
  %339 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %340 = load i32, i32* %12, align 4
  %341 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %6, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing** %7, align 8
  %344 = getelementptr inbounds %struct.smp_cmd_pairing, %struct.smp_cmd_pairing* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @tk_request(%struct.l2cap_conn* %339, i32 0, i32 %340, i32 %342, i32 %345)
  store i32 %346, i32* %14, align 4
  %347 = load i32, i32* %14, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %338
  %350 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %350, i32* %3, align 4
  br label %352

351:                                              ; preds = %338
  store i32 0, i32* %3, align 4
  br label %352

352:                                              ; preds = %351, %349, %328, %296, %282, %180, %178, %146, %93, %81, %63, %46, %36
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local %struct.smp_chan* @smp_chan_create(%struct.l2cap_conn*) #1

declare dso_local i32 @AUTH_REQ_MASK(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memcpy(i8**, %struct.smp_cmd_pairing*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @SMP_DEV(%struct.hci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @build_bredr_pairing_cmd(%struct.smp_chan*, %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @check_enc_key_size(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i8*, i32, %struct.smp_cmd_pairing*) #1

declare dso_local i32 @smp_distribute_keys(%struct.smp_chan*) #1

declare dso_local i32 @build_pairing_cmd(%struct.l2cap_conn*, %struct.smp_cmd_pairing*, %struct.smp_cmd_pairing*, i32) #1

declare dso_local i32 @authreq_to_seclevel(i32) #1

declare dso_local i32 @get_auth_method(%struct.smp_chan*, i32, i32) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @tk_request(%struct.l2cap_conn*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
