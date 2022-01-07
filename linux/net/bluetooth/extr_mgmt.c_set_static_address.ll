; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_static_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_static_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_cp_set_static_address = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_SET_STATIC_ADDRESS = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MGMT_STATUS_REJECTED = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@BDADDR_NONE = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @set_static_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_static_address(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_set_static_address*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.mgmt_cp_set_static_address*
  store %struct.mgmt_cp_set_static_address* %13, %struct.mgmt_cp_set_static_address** %10, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = call i32 @lmp_le_capable(%struct.hci_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MGMT_OP_SET_STATIC_ADDRESS, align 4
  %27 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %28 = call i32 @mgmt_cmd_status(%struct.sock* %22, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %102

29:                                               ; preds = %4
  %30 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %31 = call i64 @hdev_is_powered(%struct.hci_dev* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_SET_STATIC_ADDRESS, align 4
  %39 = load i32, i32* @MGMT_STATUS_REJECTED, align 4
  %40 = call i32 @mgmt_cmd_status(%struct.sock* %34, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %29
  %42 = load %struct.mgmt_cp_set_static_address*, %struct.mgmt_cp_set_static_address** %10, align 8
  %43 = getelementptr inbounds %struct.mgmt_cp_set_static_address, %struct.mgmt_cp_set_static_address* %42, i32 0, i32 0
  %44 = load i32, i32* @BDADDR_ANY, align 4
  %45 = call i64 @bacmp(%struct.TYPE_3__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %41
  %48 = load %struct.mgmt_cp_set_static_address*, %struct.mgmt_cp_set_static_address** %10, align 8
  %49 = getelementptr inbounds %struct.mgmt_cp_set_static_address, %struct.mgmt_cp_set_static_address* %48, i32 0, i32 0
  %50 = load i32, i32* @BDADDR_NONE, align 4
  %51 = call i64 @bacmp(%struct.TYPE_3__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load %struct.sock*, %struct.sock** %6, align 8
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MGMT_OP_SET_STATIC_ADDRESS, align 4
  %59 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %60 = call i32 @mgmt_cmd_status(%struct.sock* %54, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %102

61:                                               ; preds = %47
  %62 = load %struct.mgmt_cp_set_static_address*, %struct.mgmt_cp_set_static_address** %10, align 8
  %63 = getelementptr inbounds %struct.mgmt_cp_set_static_address, %struct.mgmt_cp_set_static_address* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 192
  %69 = icmp ne i32 %68, 192
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MGMT_OP_SET_STATIC_ADDRESS, align 4
  %76 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %77 = call i32 @mgmt_cmd_status(%struct.sock* %71, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %102

78:                                               ; preds = %61
  br label %79

79:                                               ; preds = %78, %41
  %80 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %81 = call i32 @hci_dev_lock(%struct.hci_dev* %80)
  %82 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = load %struct.mgmt_cp_set_static_address*, %struct.mgmt_cp_set_static_address** %10, align 8
  %85 = getelementptr inbounds %struct.mgmt_cp_set_static_address, %struct.mgmt_cp_set_static_address* %84, i32 0, i32 0
  %86 = call i32 @bacpy(i32* %83, %struct.TYPE_3__* %85)
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = load i32, i32* @MGMT_OP_SET_STATIC_ADDRESS, align 4
  %89 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %90 = call i32 @send_settings_rsp(%struct.sock* %87, i32 %88, %struct.hci_dev* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %79
  br label %98

94:                                               ; preds = %79
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = call i32 @new_settings(%struct.hci_dev* %95, %struct.sock* %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %100 = call i32 @hci_dev_unlock(%struct.hci_dev* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %70, %53, %33, %21
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @bacmp(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @send_settings_rsp(%struct.sock*, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
