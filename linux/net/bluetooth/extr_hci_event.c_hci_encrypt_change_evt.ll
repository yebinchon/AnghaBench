; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_encrypt_change_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_encrypt_change_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32*, i32*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_encrypt_change = type { i64, i32, i32 }
%struct.hci_conn = type { i64, i64, i64, i32, i32, i32, i8*, i32, i32 }
%struct.hci_cp_read_enc_key_size = type { i8* }
%struct.hci_request = type { i32 }
%struct.hci_cp_write_auth_payload_to = type { i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_CONN_AUTH = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@HCI_LK_AUTH_COMBINATION_P256 = common dso_local global i64 0, align 8
@HCI_CONN_FIPS = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i64 0, align 8
@LE_LINK = common dso_local global i64 0, align 8
@HCI_CONN_AES_CCM = common dso_local global i32 0, align 4
@HCI_RPA_EXPIRED = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_ERROR_PIN_OR_KEY_MISSING = common dso_local global i64 0, align 8
@HCI_CONN_AUTH_FAILURE = common dso_local global i32 0, align 4
@HCI_ERROR_AUTH_FAILURE = common dso_local global i64 0, align 8
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@HCI_LINK_KEY_SIZE = common dso_local global i8* null, align 8
@HCI_OP_READ_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@read_enc_key_size_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"sending read key size failed\00", align 1
@HCI_LE_PING = common dso_local global i32 0, align 4
@HCI_OP_WRITE_AUTH_PAYLOAD_TO = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_encrypt_change_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_encrypt_change_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_encrypt_change*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_read_enc_key_size, align 8
  %8 = alloca %struct.hci_request, align 4
  %9 = alloca %struct.hci_cp_write_auth_payload_to, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hci_ev_encrypt_change*
  store %struct.hci_ev_encrypt_change* %14, %struct.hci_ev_encrypt_change** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %19 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = call i32 @hci_dev_lock(%struct.hci_dev* %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le16_to_cpu(i32 %27)
  %29 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %24, i32 %28)
  store %struct.hci_conn* %29, %struct.hci_conn** %6, align 8
  %30 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %31 = icmp ne %struct.hci_conn* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %307

33:                                               ; preds = %2
  %34 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %35 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %100, label %38

38:                                               ; preds = %33
  %39 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %40 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %38
  %44 = load i32, i32* @HCI_CONN_AUTH, align 4
  %45 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %46 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %45, i32 0, i32 5
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %49 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 5
  %51 = call i32 @set_bit(i32 %48, i32* %50)
  %52 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %53 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %43
  %63 = load i32, i32* @HCI_CONN_FIPS, align 4
  %64 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %65 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %64, i32 0, i32 5
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %43
  %68 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %69 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACL_LINK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %75 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %84, label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %80 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LE_LINK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78, %73
  %85 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %86 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 5
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  br label %89

89:                                               ; preds = %84, %78
  br label %99

90:                                               ; preds = %38
  %91 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 5
  %94 = call i32 @clear_bit(i32 %91, i32* %93)
  %95 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %96 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %97 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %96, i32 0, i32 5
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %90, %89
  br label %100

100:                                              ; preds = %99, %33
  %101 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %102 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %107 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LE_LINK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %114 = call i32 @hci_dev_set_flag(%struct.hci_dev* %112, i32 %113)
  %115 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %116 = call i32 @hci_adv_instances_set_rpa_expired(%struct.hci_dev* %115, i32 1)
  br label %117

117:                                              ; preds = %111, %105, %100
  %118 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %119 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %120 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %119, i32 0, i32 5
  %121 = call i32 @clear_bit(i32 %118, i32* %120)
  %122 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %123 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %149

126:                                              ; preds = %117
  %127 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %128 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @BT_CONNECTED, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %134 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @HCI_ERROR_PIN_OR_KEY_MISSING, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32, i32* @HCI_CONN_AUTH_FAILURE, align 4
  %140 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %141 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %140, i32 0, i32 5
  %142 = call i32 @set_bit(i32 %139, i32* %141)
  br label %143

143:                                              ; preds = %138, %132
  %144 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %145 = load i64, i64* @HCI_ERROR_AUTH_FAILURE, align 8
  %146 = call i32 @hci_disconnect(%struct.hci_conn* %144, i64 %145)
  %147 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %148 = call i32 @hci_conn_drop(%struct.hci_conn* %147)
  br label %307

149:                                              ; preds = %126, %117
  %150 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %151 = load i32, i32* @HCI_SC_ONLY, align 4
  %152 = call i64 @hci_dev_test_flag(%struct.hci_dev* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %156 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %157 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %156, i32 0, i32 5
  %158 = call i64 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %162 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @HCI_LK_AUTH_COMBINATION_P256, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160, %154
  %167 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %168 = load i64, i64* @HCI_ERROR_AUTH_FAILURE, align 8
  %169 = call i32 @hci_connect_cfm(%struct.hci_conn* %167, i64 %168)
  %170 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %171 = call i32 @hci_conn_drop(%struct.hci_conn* %170)
  br label %307

172:                                              ; preds = %160, %149
  %173 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %174 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %220, label %177

177:                                              ; preds = %172
  %178 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %179 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %220

182:                                              ; preds = %177
  %183 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %184 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ACL_LINK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %220

188:                                              ; preds = %182
  %189 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %190 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 20
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 16
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %188
  %197 = load i8*, i8** @HCI_LINK_KEY_SIZE, align 8
  %198 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %199 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %198, i32 0, i32 6
  store i8* %197, i8** %199, align 8
  br label %274

200:                                              ; preds = %188
  %201 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %202 = call i32 @hci_req_init(%struct.hci_request* %8, %struct.hci_dev* %201)
  %203 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %204 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @cpu_to_le16(i32 %205)
  %207 = getelementptr inbounds %struct.hci_cp_read_enc_key_size, %struct.hci_cp_read_enc_key_size* %7, i32 0, i32 0
  store i8* %206, i8** %207, align 8
  %208 = load i32, i32* @HCI_OP_READ_ENC_KEY_SIZE, align 4
  %209 = call i32 @hci_req_add(%struct.hci_request* %8, i32 %208, i32 8, %struct.hci_cp_read_enc_key_size* %7)
  %210 = load i32, i32* @read_enc_key_size_complete, align 4
  %211 = call i64 @hci_req_run_skb(%struct.hci_request* %8, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %200
  %214 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %215 = call i32 @bt_dev_err(%struct.hci_dev* %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %216 = load i8*, i8** @HCI_LINK_KEY_SIZE, align 8
  %217 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %218 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %217, i32 0, i32 6
  store i8* %216, i8** %218, align 8
  br label %274

219:                                              ; preds = %200
  br label %307

220:                                              ; preds = %182, %177, %172
  %221 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %222 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %223 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %222, i32 0, i32 5
  %224 = call i64 @test_bit(i32 %221, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %273

226:                                              ; preds = %220
  %227 = load i32, i32* @HCI_CONN_AES_CCM, align 4
  %228 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %229 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %228, i32 0, i32 5
  %230 = call i64 @test_bit(i32 %227, i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %273

232:                                              ; preds = %226
  %233 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %234 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @ACL_LINK, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %240 = call i64 @lmp_ping_capable(%struct.hci_dev* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %257, label %242

242:                                              ; preds = %238, %232
  %243 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %244 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @LE_LINK, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %273

248:                                              ; preds = %242
  %249 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %250 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @HCI_LE_PING, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %248, %238
  %258 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %259 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @cpu_to_le16(i32 %260)
  %262 = getelementptr inbounds %struct.hci_cp_write_auth_payload_to, %struct.hci_cp_write_auth_payload_to* %9, i32 0, i32 1
  store i8* %261, i8** %262, align 8
  %263 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %264 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i8* @cpu_to_le16(i32 %265)
  %267 = getelementptr inbounds %struct.hci_cp_write_auth_payload_to, %struct.hci_cp_write_auth_payload_to* %9, i32 0, i32 0
  store i8* %266, i8** %267, align 8
  %268 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %269 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @HCI_OP_WRITE_AUTH_PAYLOAD_TO, align 4
  %272 = call i32 @hci_send_cmd(i32 %270, i32 %271, i32 16, %struct.hci_cp_write_auth_payload_to* %9)
  br label %273

273:                                              ; preds = %257, %248, %242, %226, %220
  br label %274

274:                                              ; preds = %273, %213, %196
  %275 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %276 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @BT_CONFIG, align 8
  %279 = icmp eq i64 %277, %278
  br i1 %279, label %280, label %297

280:                                              ; preds = %274
  %281 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %282 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %280
  %286 = load i64, i64* @BT_CONNECTED, align 8
  %287 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %288 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %285, %280
  %290 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %291 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %292 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @hci_connect_cfm(%struct.hci_conn* %290, i64 %293)
  %295 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %296 = call i32 @hci_conn_drop(%struct.hci_conn* %295)
  br label %306

297:                                              ; preds = %274
  %298 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %299 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %300 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.hci_ev_encrypt_change*, %struct.hci_ev_encrypt_change** %5, align 8
  %303 = getelementptr inbounds %struct.hci_ev_encrypt_change, %struct.hci_ev_encrypt_change* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @hci_encrypt_cfm(%struct.hci_conn* %298, i64 %301, i32 %304)
  br label %306

306:                                              ; preds = %297, %289
  br label %307

307:                                              ; preds = %306, %219, %166, %143, %32
  %308 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %309 = call i32 @hci_dev_unlock(%struct.hci_dev* %308)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_adv_instances_set_rpa_expired(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_disconnect(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_read_enc_key_size*) #1

declare dso_local i64 @hci_req_run_skb(%struct.hci_request*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i64 @lmp_ping_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_write_auth_payload_to*) #1

declare dso_local i32 @hci_encrypt_cfm(%struct.hci_conn*, i64, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
