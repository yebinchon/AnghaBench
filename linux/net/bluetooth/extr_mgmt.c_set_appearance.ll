; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_appearance.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_appearance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i64, i32 }
%struct.mgmt_cp_set_appearance = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MGMT_OP_SET_APPEARANCE = common dso_local global i32 0, align 4
@MGMT_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HCI_LE_ADV = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_APPEARANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i64)* @set_appearance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_appearance(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mgmt_cp_set_appearance*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_set_appearance*
  store %struct.mgmt_cp_set_appearance* %14, %struct.mgmt_cp_set_appearance** %10, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %17 = call i32 @lmp_le_capable(%struct.hci_dev* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %4
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MGMT_OP_SET_APPEARANCE, align 4
  %25 = load i32, i32* @MGMT_STATUS_NOT_SUPPORTED, align 4
  %26 = call i32 @mgmt_cmd_status(%struct.sock* %20, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %65

27:                                               ; preds = %4
  %28 = load %struct.mgmt_cp_set_appearance*, %struct.mgmt_cp_set_appearance** %10, align 8
  %29 = getelementptr inbounds %struct.mgmt_cp_set_appearance, %struct.mgmt_cp_set_appearance* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %33 = call i32 @hci_dev_lock(%struct.hci_dev* %32)
  %34 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %35 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %27
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %44 = load i32, i32* @HCI_LE_ADV, align 4
  %45 = call i64 @hci_dev_test_flag(%struct.hci_dev* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %49 = load i32, i32* @MGMT_ADV_FLAG_APPEARANCE, align 4
  %50 = call i32 @adv_expire(%struct.hci_dev* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = call i32 @ext_info_changed(%struct.hci_dev* %52, %struct.sock* %53)
  br label %55

55:                                               ; preds = %51, %27
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MGMT_OP_SET_APPEARANCE, align 4
  %61 = call i32 @mgmt_cmd_complete(%struct.sock* %56, i32 %59, i32 %60, i32 0, i32* null, i32 0)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %63 = call i32 @hci_dev_unlock(%struct.hci_dev* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %55, %19
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @adv_expire(%struct.hci_dev*, i32) #1

declare dso_local i32 @ext_info_changed(%struct.hci_dev*, %struct.sock*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
