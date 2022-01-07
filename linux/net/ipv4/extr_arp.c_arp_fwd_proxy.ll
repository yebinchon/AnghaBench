; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_fwd_proxy.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_fwd_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_device*, %struct.net_device*, %struct.rtable*)* @arp_fwd_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_fwd_proxy(%struct.in_device* %0, %struct.net_device* %1, %struct.rtable* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.in_device* %0, %struct.in_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.rtable* %2, %struct.rtable** %7, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.rtable*, %struct.rtable** %7, align 8
  %12 = getelementptr inbounds %struct.rtable, %struct.rtable* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp eq %struct.net_device* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.in_device*, %struct.in_device** %5, align 8
  %20 = call i32 @IN_DEV_PROXY_ARP(%struct.in_device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %54

23:                                               ; preds = %18
  %24 = load %struct.in_device*, %struct.in_device** %5, align 8
  %25 = call i32 @IN_DEV_MEDIUM_ID(%struct.in_device* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %54

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %54

33:                                               ; preds = %29
  %34 = load %struct.rtable*, %struct.rtable** %7, align 8
  %35 = getelementptr inbounds %struct.rtable, %struct.rtable* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  %38 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %37)
  store %struct.in_device* %38, %struct.in_device** %8, align 8
  %39 = load %struct.in_device*, %struct.in_device** %8, align 8
  %40 = icmp ne %struct.in_device* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.in_device*, %struct.in_device** %8, align 8
  %43 = call i32 @IN_DEV_MEDIUM_ID(%struct.in_device* %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, -1
  br label %51

51:                                               ; preds = %48, %44
  %52 = phi i1 [ false, %44 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %32, %28, %22, %17
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @IN_DEV_PROXY_ARP(%struct.in_device*) #1

declare dso_local i32 @IN_DEV_MEDIUM_ID(%struct.in_device*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
