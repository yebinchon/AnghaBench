; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_set_ifa.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_dev_set_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.dn_ifaddr = type { i32, %struct.dn_dev* }
%struct.dn_dev = type { i32 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@RT_SCOPE_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dn_ifaddr*)* @dn_dev_set_ifa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dev_set_ifa(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dn_ifaddr*, align 8
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.dn_dev* @rtnl_dereference(i32 %11)
  store %struct.dn_dev* %12, %struct.dn_dev** %6, align 8
  %13 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %14 = icmp eq %struct.dn_dev* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.dn_dev* @dn_dev_create(%struct.net_device* %16, i32* %8)
  store %struct.dn_dev* %17, %struct.dn_dev** %6, align 8
  %18 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %19 = icmp eq %struct.dn_dev* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %48

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %2
  %24 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %25 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %26 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %25, i32 0, i32 1
  store %struct.dn_dev* %24, %struct.dn_dev** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_LOOPBACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i32, i32* @RT_SCOPE_HOST, align 4
  %35 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %36 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %39 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %40 = call i32 @dn_dev_insert_ifa(%struct.dn_dev* %38, %struct.dn_ifaddr* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %5, align 8
  %45 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.dn_dev* @rtnl_dereference(i32) #1

declare dso_local %struct.dn_dev* @dn_dev_create(%struct.net_device*, i32*) #1

declare dso_local i32 @dn_dev_insert_ifa(%struct.dn_dev*, %struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
