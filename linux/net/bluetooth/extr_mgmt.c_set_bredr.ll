; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bredr.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bredr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_BREDR = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@HCI_LINK_SECURITY = common dso_local global i32 0, align 4
@HCI_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_HS_ENABLED = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@HCI_SC_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@set_bredr_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_bredr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bredr(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %15, %struct.mgmt_mode** %10, align 8
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = call i32 @lmp_bredr_capable(%struct.hci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = call i32 @lmp_le_capable(%struct.hci_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %33 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %34 = call i32 @mgmt_cmd_status(%struct.sock* %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %208

35:                                               ; preds = %23
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = load i32, i32* @HCI_LE_ENABLED, align 4
  %38 = call i32 @hci_dev_test_flag(%struct.hci_dev* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %46 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %47 = call i32 @mgmt_cmd_status(%struct.sock* %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %208

48:                                               ; preds = %35
  %49 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %50 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %55 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %64 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %65 = call i32 @mgmt_cmd_status(%struct.sock* %59, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %5, align 4
  br label %208

66:                                               ; preds = %53, %48
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = call i32 @hci_dev_lock(%struct.hci_dev* %67)
  %69 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %70 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %73 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %74 = call i32 @hci_dev_test_flag(%struct.hci_dev* %72, i32 %73)
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %79 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %80 = call i32 @send_settings_rsp(%struct.sock* %77, i32 %78, %struct.hci_dev* %79)
  store i32 %80, i32* %13, align 4
  br label %204

81:                                               ; preds = %66
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = call i32 @hdev_is_powered(%struct.hci_dev* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %121, label %85

85:                                               ; preds = %81
  %86 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %87 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %85
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %93 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %91, i32 %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %95 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %96 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %94, i32 %95)
  %97 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %98 = load i32, i32* @HCI_LINK_SECURITY, align 4
  %99 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %97, i32 %98)
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = load i32, i32* @HCI_FAST_CONNECTABLE, align 4
  %102 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %100, i32 %101)
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = load i32, i32* @HCI_HS_ENABLED, align 4
  %105 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %85
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %109 = call i32 @hci_dev_change_flag(%struct.hci_dev* %107, i32 %108)
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %112 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %113 = call i32 @send_settings_rsp(%struct.sock* %110, i32 %111, %struct.hci_dev* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %204

117:                                              ; preds = %106
  %118 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %119 = load %struct.sock*, %struct.sock** %6, align 8
  %120 = call i32 @new_settings(%struct.hci_dev* %118, %struct.sock* %119)
  store i32 %120, i32* %13, align 4
  br label %204

121:                                              ; preds = %81
  %122 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %123 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load %struct.sock*, %struct.sock** %6, align 8
  %128 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %129 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %132 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %133 = call i32 @mgmt_cmd_status(%struct.sock* %127, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %13, align 4
  br label %204

134:                                              ; preds = %121
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %137 = call i32 @hci_dev_test_flag(%struct.hci_dev* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %134
  %140 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %141 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %140, i32 0, i32 2
  %142 = load i32, i32* @BDADDR_ANY, align 4
  %143 = call i64 @bacmp(i32* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = load i32, i32* @HCI_SC_ENABLED, align 4
  %148 = call i32 @hci_dev_test_flag(%struct.hci_dev* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %145, %139
  %151 = load %struct.sock*, %struct.sock** %6, align 8
  %152 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %153 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %156 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %157 = call i32 @mgmt_cmd_status(%struct.sock* %151, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %13, align 4
  br label %204

158:                                              ; preds = %145, %134
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %161 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %162 = call i64 @pending_find(i32 %160, %struct.hci_dev* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load %struct.sock*, %struct.sock** %6, align 8
  %166 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %167 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %170 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %171 = call i32 @mgmt_cmd_status(%struct.sock* %165, i32 %168, i32 %169, i32 %170)
  store i32 %171, i32* %13, align 4
  br label %204

172:                                              ; preds = %159
  %173 = load %struct.sock*, %struct.sock** %6, align 8
  %174 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %175 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %173, i32 %174, %struct.hci_dev* %175, i8* %176, i32 %177)
  store %struct.mgmt_pending_cmd* %178, %struct.mgmt_pending_cmd** %11, align 8
  %179 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %180 = icmp ne %struct.mgmt_pending_cmd* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %172
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %13, align 4
  br label %204

184:                                              ; preds = %172
  %185 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %186 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %187 = call i32 @hci_dev_set_flag(%struct.hci_dev* %185, i32 %186)
  %188 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %189 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %188)
  %190 = call i32 @__hci_req_write_fast_connectable(%struct.hci_request* %12, i32 0)
  %191 = call i32 @__hci_req_update_scan(%struct.hci_request* %12)
  %192 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %193 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @__hci_req_update_adv_data(%struct.hci_request* %12, i32 %194)
  %196 = load i32, i32* @set_bredr_complete, align 4
  %197 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %196)
  store i32 %197, i32* %13, align 4
  %198 = load i32, i32* %13, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %184
  %201 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %202 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %201)
  br label %203

203:                                              ; preds = %200, %184
  br label %204

204:                                              ; preds = %203, %181, %164, %150, %126, %117, %116, %76
  %205 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %206 = call i32 @hci_dev_unlock(%struct.hci_dev* %205)
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %204, %58, %40, %27
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @bacmp(i32*, i32) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @__hci_req_write_fast_connectable(%struct.hci_request*, i32) #1

declare dso_local i32 @__hci_req_update_scan(%struct.hci_request*) #1

declare dso_local i32 @__hci_req_update_adv_data(%struct.hci_request*, i32) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
