; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_secure_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_secure_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }
%struct.hci_request = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@MGMT_OP_SET_SECURE_CONN = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_SC_ENABLED = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_OP_WRITE_SC_SUPPORT = common dso_local global i32 0, align 4
@sc_enable_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_secure_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_secure_conn(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca %struct.hci_request, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %17, %struct.mgmt_mode** %10, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %23 = call i64 @lmp_sc_capable(%struct.hci_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %27 = load i32, i32* @HCI_LE_ENABLED, align 4
  %28 = call i32 @hci_dev_test_flag(%struct.hci_dev* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %36 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %37 = call i32 @mgmt_cmd_status(%struct.sock* %31, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %216

38:                                               ; preds = %25, %4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %41 = call i32 @hci_dev_test_flag(%struct.hci_dev* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = call i64 @lmp_sc_capable(%struct.hci_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %49 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %50 = call i32 @hci_dev_test_flag(%struct.hci_dev* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %58 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %59 = call i32 @mgmt_cmd_status(%struct.sock* %53, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %216

60:                                               ; preds = %47, %43, %38
  %61 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %62 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %67 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %72 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %81 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %82 = call i32 @mgmt_cmd_status(%struct.sock* %76, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %216

83:                                               ; preds = %70, %65, %60
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = call i32 @hci_dev_lock(%struct.hci_dev* %84)
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = call i32 @hdev_is_powered(%struct.hci_dev* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = call i64 @lmp_sc_capable(%struct.hci_dev* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %95 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %96 = call i32 @hci_dev_test_flag(%struct.hci_dev* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %146, label %98

98:                                               ; preds = %93, %89, %83
  %99 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %100 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %105 = load i32, i32* @HCI_SC_ENABLED, align 4
  %106 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %15, align 4
  %110 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %111 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = load i32, i32* @HCI_SC_ONLY, align 4
  %117 = call i32 @hci_dev_set_flag(%struct.hci_dev* %115, i32 %116)
  br label %122

118:                                              ; preds = %103
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = load i32, i32* @HCI_SC_ONLY, align 4
  %121 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %130

123:                                              ; preds = %98
  %124 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %125 = load i32, i32* @HCI_SC_ENABLED, align 4
  %126 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %124, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %128 = load i32, i32* @HCI_SC_ONLY, align 4
  %129 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %122
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %133 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %134 = call i32 @send_settings_rsp(%struct.sock* %131, i32 %132, %struct.hci_dev* %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %212

138:                                              ; preds = %130
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = call i32 @new_settings(%struct.hci_dev* %142, %struct.sock* %143)
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %141, %138
  br label %212

146:                                              ; preds = %93
  %147 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %148 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %149 = call i64 @pending_find(i32 %147, %struct.hci_dev* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.sock*, %struct.sock** %6, align 8
  %153 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %154 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %157 = load i32, i32* @MGMT_STATUS_BUSY, align 4
  %158 = call i32 @mgmt_cmd_status(%struct.sock* %152, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %14, align 4
  br label %212

159:                                              ; preds = %146
  %160 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %161 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %169 = load i32, i32* @HCI_SC_ENABLED, align 4
  %170 = call i32 @hci_dev_test_flag(%struct.hci_dev* %168, i32 %169)
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %187

172:                                              ; preds = %159
  %173 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %174 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i32
  %178 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %179 = load i32, i32* @HCI_SC_ONLY, align 4
  %180 = call i32 @hci_dev_test_flag(%struct.hci_dev* %178, i32 %179)
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %172
  %183 = load %struct.sock*, %struct.sock** %6, align 8
  %184 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %185 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %186 = call i32 @send_settings_rsp(%struct.sock* %183, i32 %184, %struct.hci_dev* %185)
  store i32 %186, i32* %14, align 4
  br label %212

187:                                              ; preds = %172, %159
  %188 = load %struct.sock*, %struct.sock** %6, align 8
  %189 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %190 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %191 = load i8*, i8** %8, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %188, i32 %189, %struct.hci_dev* %190, i8* %191, i32 %192)
  store %struct.mgmt_pending_cmd* %193, %struct.mgmt_pending_cmd** %11, align 8
  %194 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %195 = icmp ne %struct.mgmt_pending_cmd* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %14, align 4
  br label %212

199:                                              ; preds = %187
  %200 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %201 = call i32 @hci_req_init(%struct.hci_request* %12, %struct.hci_dev* %200)
  %202 = load i32, i32* @HCI_OP_WRITE_SC_SUPPORT, align 4
  %203 = call i32 @hci_req_add(%struct.hci_request* %12, i32 %202, i32 1, i32* %13)
  %204 = load i32, i32* @sc_enable_complete, align 4
  %205 = call i32 @hci_req_run(%struct.hci_request* %12, i32 %204)
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %199
  %209 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %210 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %209)
  br label %212

211:                                              ; preds = %199
  br label %212

212:                                              ; preds = %211, %208, %196, %182, %151, %145, %137
  %213 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %214 = call i32 @hci_dev_unlock(%struct.hci_dev* %213)
  %215 = load i32, i32* %14, align 4
  store i32 %215, i32* %5, align 4
  br label %216

216:                                              ; preds = %212, %75, %52, %30
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @lmp_sc_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_req_init(%struct.hci_request*, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, i32*) #1

declare dso_local i32 @hci_req_run(%struct.hci_request*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
