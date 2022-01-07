; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_conn_complete = type { i64, i64, i32, i32 }
%struct.hci_conn = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_cp_read_remote_features = type { i32, i32 }
%struct.hci_cp_change_conn_ptype = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCO_LINK = common dso_local global i64 0, align 8
@ESCO_LINK = common dso_local global i64 0, align 8
@ACL_LINK = common dso_local global i64 0, align 8
@BT_CONFIG = common dso_local global i32 0, align 4
@HCI_PAIRING_TIMEOUT = common dso_local global i32 0, align 4
@HCI_DISCONN_TIMEOUT = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@HCI_AUTH = common dso_local global i32 0, align 4
@HCI_CONN_AUTH = common dso_local global i32 0, align 4
@HCI_ENCRYPT = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@HCI_OP_READ_REMOTE_FEATURES = common dso_local global i32 0, align 4
@BLUETOOTH_VER_2_0 = common dso_local global i64 0, align 8
@HCI_OP_CHANGE_CONN_PTYPE = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_conn_complete*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_cp_read_remote_features, align 4
  %8 = alloca %struct.hci_cp_change_conn_ptype, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_ev_conn_complete*
  store %struct.hci_ev_conn_complete* %13, %struct.hci_ev_conn_complete** %5, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %24, i32 0, i32 3
  %26 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %20, i64 %23, i32* %25)
  store %struct.hci_conn* %26, %struct.hci_conn** %6, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %28 = icmp ne %struct.hci_conn* %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %2
  %30 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCO_LINK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %230

36:                                               ; preds = %29
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load i64, i64* @ESCO_LINK, align 8
  %39 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %40 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %39, i32 0, i32 3
  %41 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %37, i64 %38, i32* %40)
  store %struct.hci_conn* %41, %struct.hci_conn** %6, align 8
  %42 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %43 = icmp ne %struct.hci_conn* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %230

45:                                               ; preds = %36
  %46 = load i64, i64* @SCO_LINK, align 8
  %47 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %2
  %50 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %51 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %167, label %54

54:                                               ; preds = %49
  %55 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %56 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @__le16_to_cpu(i32 %57)
  %59 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %60 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACL_LINK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %54
  %67 = load i32, i32* @BT_CONFIG, align 4
  %68 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %69 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %71 = call i32 @hci_conn_hold(%struct.hci_conn* %70)
  %72 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %73 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %66
  %77 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %78 = call i32 @hci_conn_ssp_enabled(%struct.hci_conn* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %76
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %83 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %82, i32 0, i32 3
  %84 = call i32 @hci_find_link_key(%struct.hci_dev* %81, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @HCI_PAIRING_TIMEOUT, align 4
  %88 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 8
  br label %94

90:                                               ; preds = %80, %76, %66
  %91 = load i32, i32* @HCI_DISCONN_TIMEOUT, align 4
  %92 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %93 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %86
  br label %99

95:                                               ; preds = %54
  %96 = load i32, i32* @BT_CONNECTED, align 4
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %98 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %94
  %100 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %101 = call i32 @hci_debugfs_create_conn(%struct.hci_conn* %100)
  %102 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %103 = call i32 @hci_conn_add_sysfs(%struct.hci_conn* %102)
  %104 = load i32, i32* @HCI_AUTH, align 4
  %105 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %106 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %105, i32 0, i32 1
  %107 = call i64 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load i32, i32* @HCI_CONN_AUTH, align 4
  %111 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %112 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %111, i32 0, i32 6
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  br label %114

114:                                              ; preds = %109, %99
  %115 = load i32, i32* @HCI_ENCRYPT, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 1
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %122 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %123 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %122, i32 0, i32 6
  %124 = call i32 @set_bit(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %120, %114
  %126 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %127 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ACL_LINK, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %133 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.hci_cp_read_remote_features, %struct.hci_cp_read_remote_features* %7, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = load i32, i32* @HCI_OP_READ_REMOTE_FEATURES, align 4
  %138 = call i32 @hci_send_cmd(%struct.hci_dev* %136, i32 %137, i32 8, %struct.hci_cp_read_remote_features* %7)
  %139 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %140 = call i32 @hci_req_update_scan(%struct.hci_dev* %139)
  br label %141

141:                                              ; preds = %131, %125
  %142 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %143 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %166, label %146

146:                                              ; preds = %141
  %147 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %148 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @BLUETOOTH_VER_2_0, align 8
  %151 = icmp slt i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %146
  %153 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %154 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.hci_cp_change_conn_ptype, %struct.hci_cp_change_conn_ptype* %8, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %158 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @cpu_to_le16(i32 %159)
  %161 = getelementptr inbounds %struct.hci_cp_change_conn_ptype, %struct.hci_cp_change_conn_ptype* %8, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %163 = load i32, i32* @HCI_OP_CHANGE_CONN_PTYPE, align 4
  %164 = bitcast %struct.hci_cp_change_conn_ptype* %8 to %struct.hci_cp_read_remote_features*
  %165 = call i32 @hci_send_cmd(%struct.hci_dev* %162, i32 %163, i32 8, %struct.hci_cp_read_remote_features* %164)
  br label %166

166:                                              ; preds = %152, %146, %141
  br label %191

167:                                              ; preds = %49
  %168 = load i32, i32* @BT_CLOSED, align 4
  %169 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %170 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %172 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ACL_LINK, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %167
  %177 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %178 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %179 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %178, i32 0, i32 2
  %180 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %181 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %184 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %187 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @mgmt_connect_failed(%struct.hci_dev* %177, i32* %179, i64 %182, i32 %185, i64 %188)
  br label %190

190:                                              ; preds = %176, %167
  br label %191

191:                                              ; preds = %190, %166
  %192 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %193 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @ACL_LINK, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %199 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %200 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @hci_sco_setup(%struct.hci_conn* %198, i64 %201)
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %205 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %203
  %209 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %210 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %211 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @hci_connect_cfm(%struct.hci_conn* %209, i64 %212)
  %214 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %215 = call i32 @hci_conn_del(%struct.hci_conn* %214)
  br label %229

216:                                              ; preds = %203
  %217 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %218 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @ACL_LINK, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %224 = load %struct.hci_ev_conn_complete*, %struct.hci_ev_conn_complete** %5, align 8
  %225 = getelementptr inbounds %struct.hci_ev_conn_complete, %struct.hci_ev_conn_complete* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @hci_connect_cfm(%struct.hci_conn* %223, i64 %226)
  br label %228

228:                                              ; preds = %222, %216
  br label %229

229:                                              ; preds = %228, %208
  br label %230

230:                                              ; preds = %229, %44, %35
  %231 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %232 = call i32 @hci_dev_unlock(%struct.hci_dev* %231)
  %233 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %234 = call i32 @hci_conn_check_pending(%struct.hci_dev* %233)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i64, i32*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_ssp_enabled(%struct.hci_conn*) #1

declare dso_local i32 @hci_find_link_key(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_debugfs_create_conn(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_add_sysfs(%struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_read_remote_features*) #1

declare dso_local i32 @hci_req_update_scan(%struct.hci_dev*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mgmt_connect_failed(%struct.hci_dev*, i32*, i64, i32, i64) #1

declare dso_local i32 @hci_sco_setup(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i64) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_check_pending(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
