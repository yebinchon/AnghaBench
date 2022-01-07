; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_sock.c_hci_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_mgmt_chan = type { i64, i64, i32 (%struct.sock*, %struct.hci_dev*)*, %struct.hci_mgmt_handler* }
%struct.hci_dev = type opaque
%struct.hci_mgmt_handler = type { i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)*, i32, i64 }
%struct.hci_dev.0 = type opaque
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.mgmt_hdr = type { i32, i32, i32 }
%struct.hci_dev.1 = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"got %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@HCI_CHANNEL_CONTROL = common dso_local global i64 0, align 8
@HCI_CHANNEL_MONITOR = common dso_local global i32 0, align 4
@HCI_SOCK_TRUSTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Unknown op %u\00", align 1
@MGMT_STATUS_UNKNOWN_COMMAND = common dso_local global i32 0, align 4
@HCI_MGMT_UNTRUSTED = common dso_local global i32 0, align 4
@MGMT_STATUS_PERMISSION_DENIED = common dso_local global i32 0, align 4
@MGMT_INDEX_NONE = common dso_local global i64 0, align 8
@MGMT_STATUS_INVALID_INDEX = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_USER_CHANNEL = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_MGMT_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_MGMT_NO_HDEV = common dso_local global i32 0, align 4
@HCI_MGMT_VAR_LEN = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_mgmt_chan*, %struct.sock*, %struct.msghdr*, i64)* @hci_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_mgmt_cmd(%struct.hci_mgmt_chan* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_mgmt_chan*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mgmt_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hci_dev.1*, align 8
  %17 = alloca %struct.hci_mgmt_handler*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sk_buff*, align 8
  store %struct.hci_mgmt_chan* %0, %struct.hci_mgmt_chan** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.hci_dev.1* null, %struct.hci_dev.1** %16, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %286

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kmalloc(i64 %30, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %286

38:                                               ; preds = %29
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @memcpy_from_msg(i8* %39, %struct.msghdr* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %20, align 4
  br label %276

47:                                               ; preds = %38
  %48 = load i8*, i8** %10, align 8
  %49 = bitcast i8* %48 to %struct.mgmt_hdr*
  store %struct.mgmt_hdr* %49, %struct.mgmt_hdr** %12, align 8
  %50 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %51 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @__le16_to_cpu(i32 %52)
  store i64 %53, i64* %13, align 8
  %54 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %55 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @__le16_to_cpu(i32 %56)
  store i64 %57, i64* %14, align 8
  %58 = load %struct.mgmt_hdr*, %struct.mgmt_hdr** %12, align 8
  %59 = getelementptr inbounds %struct.mgmt_hdr, %struct.mgmt_hdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @__le16_to_cpu(i32 %60)
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, 12
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %47
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %20, align 4
  br label %276

69:                                               ; preds = %47
  %70 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %71 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HCI_CHANNEL_CONTROL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.sock*, %struct.sock** %7, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr i8, i8* %80, i64 12
  %82 = call %struct.sk_buff* @create_monitor_ctrl_command(%struct.sock* %76, i64 %77, i64 %78, i64 %79, i8* %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %21, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load i32, i32* @HCI_CHANNEL_MONITOR, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %88 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %89 = call i32 @hci_send_to_channel(i32 %86, %struct.sk_buff* %87, i32 %88, i32* null)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  br label %92

92:                                               ; preds = %85, %75
  br label %93

93:                                               ; preds = %92, %69
  %94 = load i64, i64* %13, align 8
  %95 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %96 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp uge i64 %94, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %93
  %100 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %101 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %100, i32 0, i32 3
  %102 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %102, i64 %103
  %105 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %104, i32 0, i32 0
  %106 = load i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)*, i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)** %105, align 8
  %107 = icmp eq i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %99, %93
  %109 = load i64, i64* %13, align 8
  %110 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* @MGMT_STATUS_UNKNOWN_COMMAND, align 4
  %115 = call i32 @mgmt_cmd_status(%struct.sock* %111, i64 %112, i64 %113, i32 %114)
  store i32 %115, i32* %20, align 4
  br label %276

116:                                              ; preds = %99
  %117 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %118 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %117, i32 0, i32 3
  %119 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %119, i64 %120
  store %struct.hci_mgmt_handler* %121, %struct.hci_mgmt_handler** %17, align 8
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = load i32, i32* @HCI_SOCK_TRUSTED, align 4
  %124 = call i32 @hci_sock_test_flag(%struct.sock* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %116
  %127 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %128 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HCI_MGMT_UNTRUSTED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %126
  %134 = load %struct.sock*, %struct.sock** %7, align 8
  %135 = load i64, i64* %14, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i32, i32* @MGMT_STATUS_PERMISSION_DENIED, align 4
  %138 = call i32 @mgmt_cmd_status(%struct.sock* %134, i64 %135, i64 %136, i32 %137)
  store i32 %138, i32* %20, align 4
  br label %276

139:                                              ; preds = %126, %116
  %140 = load i64, i64* %14, align 8
  %141 = load i64, i64* @MGMT_INDEX_NONE, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %194

143:                                              ; preds = %139
  %144 = load i64, i64* %14, align 8
  %145 = call %struct.hci_dev.1* @hci_dev_get(i64 %144)
  store %struct.hci_dev.1* %145, %struct.hci_dev.1** %16, align 8
  %146 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %147 = icmp ne %struct.hci_dev.1* %146, null
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = load %struct.sock*, %struct.sock** %7, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i32, i32* @MGMT_STATUS_INVALID_INDEX, align 4
  %153 = call i32 @mgmt_cmd_status(%struct.sock* %149, i64 %150, i64 %151, i32 %152)
  store i32 %153, i32* %20, align 4
  br label %276

154:                                              ; preds = %143
  %155 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %156 = load i32, i32* @HCI_SETUP, align 4
  %157 = call i64 @hci_dev_test_flag(%struct.hci_dev.1* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %161 = load i32, i32* @HCI_CONFIG, align 4
  %162 = call i64 @hci_dev_test_flag(%struct.hci_dev.1* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %166 = load i32, i32* @HCI_USER_CHANNEL, align 4
  %167 = call i64 @hci_dev_test_flag(%struct.hci_dev.1* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164, %159, %154
  %170 = load %struct.sock*, %struct.sock** %7, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* %13, align 8
  %173 = load i32, i32* @MGMT_STATUS_INVALID_INDEX, align 4
  %174 = call i32 @mgmt_cmd_status(%struct.sock* %170, i64 %171, i64 %172, i32 %173)
  store i32 %174, i32* %20, align 4
  br label %276

175:                                              ; preds = %164
  %176 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %177 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %178 = call i64 @hci_dev_test_flag(%struct.hci_dev.1* %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %193

180:                                              ; preds = %175
  %181 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %182 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @HCI_MGMT_UNCONFIGURED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %180
  %188 = load %struct.sock*, %struct.sock** %7, align 8
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i32, i32* @MGMT_STATUS_INVALID_INDEX, align 4
  %192 = call i32 @mgmt_cmd_status(%struct.sock* %188, i64 %189, i64 %190, i32 %191)
  store i32 %192, i32* %20, align 4
  br label %276

193:                                              ; preds = %180, %175
  br label %194

194:                                              ; preds = %193, %139
  %195 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %196 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @HCI_MGMT_NO_HDEV, align 4
  %199 = and i32 %197, %198
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %202 = icmp ne %struct.hci_dev.1* %201, null
  %203 = xor i1 %202, true
  %204 = zext i1 %203 to i32
  %205 = icmp ne i32 %200, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %194
  %207 = load %struct.sock*, %struct.sock** %7, align 8
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %13, align 8
  %210 = load i32, i32* @MGMT_STATUS_INVALID_INDEX, align 4
  %211 = call i32 @mgmt_cmd_status(%struct.sock* %207, i64 %208, i64 %209, i32 %210)
  store i32 %211, i32* %20, align 4
  br label %276

212:                                              ; preds = %194
  %213 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %214 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @HCI_MGMT_VAR_LEN, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %212
  %221 = load i64, i64* %15, align 8
  %222 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %223 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ult i64 %221, %224
  br i1 %225, label %235, label %226

226:                                              ; preds = %220, %212
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %241, label %229

229:                                              ; preds = %226
  %230 = load i64, i64* %15, align 8
  %231 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %232 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %230, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %229, %220
  %236 = load %struct.sock*, %struct.sock** %7, align 8
  %237 = load i64, i64* %14, align 8
  %238 = load i64, i64* %13, align 8
  %239 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %240 = call i32 @mgmt_cmd_status(%struct.sock* %236, i64 %237, i64 %238, i32 %239)
  store i32 %240, i32* %20, align 4
  br label %276

241:                                              ; preds = %229, %226
  %242 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %243 = icmp ne %struct.hci_dev.1* %242, null
  br i1 %243, label %244, label %257

244:                                              ; preds = %241
  %245 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %246 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %245, i32 0, i32 2
  %247 = load i32 (%struct.sock*, %struct.hci_dev*)*, i32 (%struct.sock*, %struct.hci_dev*)** %246, align 8
  %248 = icmp ne i32 (%struct.sock*, %struct.hci_dev*)* %247, null
  br i1 %248, label %249, label %257

249:                                              ; preds = %244
  %250 = load %struct.hci_mgmt_chan*, %struct.hci_mgmt_chan** %6, align 8
  %251 = getelementptr inbounds %struct.hci_mgmt_chan, %struct.hci_mgmt_chan* %250, i32 0, i32 2
  %252 = load i32 (%struct.sock*, %struct.hci_dev*)*, i32 (%struct.sock*, %struct.hci_dev*)** %251, align 8
  %253 = load %struct.sock*, %struct.sock** %7, align 8
  %254 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %255 = bitcast %struct.hci_dev.1* %254 to %struct.hci_dev*
  %256 = call i32 %252(%struct.sock* %253, %struct.hci_dev* %255)
  br label %257

257:                                              ; preds = %249, %244, %241
  %258 = load i8*, i8** %10, align 8
  %259 = getelementptr i8, i8* %258, i64 12
  %260 = bitcast i8* %259 to i32*
  store i32* %260, i32** %11, align 8
  %261 = load %struct.hci_mgmt_handler*, %struct.hci_mgmt_handler** %17, align 8
  %262 = getelementptr inbounds %struct.hci_mgmt_handler, %struct.hci_mgmt_handler* %261, i32 0, i32 0
  %263 = load i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)*, i32 (%struct.sock*, %struct.hci_dev.0*, i32*, i64)** %262, align 8
  %264 = load %struct.sock*, %struct.sock** %7, align 8
  %265 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %266 = bitcast %struct.hci_dev.1* %265 to %struct.hci_dev.0*
  %267 = load i32*, i32** %11, align 8
  %268 = load i64, i64* %15, align 8
  %269 = call i32 %263(%struct.sock* %264, %struct.hci_dev.0* %266, i32* %267, i64 %268)
  store i32 %269, i32* %20, align 4
  %270 = load i32, i32* %20, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %257
  br label %276

273:                                              ; preds = %257
  %274 = load i64, i64* %9, align 8
  %275 = trunc i64 %274 to i32
  store i32 %275, i32* %20, align 4
  br label %276

276:                                              ; preds = %273, %272, %235, %206, %187, %169, %148, %133, %108, %66, %44
  %277 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %278 = icmp ne %struct.hci_dev.1* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load %struct.hci_dev.1*, %struct.hci_dev.1** %16, align 8
  %281 = call i32 @hci_dev_put(%struct.hci_dev.1* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i8*, i8** %10, align 8
  %284 = call i32 @kfree(i8* %283)
  %285 = load i32, i32* %20, align 4
  store i32 %285, i32* %5, align 4
  br label %286

286:                                              ; preds = %282, %35, %26
  %287 = load i32, i32* %5, align 4
  ret i32 %287
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @memcpy_from_msg(i8*, %struct.msghdr*, i64) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @create_monitor_ctrl_command(%struct.sock*, i64, i64, i64, i8*) #1

declare dso_local i32 @hci_send_to_channel(i32, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i64, i64, i32) #1

declare dso_local i32 @hci_sock_test_flag(%struct.sock*, i32) #1

declare dso_local %struct.hci_dev.1* @hci_dev_get(i64) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev.1*, i32) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev.1*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
