; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32 }
%struct.dn_ifaddr = type { i32, i32, i64, i64, i64 }
%struct.dn_dev = type { i32 }

@decnet_address = common dso_local global i64 0, align 8
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_LOOPBACK = common dso_local global i64 0, align 8
@dn_hiord = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_dev_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dn_ifaddr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load i64, i64* @decnet_address, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.dn_dev* @rtnl_dereference(i32 %11)
  store %struct.dn_dev* %12, %struct.dn_dev** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ARPHRD_ETHER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ARPHRD_LOOPBACK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %95

25:                                               ; preds = %18, %1
  %26 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %27 = icmp eq %struct.dn_dev* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call %struct.dn_dev* @dn_dev_create(%struct.net_device* %29, i32* %7)
  store %struct.dn_dev* %30, %struct.dn_dev** %6, align 8
  %31 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %32 = icmp eq %struct.dn_dev* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %95

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ARPHRD_ETHER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @dn_hiord, align 4
  %46 = call i64 @memcmp(i32 %44, i32 %45, i32 4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %95

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @dn_eth2dn(i32 %52)
  store i64 %53, i64* %4, align 8
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %35
  %55 = load i64, i64* %4, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %95

58:                                               ; preds = %54
  %59 = call %struct.dn_ifaddr* (...) @dn_dev_alloc_ifa()
  store %struct.dn_ifaddr* %59, %struct.dn_ifaddr** %3, align 8
  %60 = icmp eq %struct.dn_ifaddr* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %95

62:                                               ; preds = %58
  %63 = load i64, i64* %4, align 8
  %64 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %65 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %67 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %66, i32 0, i32 4
  store i64 %63, i64* %67, align 8
  %68 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %69 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %71 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %72 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %74 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strcpy(i32 %75, i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %3, align 8
  %82 = call i32 @dn_dev_set_ifa(%struct.net_device* %80, %struct.dn_ifaddr* %81)
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %62
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @dev_hold(%struct.net_device* %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i64 @dn_dev_set_default(%struct.net_device* %88, i32 0)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @dev_put(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %24, %33, %48, %57, %61, %94, %62
  ret void
}

declare dso_local %struct.dn_dev* @rtnl_dereference(i32) #1

declare dso_local %struct.dn_dev* @dn_dev_create(%struct.net_device*, i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @dn_eth2dn(i32) #1

declare dso_local %struct.dn_ifaddr* @dn_dev_alloc_ifa(...) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @dn_dev_set_ifa(%struct.net_device*, %struct.dn_ifaddr*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i64 @dn_dev_set_default(%struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
