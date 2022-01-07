; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_mc_map.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_mc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arp_mc_map(i32 %0, i32* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.net_device*, %struct.net_device** %8, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 132, label %13
    i32 131, label %13
    i32 130, label %13
    i32 129, label %17
    i32 128, label %24
  ]

13:                                               ; preds = %4, %4, %4
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ip_eth_mc_map(i32 %14, i32* %15)
  store i32 0, i32* %5, align 4
  br label %47

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.net_device*, %struct.net_device** %8, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @ip_ib_mc_map(i32 %18, i32 %21, i32* %22)
  store i32 0, i32* %5, align 4
  br label %47

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ip_ipgre_mc_map(i32 %25, i32 %28, i32* %29)
  store i32 0, i32* %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32* %35, i32 %38, i32 %41)
  store i32 0, i32* %5, align 4
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %34, %24, %17, %13
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @ip_eth_mc_map(i32, i32*) #1

declare dso_local i32 @ip_ib_mc_map(i32, i32, i32*) #1

declare dso_local i32 @ip_ipgre_mc_map(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
