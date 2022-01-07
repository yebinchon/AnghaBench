; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_le_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_le_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_conn_params = type { %struct.hci_conn*, i32 }
%struct.hci_conn = type { i64, i64, i32, i32, i8*, i64, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32 }
%struct.smp_irk = type { i64, i32 }
%struct.hci_cp_le_read_remote_features = type { i32 }

@HCI_LE_ADV = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no memory for new connection\00", align 1
@HCI_PRIVACY = common dso_local global i32 0, align 4
@ADDR_LE_DEV_RANDOM = common dso_local global i64 0, align 8
@ADDR_LE_DEV_PUBLIC = common dso_local global i64 0, align 8
@BDADDR_LE_PUBLIC = common dso_local global i8* null, align 8
@BDADDR_LE_RANDOM = common dso_local global i8* null, align 8
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@BT_CONFIG = common dso_local global i32 0, align 4
@HCI_LE_SLAVE_FEATURES = common dso_local global i32 0, align 4
@HCI_OP_LE_READ_REMOTE_FEATURES = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*)* @le_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_conn_complete_evt(%struct.hci_dev* %0, i8* %1, i32* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8) #0 {
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.hci_conn_params*, align 8
  %20 = alloca %struct.hci_conn*, align 8
  %21 = alloca %struct.smp_irk*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.hci_cp_le_read_remote_features, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %25 = call i32 @hci_dev_lock(%struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %27 = load i32, i32* @HCI_LE_ADV, align 4
  %28 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %26, i32 %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %30 = call %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev* %29)
  store %struct.hci_conn* %30, %struct.hci_conn** %20, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %32 = icmp ne %struct.hci_conn* %31, null
  br i1 %32, label %85, label %33

