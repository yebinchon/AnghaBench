; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_selected_phys.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_get_selected_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }

@MGMT_PHY_BR_1M_1SLOT = common dso_local global i32 0, align 4
@HCI_DM3 = common dso_local global i32 0, align 4
@HCI_DH3 = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_3SLOT = common dso_local global i32 0, align 4
@HCI_DM5 = common dso_local global i32 0, align 4
@HCI_DH5 = common dso_local global i32 0, align 4
@MGMT_PHY_BR_1M_5SLOT = common dso_local global i32 0, align 4
@HCI_2DH1 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_1SLOT = common dso_local global i32 0, align 4
@HCI_2DH3 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_3SLOT = common dso_local global i32 0, align 4
@HCI_2DH5 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_2M_5SLOT = common dso_local global i32 0, align 4
@HCI_3DH1 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_1SLOT = common dso_local global i32 0, align 4
@HCI_3DH3 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_3SLOT = common dso_local global i32 0, align 4
@HCI_3DH5 = common dso_local global i32 0, align 4
@MGMT_PHY_EDR_3M_5SLOT = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_1M = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_1M_RX = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_2M = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_2M_RX = common dso_local global i32 0, align 4
@HCI_LE_SET_PHY_CODED = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_TX = common dso_local global i32 0, align 4
@MGMT_PHY_LE_CODED_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @get_selected_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_selected_phys(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = call i64 @lmp_bredr_capable(%struct.hci_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %129

7:                                                ; preds = %1
  %8 = load i32, i32* @MGMT_PHY_BR_1M_1SLOT, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HCI_DM3, align 4
  %15 = load i32, i32* @HCI_DH3, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = load i32, i32* @MGMT_PHY_BR_1M_3SLOT, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %7
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HCI_DM5, align 4
  %28 = load i32, i32* @HCI_DH5, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i32, i32* @MGMT_PHY_BR_1M_5SLOT, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %23
  %37 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %38 = call i64 @lmp_edr_2m_capable(%struct.hci_dev* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %128

40:                                               ; preds = %36
  %41 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HCI_2DH1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @MGMT_PHY_EDR_2M_1SLOT, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %53 = call i64 @lmp_edr_3slot_capable(%struct.hci_dev* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HCI_2DH3, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @MGMT_PHY_EDR_2M_3SLOT, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %55, %51
  %67 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %68 = call i64 @lmp_edr_5slot_capable(%struct.hci_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HCI_2DH5, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @MGMT_PHY_EDR_2M_5SLOT, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %70, %66
  %82 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %83 = call i64 @lmp_edr_3m_capable(%struct.hci_dev* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %127

85:                                               ; preds = %81
  %86 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HCI_3DH1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @MGMT_PHY_EDR_3M_1SLOT, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %98 = call i64 @lmp_edr_3slot_capable(%struct.hci_dev* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HCI_3DH3, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @MGMT_PHY_EDR_3M_3SLOT, align 4
  %109 = load i32, i32* %3, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %100, %96
  %112 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %113 = call i64 @lmp_edr_5slot_capable(%struct.hci_dev* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @HCI_3DH5, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @MGMT_PHY_EDR_3M_5SLOT, align 4
  %124 = load i32, i32* %3, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %115, %111
  br label %127

127:                                              ; preds = %126, %81
  br label %128

128:                                              ; preds = %127, %36
  br label %129

129:                                              ; preds = %128, %1
  %130 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %131 = call i64 @lmp_le_capable(%struct.hci_dev* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %200

133:                                              ; preds = %129
  %134 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %135 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HCI_LE_SET_PHY_1M, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* @MGMT_PHY_LE_1M_TX, align 4
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %133
  %145 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %146 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @HCI_LE_SET_PHY_1M, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @MGMT_PHY_LE_1M_RX, align 4
  %153 = load i32, i32* %3, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %157 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @HCI_LE_SET_PHY_2M, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = load i32, i32* @MGMT_PHY_LE_2M_TX, align 4
  %164 = load i32, i32* %3, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %155
  %167 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %168 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @HCI_LE_SET_PHY_2M, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* @MGMT_PHY_LE_2M_RX, align 4
  %175 = load i32, i32* %3, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %166
  %178 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %179 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @HCI_LE_SET_PHY_CODED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %177
  %185 = load i32, i32* @MGMT_PHY_LE_CODED_TX, align 4
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %184, %177
  %189 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %190 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @HCI_LE_SET_PHY_CODED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i32, i32* @MGMT_PHY_LE_CODED_RX, align 4
  %197 = load i32, i32* %3, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %195, %188
  br label %200

200:                                              ; preds = %199, %129
  %201 = load i32, i32* %3, align 4
  ret i32 %201
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
