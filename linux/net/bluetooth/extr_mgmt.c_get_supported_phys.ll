; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_phys.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_supported_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32**, i32* }

@MGMT_PHY_BR_1M_1SLOT = common dso_local global i32 0, align 4
@LMP_3SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_3SLOT = common dso_local global i32 0, align 4
@LMP_5SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_5SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_1SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_3SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_5SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_1SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_3SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_5SLOT = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_RX = common dso_local global i32 0, align 4
@HCI_LE_PHY_2M = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_RX = common dso_local global i32 0, align 4
@HCI_LE_PHY_CODED = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_supported_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_supported_phys(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = call i64 @lmp_bredr_capable(%struct.hci_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %89

7:                                                ; preds = %1
  %8 = load i32, i32* @MGMT_PHY_BR_1M_1SLOT, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LMP_3SLOT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* @MGMT_PHY_BR_1M_3SLOT, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %7
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LMP_5SLOT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load i32, i32* @MGMT_PHY_BR_1M_5SLOT, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %25
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = call i64 @lmp_edr_2m_capable(%struct.hci_dev* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %40
  %45 = load i32, i32* @MGMT_PHY_EDR_2M_1SLOT, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %49 = call i64 @lmp_edr_3slot_capable(%struct.hci_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @MGMT_PHY_EDR_2M_3SLOT, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %57 = call i64 @lmp_edr_5slot_capable(%struct.hci_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @MGMT_PHY_EDR_2M_5SLOT, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %65 = call i64 @lmp_edr_3m_capable(%struct.hci_dev* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i32, i32* @MGMT_PHY_EDR_3M_1SLOT, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %72 = call i64 @lmp_edr_3slot_capable(%struct.hci_dev* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @MGMT_PHY_EDR_3M_3SLOT, align 4
  %76 = load i32, i32* %3, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %67
  %79 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %80 = call i64 @lmp_edr_5slot_capable(%struct.hci_dev* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @MGMT_PHY_EDR_3M_5SLOT, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88, %1
  %90 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %91 = call i64 @lmp_le_capable(%struct.hci_dev* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %89
  %94 = load i32, i32* @MGMT_PHY_LE_1M_TX, align 4
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* @MGMT_PHY_LE_1M_RX, align 4
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HCI_LE_PHY_2M, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %93
  %109 = load i32, i32* @MGMT_PHY_LE_2M_TX, align 4
  %110 = load i32, i32* %3, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @MGMT_PHY_LE_2M_RX, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %108, %93
  %116 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HCI_LE_PHY_CODED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load i32, i32* @MGMT_PHY_LE_CODED_TX, align 4
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* @MGMT_PHY_LE_CODED_RX, align 4
  %129 = load i32, i32* %3, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %124, %115
  br label %132

132:                                              ; preds = %131, %89
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_edr_2m_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_edr_3slot_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_edr_5slot_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_edr_3m_capable(%struct.hci_dev*) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
