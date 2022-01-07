; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_external_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_external_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.mgmt_cp_set_external_config = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_SET_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@HCI_QUIRK_EXTERNAL_CONFIG = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_EXT_CONFIGURED = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_AUTO_OFF = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_external_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_external_config(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_external_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_set_external_config*
  store %struct.mgmt_cp_set_external_config* %14, %struct.mgmt_cp_set_external_config** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %20 = call i64 @hdev_is_powered(%struct.hci_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MGMT_OP_SET_EXTERNAL_CONFIG, align 4
  %28 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %29 = call i32 @mgmt_cmd_status(%struct.sock* %23, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %135

30:                                               ; preds = %4
  %31 = load %struct.mgmt_cp_set_external_config*, %struct.mgmt_cp_set_external_config** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_cp_set_external_config, %struct.mgmt_cp_set_external_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.mgmt_cp_set_external_config*, %struct.mgmt_cp_set_external_config** %10, align 8
  %37 = getelementptr inbounds %struct.mgmt_cp_set_external_config, %struct.mgmt_cp_set_external_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MGMT_OP_SET_EXTERNAL_CONFIG, align 4
  %46 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %47 = call i32 @mgmt_cmd_status(%struct.sock* %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %135

48:                                               ; preds = %35, %30
  %49 = load i32, i32* @HCI_QUIRK_EXTERNAL_CONFIG, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 4
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %48
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MGMT_OP_SET_EXTERNAL_CONFIG, align 4
  %60 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %61 = call i32 @mgmt_cmd_status(%struct.sock* %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %135

62:                                               ; preds = %48
  %63 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %64 = call i32 @hci_dev_lock(%struct.hci_dev* %63)
  %65 = load %struct.mgmt_cp_set_external_config*, %struct.mgmt_cp_set_external_config** %10, align 8
  %66 = getelementptr inbounds %struct.mgmt_cp_set_external_config, %struct.mgmt_cp_set_external_config* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = load i32, i32* @HCI_EXT_CONFIGURED, align 4
  %72 = call i32 @hci_dev_test_and_set_flag(%struct.hci_dev* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %80

76:                                               ; preds = %62
  %77 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %78 = load i32, i32* @HCI_EXT_CONFIGURED, align 4
  %79 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %76, %69
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = load i32, i32* @MGMT_OP_SET_EXTERNAL_CONFIG, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %84 = call i32 @send_options_rsp(%struct.sock* %81, i32 %82, %struct.hci_dev* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %131

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %131

92:                                               ; preds = %88
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = load %struct.sock*, %struct.sock** %6, align 8
  %95 = call i32 @new_options(%struct.hci_dev* %93, %struct.sock* %94)
  store i32 %95, i32* %12, align 4
  %96 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %97 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %98 = call i64 @hci_dev_test_flag(%struct.hci_dev* %96, i32 %97)
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = call i64 @is_configured(%struct.hci_dev* %99)
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %130

102:                                              ; preds = %92
  %103 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %104 = call i32 @mgmt_index_removed(%struct.hci_dev* %103)
  %105 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %106 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %107 = call i64 @hci_dev_test_and_change_flag(%struct.hci_dev* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %111 = load i32, i32* @HCI_CONFIG, align 4
  %112 = call i32 @hci_dev_set_flag(%struct.hci_dev* %110, i32 %111)
  %113 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %114 = load i32, i32* @HCI_AUTO_OFF, align 4
  %115 = call i32 @hci_dev_set_flag(%struct.hci_dev* %113, i32 %114)
  %116 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %120 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %119, i32 0, i32 1
  %121 = call i32 @queue_work(i32 %118, i32* %120)
  br label %129

122:                                              ; preds = %102
  %123 = load i32, i32* @HCI_RAW, align 4
  %124 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %125 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %124, i32 0, i32 0
  %126 = call i32 @set_bit(i32 %123, i32* %125)
  %127 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %128 = call i32 @mgmt_index_added(%struct.hci_dev* %127)
  br label %129

129:                                              ; preds = %122, %109
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %130, %91, %87
  %132 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %133 = call i32 @hci_dev_unlock(%struct.hci_dev* %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %54, %40, %22
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_and_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_options_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_options(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @is_configured(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_index_removed(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_and_change_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_index_added(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