33:                                               ; preds = %9
  %34 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %35 = load i32, i32* @LE_LINK, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %34, i32 %35, i32* %36, i8* %37)
  store %struct.hci_conn* %38, %struct.hci_conn** %20, align 8
  %39 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %40 = icmp ne %struct.hci_conn* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %43 = call i32 @bt_dev_err(%struct.hci_dev* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %285

44:                                               ; preds = %33
  %45 = load i8*, i8** %13, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %48 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %44
  %54 = load i8*, i8** %13, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %59 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %58, i32 0, i32 15
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @bacpy(i32* %59, i32* %60)
  %62 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %63 = load i32, i32* @HCI_PRIVACY, align 4
  %64 = call i64 @hci_dev_test_flag(%struct.hci_dev* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %53
  %67 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 14
  store i8* %68, i8** %70, align 8
  %71 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %72 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %71, i32 0, i32 13
  %73 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 8
  %75 = call i32 @bacpy(i32* %72, i32* %74)
  br label %83

76:                                               ; preds = %53
  %77 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %78 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 13
  %80 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 14
  %82 = call i32 @hci_copy_identity_address(%struct.hci_dev* %77, i32* %79, i8** %81)
  br label %83

83:                                               ; preds = %76, %66
  br label %84

84:                                               ; preds = %83, %44
  br label %89

85:                                               ; preds = %9
  %86 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %87 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %86, i32 0, i32 16
  %88 = call i32 @cancel_delayed_work(i32* %87)
  br label %89

89:                                               ; preds = %85, %84
  %90 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %91 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %140, label %94

94:                                               ; preds = %89
  %95 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %99 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %94
  %106 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %107 = call i32 @ext_adv_capable(%struct.hci_dev* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %111 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %110, i32 0, i32 15
  %112 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 7
  %114 = call i32 @bacpy(i32* %111, i32* %113)
  br label %115

115:                                              ; preds = %109, %105
  br label %122

116:                                              ; preds = %94
  %117 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %118 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %117, i32 0, i32 15
  %119 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 6
  %121 = call i32 @bacpy(i32* %118, i32* %120)
  br label %122

122:                                              ; preds = %116, %115
  %123 = load i8*, i8** %13, align 8
  %124 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %125 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %124, i32 0, i32 14
  store i8* %123, i8** %125, align 8
  %126 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %127 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %126, i32 0, i32 13
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @bacpy(i32* %127, i32* %128)
  %130 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %131 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %134 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %133, i32 0, i32 12
  store i32 %132, i32* %134, align 4
  %135 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %136 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %139 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %138, i32 0, i32 11
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %122, %89
  %141 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %142 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %143 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %142, i32 0, i32 2
  %144 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %145 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call %struct.smp_irk* @hci_get_irk(%struct.hci_dev* %141, i32* %143, i64 %146)
  store %struct.smp_irk* %147, %struct.smp_irk** %21, align 8
  %148 = load %struct.smp_irk*, %struct.smp_irk** %21, align 8
  %149 = icmp ne %struct.smp_irk* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %140
  %151 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %152 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %151, i32 0, i32 2
  %153 = load %struct.smp_irk*, %struct.smp_irk** %21, align 8
  %154 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %153, i32 0, i32 1
  %155 = call i32 @bacpy(i32* %152, i32* %154)
  %156 = load %struct.smp_irk*, %struct.smp_irk** %21, align 8
  %157 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %160 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %150, %140
  %162 = load i8*, i8** %11, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @hci_le_conn_failed(%struct.hci_conn* %165, i8* %166)
  br label %285

168:                                              ; preds = %161
  %169 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %170 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @ADDR_LE_DEV_PUBLIC, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i8*, i8** @BDADDR_LE_PUBLIC, align 8
  store i8* %175, i8** %22, align 8
  br label %178

176:                                              ; preds = %168
  %177 = load i8*, i8** @BDADDR_LE_RANDOM, align 8
  store i8* %177, i8** %22, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %180 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %179, i32 0, i32 3
  %181 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %182 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %181, i32 0, i32 2
  %183 = load i8*, i8** %22, align 8
  %184 = call i64 @hci_bdaddr_list_lookup(i32* %180, i32* %182, i8* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %188 = call i32 @hci_conn_drop(%struct.hci_conn* %187)
  br label %285

189:                                              ; preds = %178
  %190 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %191 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %192 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %191, i32 0, i32 10
  %193 = call i32 @test_and_set_bit(i32 %190, i32* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %189
  %196 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %197 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %198 = call i32 @mgmt_device_connected(%struct.hci_dev* %196, %struct.hci_conn* %197, i32 0, i32* null, i32 0)
  br label %199

199:                                              ; preds = %195, %189
  %200 = load i32, i32* @BT_SECURITY_LOW, align 4
  %201 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %202 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %201, i32 0, i32 9
  store i32 %200, i32* %202, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %205 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* @BT_CONFIG, align 4
  %207 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %208 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 4
  %209 = load i8*, i8** %16, align 8
  %210 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %211 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %210, i32 0, i32 8
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** %17, align 8
  %213 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %214 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %213, i32 0, i32 7
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** %18, align 8
  %216 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %217 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %216, i32 0, i32 6
  store i8* %215, i8** %217, align 8
  %218 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %219 = call i32 @hci_debugfs_create_conn(%struct.hci_conn* %218)
  %220 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %221 = call i32 @hci_conn_add_sysfs(%struct.hci_conn* %220)
  %222 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %223 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %199
  %227 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %228 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @HCI_LE_SLAVE_FEATURES, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %226, %199
  %236 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %237 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %236, i32 0, i32 4
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @__cpu_to_le16(i8* %238)
  %240 = getelementptr inbounds %struct.hci_cp_le_read_remote_features, %struct.hci_cp_le_read_remote_features* %23, i32 0, i32 0
  store i32 %239, i32* %240, align 4
  %241 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %242 = load i32, i32* @HCI_OP_LE_READ_REMOTE_FEATURES, align 4
  %243 = call i32 @hci_send_cmd(%struct.hci_dev* %241, i32 %242, i32 4, %struct.hci_cp_le_read_remote_features* %23)
  %244 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %245 = call i32 @hci_conn_hold(%struct.hci_conn* %244)
  br label %253

246:                                              ; preds = %226
  %247 = load i32, i32* @BT_CONNECTED, align 4
  %248 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %249 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  %250 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = call i32 @hci_connect_cfm(%struct.hci_conn* %250, i8* %251)
  br label %253

253:                                              ; preds = %246, %235
  %254 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %255 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %254, i32 0, i32 2
  %256 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %257 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %256, i32 0, i32 2
  %258 = load %struct.hci_conn*, %struct.hci_conn** %20, align 8
  %259 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = call %struct.hci_conn_params* @hci_pend_le_action_lookup(i32* %255, i32* %257, i64 %260)
  store %struct.hci_conn_params* %261, %struct.hci_conn_params** %19, align 8
  %262 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %263 = icmp ne %struct.hci_conn_params* %262, null
  br i1 %263, label %264, label %284

264:                                              ; preds = %253
  %265 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %266 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %265, i32 0, i32 1
  %267 = call i32 @list_del_init(i32* %266)
  %268 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %269 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %268, i32 0, i32 0
  %270 = load %struct.hci_conn*, %struct.hci_conn** %269, align 8
  %271 = icmp ne %struct.hci_conn* %270, null
  br i1 %271, label %272, label %283

272:                                              ; preds = %264
  %273 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %274 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %273, i32 0, i32 0
  %275 = load %struct.hci_conn*, %struct.hci_conn** %274, align 8
  %276 = call i32 @hci_conn_drop(%struct.hci_conn* %275)
  %277 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %278 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %277, i32 0, i32 0
  %279 = load %struct.hci_conn*, %struct.hci_conn** %278, align 8
  %280 = call i32 @hci_conn_put(%struct.hci_conn* %279)
  %281 = load %struct.hci_conn_params*, %struct.hci_conn_params** %19, align 8
  %282 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %281, i32 0, i32 0
  store %struct.hci_conn* null, %struct.hci_conn** %282, align 8
  br label %283

283:                                              ; preds = %272, %264
  br label %284

284:                                              ; preds = %283, %253
  br label %285

285:                                              ; preds = %284, %186, %164, %41
  %286 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %287 = call i32 @hci_update_background_scan(%struct.hci_dev* %286)
  %288 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %289 = call i32 @hci_dev_unlock(%struct.hci_dev* %288)
  ret void
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.hci_conn* @hci_lookup_le_connect(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i8*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_copy_identity_address(%struct.hci_dev*, i32*, i8**) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local %struct.smp_irk* @hci_get_irk(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32 @hci_le_conn_failed(%struct.hci_conn*, i8*) #1

declare dso_local i64 @hci_bdaddr_list_lookup(i32*, i32*, i8*) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_device_connected(%struct.hci_dev*, %struct.hci_conn*, i32, i32*, i32) #1

declare dso_local i32 @hci_debugfs_create_conn(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_add_sysfs(%struct.hci_conn*) #1

declare dso_local i32 @__cpu_to_le16(i8*) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, %struct.hci_cp_le_read_remote_features*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i8*) #1

declare dso_local %struct.hci_conn_params* @hci_pend_le_action_lookup(i32*, i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
