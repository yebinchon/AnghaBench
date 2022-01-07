; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_wpan_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_iface.c_mac802154_wpan_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.ieee802154_sub_if_data = type { %struct.wpan_dev }
%struct.wpan_dev = type { i8*, i8* }
%struct.sockaddr_ieee802154 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@ENOIOCTLCMD = common dso_local global i32 0, align 4
@IEEE802154_PANID_BROADCAST = common dso_local global i8* null, align 8
@IEEE802154_ADDR_BROADCAST = common dso_local global i8* null, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Using DEBUGing ioctl SIOCSIFADDR isn't recommended!\0A\00", align 1
@IEEE802154_ADDR_UNDEF = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @mac802154_wpan_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac802154_wpan_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802154_sub_if_data*, align 8
  %9 = alloca %struct.wpan_dev*, align 8
  %10 = alloca %struct.sockaddr_ieee802154*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device* %14)
  store %struct.ieee802154_sub_if_data* %15, %struct.ieee802154_sub_if_data** %8, align 8
  %16 = load %struct.ieee802154_sub_if_data*, %struct.ieee802154_sub_if_data** %8, align 8
  %17 = getelementptr inbounds %struct.ieee802154_sub_if_data, %struct.ieee802154_sub_if_data* %16, i32 0, i32 0
  store %struct.wpan_dev* %17, %struct.wpan_dev** %9, align 8
  %18 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %20, %struct.sockaddr_ieee802154** %10, align 8
  %21 = load i32, i32* @ENOIOCTLCMD, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 129
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 128
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %136

30:                                               ; preds = %25, %3
  %31 = call i32 (...) @rtnl_lock()
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %133 [
    i32 129, label %33
    i32 128, label %68
  ]

33:                                               ; preds = %30
  %34 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %35 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @le16_to_cpu(i8* %36)
  store i8* %37, i8** %12, align 8
  %38 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %39 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @le16_to_cpu(i8* %40)
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** @IEEE802154_PANID_BROADCAST, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** @IEEE802154_ADDR_BROADCAST, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %33
  %50 = load i32, i32* @EADDRNOTAVAIL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %133

52:                                               ; preds = %45
  %53 = load i32, i32* @AF_IEEE802154, align 4
  %54 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %55 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %57 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %58 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %62 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %66 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  store i32 0, i32* %11, align 4
  br label %133

68:                                               ; preds = %30
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i32 @netif_running(%struct.net_device* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = call i32 (...) @rtnl_unlock()
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %136

76:                                               ; preds = %68
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = call i32 @dev_warn(i32* %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %81 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AF_IEEE802154, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %113, label %85

85:                                               ; preds = %76
  %86 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %87 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %113, label %92

92:                                               ; preds = %85
  %93 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %94 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @IEEE802154_PANID_BROADCAST, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %113, label %99

99:                                               ; preds = %92
  %100 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %101 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @IEEE802154_ADDR_BROADCAST, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %108 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** @IEEE802154_ADDR_UNDEF, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %106, %99, %92, %85, %76
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %11, align 4
  br label %133

116:                                              ; preds = %106
  %117 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %118 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @cpu_to_le16(i8* %120)
  %122 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %123 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %10, align 8
  %125 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @cpu_to_le16(i8* %127)
  %129 = load %struct.wpan_dev*, %struct.wpan_dev** %9, align 8
  %130 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.net_device*, %struct.net_device** %5, align 8
  %132 = call i32 @mac802154_wpan_update_llsec(%struct.net_device* %131)
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %30, %116, %113, %52, %49
  %134 = call i32 (...) @rtnl_unlock()
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %72, %28
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.ieee802154_sub_if_data* @IEEE802154_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i8* @cpu_to_le16(i8*) #1

declare dso_local i32 @mac802154_wpan_update_llsec(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
