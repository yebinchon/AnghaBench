; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_ssp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_ssp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_mode = type { i32 }
%struct.mgmt_pending_cmd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_SSP = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i64 0, align 8
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@HCI_HS_ENABLED = common dso_local global i32 0, align 4
@MGMT_STATUS_BUSY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@HCI_USE_DEBUG_KEYS = common dso_local global i32 0, align 4
@HCI_OP_WRITE_SSP_DEBUG_MODE = common dso_local global i32 0, align 4
@HCI_OP_WRITE_SSP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_ssp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ssp(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_mode*, align 8
  %11 = alloca %struct.mgmt_pending_cmd*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mgmt_mode*
  store %struct.mgmt_mode* %16, %struct.mgmt_mode** %10, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = call i64 @mgmt_bredr_support(%struct.hci_dev* %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @mgmt_cmd_status(%struct.sock* %26, i32 %29, i32 %30, i64 %31)
  store i32 %32, i32* %5, align 4
  br label %186

33:                                               ; preds = %4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %35 = call i32 @lmp_ssp_capable(%struct.hci_dev* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %43 = load i64, i64* @MGMT_STATUS_NOT_SUPPORTED, align 8
  %44 = call i32 @mgmt_cmd_status(%struct.sock* %38, i32 %41, i32 %42, i64 %43)
  store i32 %44, i32* %5, align 4
  br label %186

45:                                               ; preds = %33
  %46 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %47 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %52 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %61 = load i64, i64* @MGMT_STATUS_INVALID_PARAMS, align 8
  %62 = call i32 @mgmt_cmd_status(%struct.sock* %56, i32 %59, i32 %60, i64 %61)
  store i32 %62, i32* %5, align 4
  br label %186

63:                                               ; preds = %50, %45
  %64 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %65 = call i32 @hci_dev_lock(%struct.hci_dev* %64)
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = call i32 @hdev_is_powered(%struct.hci_dev* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %112, label %69

69:                                               ; preds = %63
  %70 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %71 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %76 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %77 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %14, align 4
  br label %96

81:                                               ; preds = %69
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %84 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81
  %88 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %89 = load i32, i32* @HCI_HS_ENABLED, align 4
  %90 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %88, i32 %89)
  store i32 %90, i32* %14, align 4
  br label %95

91:                                               ; preds = %81
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = load i32, i32* @HCI_HS_ENABLED, align 4
  %94 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.sock*, %struct.sock** %6, align 8
  %98 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = call i32 @send_settings_rsp(%struct.sock* %97, i32 %98, %struct.hci_dev* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %182

104:                                              ; preds = %96
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %109 = load %struct.sock*, %struct.sock** %6, align 8
  %110 = call i32 @new_settings(%struct.hci_dev* %108, %struct.sock* %109)
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %107, %104
  br label %182

112:                                              ; preds = %63
  %113 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %114 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %115 = call i64 @pending_find(i32 %113, %struct.hci_dev* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.sock*, %struct.sock** %6, align 8
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %123 = load i64, i64* @MGMT_STATUS_BUSY, align 8
  %124 = call i32 @mgmt_cmd_status(%struct.sock* %118, i32 %121, i32 %122, i64 %123)
  store i32 %124, i32* %13, align 4
  br label %182

125:                                              ; preds = %112
  %126 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %127 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %134 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %135 = call i32 @hci_dev_test_flag(%struct.hci_dev* %133, i32 %134)
  %136 = icmp eq i32 %132, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %125
  %138 = load %struct.sock*, %struct.sock** %6, align 8
  %139 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %140 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %141 = call i32 @send_settings_rsp(%struct.sock* %138, i32 %139, %struct.hci_dev* %140)
  store i32 %141, i32* %13, align 4
  br label %182

142:                                              ; preds = %125
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = load i32, i32* @MGMT_OP_SET_SSP, align 4
  %145 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock* %143, i32 %144, %struct.hci_dev* %145, i8* %146, i32 %147)
  store %struct.mgmt_pending_cmd* %148, %struct.mgmt_pending_cmd** %11, align 8
  %149 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %150 = icmp ne %struct.mgmt_pending_cmd* %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %13, align 4
  br label %182

154:                                              ; preds = %142
  %155 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %156 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %154
  %160 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %161 = load i32, i32* @HCI_USE_DEBUG_KEYS, align 4
  %162 = call i32 @hci_dev_test_flag(%struct.hci_dev* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %166 = load i32, i32* @HCI_OP_WRITE_SSP_DEBUG_MODE, align 4
  %167 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %168 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %167, i32 0, i32 0
  %169 = call i32 @hci_send_cmd(%struct.hci_dev* %165, i32 %166, i32 4, i32* %168)
  br label %170

170:                                              ; preds = %164, %159, %154
  %171 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %172 = load i32, i32* @HCI_OP_WRITE_SSP_MODE, align 4
  %173 = load %struct.mgmt_mode*, %struct.mgmt_mode** %10, align 8
  %174 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %173, i32 0, i32 0
  %175 = call i32 @hci_send_cmd(%struct.hci_dev* %171, i32 %172, i32 1, i32* %174)
  store i32 %175, i32* %13, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %11, align 8
  %180 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %179)
  br label %182

181:                                              ; preds = %170
  br label %182

182:                                              ; preds = %181, %178, %151, %137, %117, %111, %103
  %183 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %184 = call i32 @hci_dev_unlock(%struct.hci_dev* %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %182, %55, %37, %25
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @mgmt_bredr_support(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i64) #1

declare dso_local i32 @lmp_ssp_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local %struct.mgmt_pending_cmd* @mgmt_pending_add(%struct.sock*, i32, %struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @hci_send_cmd(%struct.hci_dev*, i32, i32, i32*) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
