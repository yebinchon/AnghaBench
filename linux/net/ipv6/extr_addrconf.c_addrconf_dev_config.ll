; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dev_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dev_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_FDDI = common dso_local global i64 0, align 8
@ARPHRD_ARCNET = common dso_local global i64 0, align 8
@ARPHRD_INFINIBAND = common dso_local global i64 0, align 8
@ARPHRD_IEEE1394 = common dso_local global i64 0, align 8
@ARPHRD_TUNNEL6 = common dso_local global i64 0, align 8
@ARPHRD_6LOWPAN = common dso_local global i64 0, align 8
@ARPHRD_IP6GRE = common dso_local global i64 0, align 8
@ARPHRD_IPGRE = common dso_local global i64 0, align 8
@ARPHRD_TUNNEL = common dso_local global i64 0, align 8
@ARPHRD_NONE = common dso_local global i64 0, align 8
@ARPHRD_RAWIP = common dso_local global i64 0, align 8
@IN6_ADDR_GEN_MODE_EUI64 = common dso_local global i64 0, align 8
@IN6_ADDR_GEN_MODE_RANDOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @addrconf_dev_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addrconf_dev_config(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = call i32 (...) @ASSERT_RTNL()
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ARPHRD_ETHER, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %77

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ARPHRD_FDDI, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %10
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ARPHRD_ARCNET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %16
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ARPHRD_INFINIBAND, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ARPHRD_IEEE1394, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ARPHRD_TUNNEL6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ARPHRD_6LOWPAN, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ARPHRD_IP6GRE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %46
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ARPHRD_IPGRE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ARPHRD_TUNNEL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ARPHRD_NONE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ARPHRD_RAWIP, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %105

77:                                               ; preds = %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10, %1
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = call %struct.inet6_dev* @addrconf_add_dev(%struct.net_device* %78)
  store %struct.inet6_dev* %79, %struct.inet6_dev** %3, align 8
  %80 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %81 = call i64 @IS_ERR(%struct.inet6_dev* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %105

84:                                               ; preds = %77
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ARPHRD_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %92 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @IN6_ADDR_GEN_MODE_EUI64, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load i64, i64* @IN6_ADDR_GEN_MODE_RANDOM, align 8
  %99 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %100 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %90, %84
  %103 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %104 = call i32 @addrconf_addr_gen(%struct.inet6_dev* %103, i32 0)
  br label %105

105:                                              ; preds = %102, %83, %76
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.inet6_dev* @addrconf_add_dev(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_dev*) #1

declare dso_local i32 @addrconf_addr_gen(%struct.inet6_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
