; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_privacy.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_set_privacy = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"request for %s\00", align 1
@MGMT_OP_SET_PRIVACY = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@HCI_RPA_RESOLVING = common dso_local global i32 0, align 4
@HCI_PRIVACY = common dso_local global i32 0, align 4
@HCI_RPA_EXPIRED = common dso_local global i32 0, align 4
@HCI_LIMITED_PRIVACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_privacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_privacy(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_privacy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_set_privacy*
  store %struct.mgmt_cp_set_privacy* %14, %struct.mgmt_cp_set_privacy** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = call i32 @lmp_le_capable(%struct.hci_dev* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MGMT_OP_SET_PRIVACY, align 4
  %28 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %29 = call i32 @mgmt_cmd_status(%struct.sock* %23, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %143

30:                                               ; preds = %4
  %31 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %42 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.sock*, %struct.sock** %6, align 8
  %47 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MGMT_OP_SET_PRIVACY, align 4
  %51 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %52 = call i32 @mgmt_cmd_status(%struct.sock* %46, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %143

53:                                               ; preds = %40, %35, %30
  %54 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %55 = call i64 @hdev_is_powered(%struct.hci_dev* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MGMT_OP_SET_PRIVACY, align 4
  %63 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %64 = call i32 @mgmt_cmd_status(%struct.sock* %58, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %143

65:                                               ; preds = %53
  %66 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %67 = call i32 @hci_dev_lock(%struct.hci_dev* %66)
  %68 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %69 = load i32, i32* @HCI_RPA_RESOLVING, align 4
  %70 = call i32 @hci_dev_set_flag(%struct.hci_dev* %68, i32 %69)
  %71 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %72 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %65
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = load i32, i32* @HCI_PRIVACY, align 4
  %78 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %86 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @memcpy(i32 %84, i32 %87, i32 4)
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %91 = call i32 @hci_dev_set_flag(%struct.hci_dev* %89, i32 %90)
  %92 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %93 = call i32 @hci_adv_instances_set_rpa_expired(%struct.hci_dev* %92, i32 1)
  %94 = load %struct.mgmt_cp_set_privacy*, %struct.mgmt_cp_set_privacy** %10, align 8
  %95 = getelementptr inbounds %struct.mgmt_cp_set_privacy, %struct.mgmt_cp_set_privacy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %102

98:                                               ; preds = %75
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = load i32, i32* @HCI_LIMITED_PRIVACY, align 4
  %101 = call i32 @hci_dev_set_flag(%struct.hci_dev* %99, i32 %100)
  br label %106

102:                                              ; preds = %75
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = load i32, i32* @HCI_LIMITED_PRIVACY, align 4
  %105 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %98
  br label %123

107:                                              ; preds = %65
  %108 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %109 = load i32, i32* @HCI_PRIVACY, align 4
  %110 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %112 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @memset(i32 %113, i32 0, i32 4)
  %115 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %116 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %117 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %115, i32 %116)
  %118 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %119 = call i32 @hci_adv_instances_set_rpa_expired(%struct.hci_dev* %118, i32 0)
  %120 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %121 = load i32, i32* @HCI_LIMITED_PRIVACY, align 4
  %122 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %120, i32 %121)
  br label %123

123:                                              ; preds = %107, %106
  %124 = load %struct.sock*, %struct.sock** %6, align 8
  %125 = load i32, i32* @MGMT_OP_SET_PRIVACY, align 4
  %126 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %127 = call i32 @send_settings_rsp(%struct.sock* %124, i32 %125, %struct.hci_dev* %126)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %139

131:                                              ; preds = %123
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %136 = load %struct.sock*, %struct.sock** %6, align 8
  %137 = call i32 @new_settings(%struct.hci_dev* %135, %struct.sock* %136)
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %134, %131
  br label %139

139:                                              ; preds = %138, %130
  %140 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %141 = call i32 @hci_dev_unlock(%struct.hci_dev* %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %139, %57, %45, %22
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_adv_instances_set_rpa_expired(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
