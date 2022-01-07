; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_check_mac_settings.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_ieee802154_check_mac_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wpan_dev = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@IEEE802154_HW_FRAME_RETRIES = common dso_local global i32 0, align 4
@IEEE802154_HW_LBT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_local*, %struct.wpan_dev*, %struct.wpan_dev*)* @ieee802154_check_mac_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_check_mac_settings(%struct.ieee802154_local* %0, %struct.wpan_dev* %1, %struct.wpan_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_local*, align 8
  %6 = alloca %struct.wpan_dev*, align 8
  %7 = alloca %struct.wpan_dev*, align 8
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %5, align 8
  store %struct.wpan_dev* %1, %struct.wpan_dev** %6, align 8
  store %struct.wpan_dev* %2, %struct.wpan_dev** %7, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %10 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %18 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %21 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %141

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %30 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %28
  %37 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %38 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %41 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %36
  %45 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %46 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %49 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %54 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %57 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52, %44, %36
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %141

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %66 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %64
  %73 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %74 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %77 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %82 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %85 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %90 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %93 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %88, %80, %72
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %141

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %64
  %101 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %102 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IEEE802154_HW_FRAME_RETRIES, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %110 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %113 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %141

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119, %100
  %121 = load %struct.ieee802154_local*, %struct.ieee802154_local** %5, align 8
  %122 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IEEE802154_HW_LBT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %120
  %129 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %130 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %133 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %132, i32 0, i32 8
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @EBUSY, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %120
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %136, %116, %96, %60, %24
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @ASSERT_RTNL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
