; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_instance_adv_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_instance_adv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }
%struct.adv_info = type { i64, i64, i32 }

@MGMT_ADV_FLAG_DISCOV = common dso_local global i32 0, align 4
@LE_AD_GENERAL = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_LIMITED_DISCOV = common dso_local global i32 0, align 4
@LE_AD_LIMITED = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@LE_AD_NO_BREDR = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_MANAGED_FLAGS = common dso_local global i32 0, align 4
@EIR_FLAGS = common dso_local global i32 0, align 4
@MGMT_ADV_FLAG_TX_POWER = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i64 0, align 8
@EIR_TX_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i32*)* @create_instance_adv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_instance_adv_data(%struct.hci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.adv_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.adv_info* null, %struct.adv_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev* %16, i32 %17)
  store %struct.adv_info* %18, %struct.adv_info** %8, align 8
  %19 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %20 = icmp ne %struct.adv_info* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %156

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @get_adv_instance_flags(%struct.hci_dev* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @MGMT_ADV_FLAG_DISCOV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @LE_AD_GENERAL, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MGMT_ADV_FLAG_LIMITED_DISCOV, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @LE_AD_LIMITED, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %46 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %47 = call i32 @hci_dev_test_flag(%struct.hci_dev* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @LE_AD_NO_BREDR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MGMT_ADV_FLAG_MANAGED_FLAGS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %66 = call i32 @mgmt_get_adv_discov_flags(%struct.hci_dev* %65)
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 2, i32* %74, align 4
  %75 = load i32, i32* @EIR_FLAGS, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 3
  store i32 %82, i32* %9, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  store i32* %84, i32** %7, align 8
  br label %85

85:                                               ; preds = %72, %69
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %88 = icmp ne %struct.adv_info* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %92 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %95 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @memcpy(i32* %90, i32 %93, i64 %96)
  %98 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %99 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %9, align 4
  %105 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %106 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 %107
  store i32* %109, i32** %7, align 8
  br label %110

110:                                              ; preds = %89, %86
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @MGMT_ADV_FLAG_TX_POWER, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %154

115:                                              ; preds = %110
  %116 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %117 = call i64 @ext_adv_capable(%struct.hci_dev* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %121 = icmp ne %struct.adv_info* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.adv_info*, %struct.adv_info** %8, align 8
  %124 = getelementptr inbounds %struct.adv_info, %struct.adv_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %12, align 8
  br label %130

126:                                              ; preds = %119
  %127 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %128 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %126, %122
  br label %135

131:                                              ; preds = %115
  %132 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %133 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %131, %130
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* @HCI_TX_POWER_INVALID, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 2, i32* %141, align 4
  %142 = load i32, i32* @EIR_TX_POWER, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  %145 = load i64, i64* %12, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 3
  store i32 %150, i32* %9, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32* %152, i32** %7, align 8
  br label %153

153:                                              ; preds = %139, %135
  br label %154

154:                                              ; preds = %153, %110
  %155 = load i32, i32* %9, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %21
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.adv_info* @hci_find_adv_instance(%struct.hci_dev*, i32) #1

declare dso_local i32 @get_adv_instance_flags(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_get_adv_discov_flags(%struct.hci_dev*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i64 @ext_adv_capable(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
