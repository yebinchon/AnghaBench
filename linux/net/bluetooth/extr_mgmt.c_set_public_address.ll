; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_public_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_public_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.mgmt_cp_set_public_address = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_SET_PUBLIC_ADDRESS = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32* null, align 8
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_UNCONFIGURED = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_AUTO_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_public_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_public_address(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_public_address*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_set_public_address*
  store %struct.mgmt_cp_set_public_address* %14, %struct.mgmt_cp_set_public_address** %10, align 8
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
  %27 = load i32, i32* @MGMT_OP_SET_PUBLIC_ADDRESS, align 4
  %28 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %29 = call i32 @mgmt_cmd_status(%struct.sock* %23, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %121

30:                                               ; preds = %4
  %31 = load %struct.mgmt_cp_set_public_address*, %struct.mgmt_cp_set_public_address** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_cp_set_public_address, %struct.mgmt_cp_set_public_address* %31, i32 0, i32 0
  %33 = load i32*, i32** @BDADDR_ANY, align 8
  %34 = call i32 @bacmp(i32* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MGMT_OP_SET_PUBLIC_ADDRESS, align 4
  %42 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %43 = call i32 @mgmt_cmd_status(%struct.sock* %37, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %121

44:                                               ; preds = %30
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MGMT_OP_SET_PUBLIC_ADDRESS, align 4
  %55 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %56 = call i32 @mgmt_cmd_status(%struct.sock* %50, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %121

57:                                               ; preds = %44
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = call i32 @hci_dev_lock(%struct.hci_dev* %58)
  %60 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 2
  %62 = load %struct.mgmt_cp_set_public_address*, %struct.mgmt_cp_set_public_address** %10, align 8
  %63 = getelementptr inbounds %struct.mgmt_cp_set_public_address, %struct.mgmt_cp_set_public_address* %62, i32 0, i32 0
  %64 = call i32 @bacmp(i32* %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %69, i32 0, i32 2
  %71 = load %struct.mgmt_cp_set_public_address*, %struct.mgmt_cp_set_public_address** %10, align 8
  %72 = getelementptr inbounds %struct.mgmt_cp_set_public_address, %struct.mgmt_cp_set_public_address* %71, i32 0, i32 0
  %73 = call i32 @bacpy(i32* %70, i32* %72)
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = load i32, i32* @MGMT_OP_SET_PUBLIC_ADDRESS, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %77 = call i32 @send_options_rsp(%struct.sock* %74, i32 %75, %struct.hci_dev* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %57
  br label %117

81:                                               ; preds = %57
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %117

85:                                               ; preds = %81
  %86 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %87 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %88 = call i64 @hci_dev_test_flag(%struct.hci_dev* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %92 = load %struct.sock*, %struct.sock** %6, align 8
  %93 = call i32 @new_options(%struct.hci_dev* %91, %struct.sock* %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = call i64 @is_configured(%struct.hci_dev* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = call i32 @mgmt_index_removed(%struct.hci_dev* %99)
  %101 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %102 = load i32, i32* @HCI_UNCONFIGURED, align 4
  %103 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %101, i32 %102)
  %104 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %105 = load i32, i32* @HCI_CONFIG, align 4
  %106 = call i32 @hci_dev_set_flag(%struct.hci_dev* %104, i32 %105)
  %107 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %108 = load i32, i32* @HCI_AUTO_OFF, align 4
  %109 = call i32 @hci_dev_set_flag(%struct.hci_dev* %107, i32 %108)
  %110 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %111 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %114 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %113, i32 0, i32 0
  %115 = call i32 @queue_work(i32 %112, i32* %114)
  br label %116

116:                                              ; preds = %98, %94
  br label %117

117:                                              ; preds = %116, %84, %80
  %118 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %119 = call i32 @hci_dev_unlock(%struct.hci_dev* %118)
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %49, %36, %22
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @bacmp(i32*, i32*) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @send_options_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @new_options(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i64 @is_configured(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_index_removed(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
