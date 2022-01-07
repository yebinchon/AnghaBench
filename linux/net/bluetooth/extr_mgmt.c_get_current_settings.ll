; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_current_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_current_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }

@MGMT_SETTING_POWERED = common dso_local global i32 0, align 4
@HCI_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_FAST_CONNECTABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_BONDABLE = common dso_local global i32 0, align 4
@MGMT_SETTING_BONDABLE = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@MGMT_SETTING_BREDR = common dso_local global i32 0, align 4
@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@MGMT_SETTING_LE = common dso_local global i32 0, align 4
@HCI_LINK_SECURITY = common dso_local global i32 0, align 4
@MGMT_SETTING_LINK_SECURITY = common dso_local global i32 0, align 4
@HCI_SSP_ENABLED = common dso_local global i32 0, align 4
@MGMT_SETTING_SSP = common dso_local global i32 0, align 4
@HCI_HS_ENABLED = common dso_local global i32 0, align 4
@MGMT_SETTING_HS = common dso_local global i32 0, align 4
@HCI_ADVERTISING = common dso_local global i32 0, align 4
@MGMT_SETTING_ADVERTISING = common dso_local global i32 0, align 4
@HCI_SC_ENABLED = common dso_local global i32 0, align 4
@MGMT_SETTING_SECURE_CONN = common dso_local global i32 0, align 4
@HCI_KEEP_DEBUG_KEYS = common dso_local global i32 0, align 4
@MGMT_SETTING_DEBUG_KEYS = common dso_local global i32 0, align 4
@HCI_PRIVACY = common dso_local global i32 0, align 4
@MGMT_SETTING_PRIVACY = common dso_local global i32 0, align 4
@HCI_FORCE_STATIC_ADDR = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@MGMT_SETTING_STATIC_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_current_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_current_settings(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = call i64 @hdev_is_powered(%struct.hci_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @MGMT_SETTING_POWERED, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = load i32, i32* @HCI_CONNECTABLE, align 4
  %14 = call i64 @hci_dev_test_flag(%struct.hci_dev* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @MGMT_SETTING_CONNECTABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = load i32, i32* @HCI_FAST_CONNECTABLE, align 4
  %23 = call i64 @hci_dev_test_flag(%struct.hci_dev* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @MGMT_SETTING_FAST_CONNECTABLE, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %31 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %32 = call i64 @hci_dev_test_flag(%struct.hci_dev* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @MGMT_SETTING_DISCOVERABLE, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = load i32, i32* @HCI_BONDABLE, align 4
  %41 = call i64 @hci_dev_test_flag(%struct.hci_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @MGMT_SETTING_BONDABLE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %49 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %50 = call i64 @hci_dev_test_flag(%struct.hci_dev* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @MGMT_SETTING_BREDR, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %58 = load i32, i32* @HCI_LE_ENABLED, align 4
  %59 = call i64 @hci_dev_test_flag(%struct.hci_dev* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @MGMT_SETTING_LE, align 4
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %67 = load i32, i32* @HCI_LINK_SECURITY, align 4
  %68 = call i64 @hci_dev_test_flag(%struct.hci_dev* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @MGMT_SETTING_LINK_SECURITY, align 4
  %72 = load i32, i32* %3, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = load i32, i32* @HCI_SSP_ENABLED, align 4
  %77 = call i64 @hci_dev_test_flag(%struct.hci_dev* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @MGMT_SETTING_SSP, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %85 = load i32, i32* @HCI_HS_ENABLED, align 4
  %86 = call i64 @hci_dev_test_flag(%struct.hci_dev* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @MGMT_SETTING_HS, align 4
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %94 = load i32, i32* @HCI_ADVERTISING, align 4
  %95 = call i64 @hci_dev_test_flag(%struct.hci_dev* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @MGMT_SETTING_ADVERTISING, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %92
  %102 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %103 = load i32, i32* @HCI_SC_ENABLED, align 4
  %104 = call i64 @hci_dev_test_flag(%struct.hci_dev* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* @MGMT_SETTING_SECURE_CONN, align 4
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %112 = load i32, i32* @HCI_KEEP_DEBUG_KEYS, align 4
  %113 = call i64 @hci_dev_test_flag(%struct.hci_dev* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @MGMT_SETTING_DEBUG_KEYS, align 4
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %121 = load i32, i32* @HCI_PRIVACY, align 4
  %122 = call i64 @hci_dev_test_flag(%struct.hci_dev* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @MGMT_SETTING_PRIVACY, align 4
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %130 = load i32, i32* @HCI_FORCE_STATIC_ADDR, align 4
  %131 = call i64 @hci_dev_test_flag(%struct.hci_dev* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %135 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %136 = call i64 @hci_dev_test_flag(%struct.hci_dev* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %140 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %139, i32 0, i32 1
  %141 = load i32, i32* @BDADDR_ANY, align 4
  %142 = call i64 @bacmp(i32* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %138, %133, %128
  %145 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %146 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %145, i32 0, i32 0
  %147 = load i32, i32* @BDADDR_ANY, align 4
  %148 = call i64 @bacmp(i32* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @MGMT_SETTING_STATIC_ADDRESS, align 4
  %152 = load i32, i32* %3, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %144
  br label %155

155:                                              ; preds = %154, %138
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i64 @hdev_is_powered(%struct.hci_dev*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @bacmp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
