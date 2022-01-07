; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_generate_eui64.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_generate_eui64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.net_device*)* @ipv6_generate_eui64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_generate_eui64(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %41 [
    i32 137, label %9
    i32 136, label %9
    i32 138, label %13
    i32 134, label %17
    i32 130, label %21
    i32 132, label %25
    i32 129, label %25
    i32 139, label %29
    i32 135, label %33
    i32 128, label %37
    i32 133, label %37
    i32 131, label %37
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call i32 @addrconf_ifid_eui48(i32* %10, %struct.net_device* %11)
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @addrconf_ifid_arcnet(i32* %14, %struct.net_device* %15)
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @addrconf_ifid_infiniband(i32* %18, %struct.net_device* %19)
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i32 @addrconf_ifid_sit(i32* %22, %struct.net_device* %23)
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %2, %2
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @addrconf_ifid_gre(i32* %26, %struct.net_device* %27)
  store i32 %28, i32* %3, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @addrconf_ifid_6lowpan(i32* %30, %struct.net_device* %31)
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @addrconf_ifid_ieee1394(i32* %34, %struct.net_device* %35)
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %2, %2, %2
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = call i32 @addrconf_ifid_ip6tnl(i32* %38, %struct.net_device* %39)
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %13, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @addrconf_ifid_eui48(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_arcnet(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_infiniband(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_sit(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_gre(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_6lowpan(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_ieee1394(i32*, %struct.net_device*) #1

declare dso_local i32 @addrconf_ifid_ip6tnl(i32*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
