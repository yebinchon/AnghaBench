; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_insert_ifa.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_insert_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_dev = type { i32, %struct.net_device* }
%struct.net_device = type { i64, i32 }
%struct.dn_ifaddr = type { i64, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@RTM_NEWADDR = common dso_local global i32 0, align 4
@dnaddr_chain = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_dev*, %struct.dn_ifaddr*)* @dn_dev_insert_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dev_insert_ifa(%struct.dn_dev* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_dev*, align 8
  %5 = alloca %struct.dn_ifaddr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.dn_ifaddr*, align 8
  %8 = alloca [6 x i8], align 1
  store %struct.dn_dev* %0, %struct.dn_dev** %4, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %5, align 8
  %9 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %10 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = call i32 (...) @ASSERT_RTNL()
  %13 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %14 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.dn_ifaddr* @rtnl_dereference(i32 %15)
  store %struct.dn_ifaddr* %16, %struct.dn_ifaddr** %7, align 8
  br label %17

17:                                               ; preds = %32, %2
  %18 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %19 = icmp ne %struct.dn_ifaddr* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %17
  %21 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %22 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %25 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %79

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %7, align 8
  %34 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.dn_ifaddr* @rtnl_dereference(i32 %35)
  store %struct.dn_ifaddr* %36, %struct.dn_ifaddr** %7, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ARPHRD_ETHER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %45 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @dn_eth2dn(i32 %49)
  %51 = icmp ne i64 %46, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %54 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %55 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dn_dn2eth(i8* %53, i64 %56)
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %60 = call i32 @dev_mc_add(%struct.net_device* %58, i8* %59)
  br label %61

61:                                               ; preds = %52, %43
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %64 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %67 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dn_dev*, %struct.dn_dev** %4, align 8
  %69 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %72 = call i32 @rcu_assign_pointer(i32 %70, %struct.dn_ifaddr* %71)
  %73 = load i32, i32* @RTM_NEWADDR, align 4
  %74 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %75 = call i32 @dn_ifaddr_notify(i32 %73, %struct.dn_ifaddr* %74)
  %76 = load i32, i32* @NETDEV_UP, align 4
  %77 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %78 = call i32 @blocking_notifier_call_chain(i32* @dnaddr_chain, i32 %76, %struct.dn_ifaddr* %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %62, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.dn_ifaddr* @rtnl_dereference(i32) #1

declare dso_local i64 @dn_eth2dn(i32) #1

declare dso_local i32 @dn_dn2eth(i8*, i64) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i8*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.dn_ifaddr*) #1

declare dso_local i32 @dn_ifaddr_notify(i32, %struct.dn_ifaddr*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.dn_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
