; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_le.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.hci_cp_write_le_host_supported = type { i32, i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_LE = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_OP_SET_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@HCI_OP_WRITE_LE_HOST_SUPPORTED = common dso_local global i32 0, align 4
@le_enable_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_le(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.hci_cp_write_le_host_supported, align 4
  %12 = alloca %struct.mgmt_pending_cmd*, align 8
  %13 = alloca %struct.hci_request, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %19, %struct.mgmt_mode** %10, align 8
  %20 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %21 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = call i32 @lmp_le_capable(%struct.hci_dev* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %33 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %34 = call i32 @mgmt_cmd_status(%struct.sock* %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  br label %208

35:                                               ; preds = %4
  %36 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %42 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %51 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %52 = call i32 @mgmt_cmd_status(%struct.sock* %46, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %208

53:                                               ; preds = %40, %35
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %56 = call i32 @hci_dev_test_flag(%struct.hci_dev* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %53
  %59 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %60 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = call i32 @send_settings_rsp(%struct.sock* %64, i32 %65, %struct.hci_dev* %66)
  store i32 %67, i32* %5, align 4
  br label %208

68:                                               ; preds = %58
  %69 = load %struct.sock*, %struct.sock** %6, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %74 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %75 = call i32 @mgmt_cmd_status(%struct.sock* %69, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %208

76:                                               ; preds = %53
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = call i32 @hci_dev_lock(%struct.hci_dev* %77)
  %79 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %80 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %15, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = call i32 @lmp_host_le_capable(%struct.hci_dev* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %76
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = call i32 @hci_req_clear_adv_instance(%struct.hci_dev* %91, i32* null, i32* null, i32 0, i32 1)
  br label %93

93:                                               ; preds = %90, %76
  %94 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %95 = call i32 @hdev_is_powered(%struct.hci_dev* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %139

101:                                              ; preds = %97, %93
  store i32 0, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = load i32, i32* @HCI_LE_ENABLED, align 4
  %105 = call i32 @hci_dev_test_flag(%struct.hci_dev* %103, i32 %104)
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %109 = load i32, i32* @HCI_LE_ENABLED, align 4
  %110 = call i32 @hci_dev_change_flag(%struct.hci_dev* %108, i32 %109)
  store i32 1, i32* %17, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = load i32, i32* @HCI_ADVERTISING, align 4
  %117 = call i32 @hci_dev_test_flag(%struct.hci_dev* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %121 = load i32, i32* @HCI_ADVERTISING, align 4
  %122 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %120, i32 %121)
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %119, %114, %111
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = call i32 @send_settings_rsp(%struct.sock* %124, i32 %125, %struct.hci_dev* %126)
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %204

131:                                              ; preds = %123
  %132 = load i32, i32* %17, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = load %struct.sock*, %struct.sock** %6, align 8
  %137 = call i32 @new_settings(%struct.hci_dev* %135, %struct.sock* %136)
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %134, %131
  br label %204

139:                                              ; preds = %97
  %140 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %141 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %142 = call i64 @pending_find(i32 %140, %struct.hci_dev* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load i32, i32* @MGMT_OP_SET_ADVERTISING, align 4
  %146 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %147 = call i64 @pending_find(i32 %145, %struct.hci_dev* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144, %139
  %150 = load %struct.sock*, %struct.sock** %6, align 8
  %151 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %152 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %155 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %156 = call i32 @mgmt_cmd_status(%struct.sock* %150, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %14, align 4
  br label %204

157:                                              ; preds = %144
  %158 = load %struct.sock*, %struct.sock** %6, align 8
  %159 = load i32, i32* @MGMT_OP_SET_LE, align 4
  %160 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %158, i32 %159, %struct.hci_dev* %160, i8* %161, i32 %162)
  store %struct.mgmt_pending_cmd* %163, %struct.mgmt_pending_cmd** %12, align 8
  %164 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %165 = icmp ne %struct.mgmt_pending_cmd* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %157
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %14, align 4
  br label %204

169:                                              ; preds = %157
  %170 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %171 = call i32 @hci_req_init(%struct.hci_request* %13, %struct.hci_dev* %170)
  %172 = call i32 @memset(%struct.hci_cp_write_le_host_supported* %11, i32 0, i32 8)
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %15, align 4
  %177 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %11, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = getelementptr inbounds %struct.hci_cp_write_le_host_supported, %struct.hci_cp_write_le_host_supported* %11, i32 0, i32 1
  store i32 0, i32* %178, align 4
  br label %193

179:                                              ; preds = %169
  %180 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %181 = load i32, i32* @HCI_LE_ADV, align 4
  %182 = call i32 @hci_dev_test_flag(%struct.hci_dev* %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 @__hci_req_disable_advertising(%struct.hci_request* %13)
  br label %186

186:                                              ; preds = %184, %179
  %187 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %188 = call i64 @ext_adv_capable(%struct.hci_dev* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = call i32 @__hci_req_clear_ext_adv_sets(%struct.hci_request* %13)
  br label %192

192:                                              ; preds = %190, %186
  br label %193

193:                                              ; preds = %192, %175
  %194 = load i32, i32* @HCI_OP_WRITE_LE_HOST_SUPPORTED, align 4
  %195 = call i32 @hci_req_add(%struct.hci_request* %13, i32 %194, i32 8, %struct.hci_cp_write_le_host_supported* %11)
  %196 = load i32, i32* @le_enable_complete, align 4
  %197 = call i32 @hci_req_run(%struct.hci_request* %13, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %12, align 8
  %202 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %201)
  br label %203

203:                                              ; preds = %200, %193
  br label %204

204:                                              ; preds = %203, %166, %149, %138, %130
  %205 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %206 = call i32 @hci_dev_unlock(%struct.hci_dev* %205)
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %5, align 4
  br label %208

208:                                              ; preds = %204, %68, %63, %45, %27
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @lmp_host_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_req_clear_adv_instance(%struct.hci_dev*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.hci_cp_write_le_host_supported*, i32, i32) #1

declare dso_local i32 @__hci_req_disable_advertising(%struct.hci_request*) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

declare dso_local i32 @__hci_req_clear_ext_adv_sets(%struct.hci_request*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.hci_cp_write_le_host_supported*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
