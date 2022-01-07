; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_change_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_change_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@IFF_DEBUG = common dso_local global i32 0, align 4
@IFF_NOTRAILERS = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@IFF_DYNAMIC = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_PORTSEL = common dso_local global i32 0, align 4
@IFF_AUTOMEDIA = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_VOLATILE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dev_change_flags(%struct.net_device* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @IFF_DEBUG, align 4
  %18 = load i32, i32* @IFF_NOTRAILERS, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IFF_NOARP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IFF_DYNAMIC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IFF_MULTICAST, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IFF_PORTSEL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IFF_AUTOMEDIA, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %16, %29
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_UP, align 4
  %35 = load i32, i32* @IFF_VOLATILE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IFF_PROMISC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %33, %40
  %42 = or i32 %30, %41
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = xor i32 %45, %46
  %48 = load i32, i32* @IFF_MULTICAST, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %3
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load i32, i32* @IFF_MULTICAST, align 4
  %54 = call i32 @dev_change_rx_flags(%struct.net_device* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %3
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @dev_set_rx_mode(%struct.net_device* %56)
  store i32 0, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = xor i32 %58, %59
  %61 = load i32, i32* @IFF_UP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @IFF_UP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = call i32 @__dev_close(%struct.net_device* %70)
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %75 = call i32 @__dev_open(%struct.net_device* %73, %struct.netlink_ext_ack* %74)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %72, %69
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %78, %81
  %83 = load i32, i32* @IFF_PROMISC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IFF_PROMISC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 -1
  store i32 %92, i32* %9, align 4
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @IFF_PROMISC, align 4
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = xor i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @__dev_set_promiscuity(%struct.net_device* %101, i32 %102, i32 0)
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %86
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = call i32 @dev_set_rx_mode(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %86
  br label %116

116:                                              ; preds = %115, %77
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %117, %120
  %122 = load i32, i32* @IFF_ALLMULTI, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %116
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @IFF_ALLMULTI, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 -1
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* @IFF_ALLMULTI, align 4
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = xor i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @__dev_set_allmulti(%struct.net_device* %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %125, %116
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @dev_change_rx_flags(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @__dev_close(%struct.net_device*) #1

declare dso_local i32 @__dev_open(%struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i64 @__dev_set_promiscuity(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_set_allmulti(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
