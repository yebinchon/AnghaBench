; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_conn_request_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_conn_request_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_conn_request = type { i64, i32, i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_conn = type { i32, i8*, i32 }
%struct.hci_cp_accept_conn_req = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.hci_cp_accept_sync_conn_req = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%s bdaddr %pMR type 0x%x\00", align 1
@HCI_LM_ACCEPT = common dso_local global i32 0, align 4
@BDADDR_BREDR = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no memory for new connection\00", align 1
@ACL_LINK = common dso_local global i64 0, align 8
@HCI_PROTO_DEFER = common dso_local global i32 0, align 4
@BT_CONNECT = common dso_local global i8* null, align 8
@HCI_LM_MASTER = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_CONN_REQ = common dso_local global i32 0, align 4
@HCI_OP_ACCEPT_SYNC_CONN_REQ = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_conn_request_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_request_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_conn_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inquiry_entry*, align 8
  %8 = alloca %struct.hci_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hci_cp_accept_conn_req, align 8
  %11 = alloca %struct.hci_cp_accept_sync_conn_req, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.hci_ev_conn_request*
  store %struct.hci_ev_conn_request* %16, %struct.hci_ev_conn_request** %5, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %23, i32 0, i32 1
  %25 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %26 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i64 %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %30, i32 0, i32 1
  %32 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @hci_proto_connect_ind(%struct.hci_dev* %29, i32* %31, i64 %34, i32* %9)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @HCI_LM_ACCEPT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %2
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %45 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %44, i32 0, i32 1
  %46 = call i32 @hci_reject_conn(%struct.hci_dev* %43, i32* %45)
  br label %217

47:                                               ; preds = %2
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 3
  %50 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %51 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %50, i32 0, i32 1
  %52 = load i32, i32* @BDADDR_BREDR, align 4
  %53 = call i64 @hci_bdaddr_list_lookup(i32* %49, i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %58 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %57, i32 0, i32 1
  %59 = call i32 @hci_reject_conn(%struct.hci_dev* %56, i32* %58)
  br label %217

60:                                               ; preds = %47
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @HCI_MGMT, align 4
  %63 = call i64 @hci_dev_test_flag(%struct.hci_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = load i32, i32* @HCI_CONNECTABLE, align 4
  %68 = call i64 @hci_dev_test_flag(%struct.hci_dev* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 2
  %73 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %74 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %73, i32 0, i32 1
  %75 = load i32, i32* @BDADDR_BREDR, align 4
  %76 = call i64 @hci_bdaddr_list_lookup(i32* %72, i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %70
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %81 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %80, i32 0, i32 1
  %82 = call i32 @hci_reject_conn(%struct.hci_dev* %79, i32* %81)
  br label %217

83:                                               ; preds = %70, %65, %60
  %84 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %85 = call i32 @hci_dev_lock(%struct.hci_dev* %84)
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %88 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %87, i32 0, i32 1
  %89 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %86, i32* %88)
  store %struct.inquiry_entry* %89, %struct.inquiry_entry** %7, align 8
  %90 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %91 = icmp ne %struct.inquiry_entry* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %83
  %93 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %94 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %98 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i32 %96, i32 %99, i32 3)
  br label %101

101:                                              ; preds = %92, %83
  %102 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %103 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %104 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %107 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %106, i32 0, i32 1
  %108 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %102, i64 %105, i32* %107)
  store %struct.hci_conn* %108, %struct.hci_conn** %8, align 8
  %109 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %110 = icmp ne %struct.hci_conn* %109, null
  br i1 %110, label %128, label %111

111:                                              ; preds = %101
  %112 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %113 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %114 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %117 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %116, i32 0, i32 1
  %118 = load i32, i32* @HCI_ROLE_SLAVE, align 4
  %119 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %112, i64 %115, i32* %117, i32 %118)
  store %struct.hci_conn* %119, %struct.hci_conn** %8, align 8
  %120 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %121 = icmp ne %struct.hci_conn* %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %111
  %123 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %124 = call i32 @bt_dev_err(%struct.hci_dev* %123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %126 = call i32 @hci_dev_unlock(%struct.hci_dev* %125)
  br label %217

127:                                              ; preds = %111
  br label %128

128:                                              ; preds = %127, %101
  %129 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %130 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %133 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i32 %131, i32 %134, i32 3)
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = call i32 @hci_dev_unlock(%struct.hci_dev* %136)
  %138 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %139 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @ACL_LINK, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %152, label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @HCI_PROTO_DEFER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %177, label %148

148:                                              ; preds = %143
  %149 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %150 = call i32 @lmp_esco_capable(%struct.hci_dev* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %177, label %152

152:                                              ; preds = %148, %128
  %153 = load i8*, i8** @BT_CONNECT, align 8
  %154 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %155 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %10, i32 0, i32 7
  %157 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %158 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %157, i32 0, i32 1
  %159 = call i32 @bacpy(i32* %156, i32* %158)
  %160 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %161 = call i64 @lmp_rswitch_capable(%struct.hci_dev* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %152
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @HCI_LM_MASTER, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %10, i32 0, i32 0
  store i32 0, i32* %169, align 8
  br label %172

170:                                              ; preds = %163, %152
  %171 = getelementptr inbounds %struct.hci_cp_accept_conn_req, %struct.hci_cp_accept_conn_req* %10, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %170, %168
  %173 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %174 = load i32, i32* @HCI_OP_ACCEPT_CONN_REQ, align 4
  %175 = bitcast %struct.hci_cp_accept_conn_req* %10 to %struct.hci_cp_accept_sync_conn_req*
  %176 = call i32 @hci_send_cmd(%struct.hci_dev* %173, i32 %174, i32 56, %struct.hci_cp_accept_sync_conn_req* %175)
  br label %217

177:                                              ; preds = %148, %143
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @HCI_PROTO_DEFER, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %210, label %182

182:                                              ; preds = %177
  %183 = load i8*, i8** @BT_CONNECT, align 8
  %184 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %185 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 7
  %187 = load %struct.hci_ev_conn_request*, %struct.hci_ev_conn_request** %5, align 8
  %188 = getelementptr inbounds %struct.hci_ev_conn_request, %struct.hci_ev_conn_request* %187, i32 0, i32 1
  %189 = call i32 @bacpy(i32* %186, i32* %188)
  %190 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %191 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @cpu_to_le16(i32 %192)
  %194 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 6
  store i8* %193, i8** %194, align 8
  %195 = call i8* @cpu_to_le32(i32 8000)
  %196 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 5
  store i8* %195, i8** %196, align 8
  %197 = call i8* @cpu_to_le32(i32 8000)
  %198 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 4
  store i8* %197, i8** %198, align 8
  %199 = call i8* @cpu_to_le16(i32 65535)
  %200 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 3
  store i8* %199, i8** %200, align 8
  %201 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %202 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 2
  store i8* %204, i8** %205, align 8
  %206 = getelementptr inbounds %struct.hci_cp_accept_sync_conn_req, %struct.hci_cp_accept_sync_conn_req* %11, i32 0, i32 1
  store i32 255, i32* %206, align 4
  %207 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %208 = load i32, i32* @HCI_OP_ACCEPT_SYNC_CONN_REQ, align 4
  %209 = call i32 @hci_send_cmd(%struct.hci_dev* %207, i32 %208, i32 56, %struct.hci_cp_accept_sync_conn_req* %11)
  br label %216

210:                                              ; preds = %177
  %211 = load i8*, i8** @BT_CONNECT2, align 8
  %212 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %213 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %212, i32 0, i32 1
  store i8* %211, i8** %213, align 8
  %214 = load %struct.hci_conn*, %struct.hci_conn** %8, align 8
  %215 = call i32 @hci_connect_cfm(%struct.hci_conn* %214, i32 0)
  br label %216

216:                                              ; preds = %210, %182
  br label %217

217:                                              ; preds = %42, %55, %78, %122, %216, %172
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32*, i64) #1

declare dso_local i32 @hci_proto_connect_ind(%struct.hci_dev*, i32*, i64, i32*) #1

declare dso_local i32 @hci_reject_conn(%struct.hci_dev*, i32*) #1

declare dso_local i64 @hci_bdaddr_list_lookup(i32*, i32*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i64, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i64, i32*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @lmp_esco_capable(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i64 @lmp_rswitch_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_accept_sync_conn_req*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
