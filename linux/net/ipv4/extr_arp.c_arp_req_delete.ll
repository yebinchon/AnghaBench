; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.arpreq = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATF_PUBL = common dso_local global i32 0, align 4
@RTO_ONLINK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.arpreq*, %struct.net_device*)* @arp_req_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_req_delete(%struct.net* %0, %struct.arpreq* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.arpreq*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.arpreq* %1, %struct.arpreq** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %11 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATF_PUBL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @arp_req_delete_public(%struct.net* %17, %struct.arpreq* %18, %struct.net_device* %19)
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %23 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %22, i32 0, i32 1
  %24 = bitcast i32* %23 to %struct.sockaddr_in*
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.net_device*, %struct.net_device** %7, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %21
  %31 = load %struct.net*, %struct.net** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RTO_ONLINK, align 4
  %34 = call %struct.rtable* @ip_route_output(%struct.net* %31, i32 %32, i32 0, i32 %33, i32 0)
  store %struct.rtable* %34, %struct.rtable** %9, align 8
  %35 = load %struct.rtable*, %struct.rtable** %9, align 8
  %36 = call i64 @IS_ERR(%struct.rtable* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.rtable*, %struct.rtable** %9, align 8
  %40 = call i32 @PTR_ERR(%struct.rtable* %39)
  store i32 %40, i32* %4, align 4
  br label %58

41:                                               ; preds = %30
  %42 = load %struct.rtable*, %struct.rtable** %9, align 8
  %43 = getelementptr inbounds %struct.rtable, %struct.rtable* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  store %struct.net_device* %45, %struct.net_device** %7, align 8
  %46 = load %struct.rtable*, %struct.rtable** %9, align 8
  %47 = call i32 @ip_rt_put(%struct.rtable* %46)
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %21
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @arp_invalidate(%struct.net_device* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %50, %38, %16
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @arp_req_delete_public(%struct.net*, %struct.arpreq*, %struct.net_device*) #1

declare dso_local %struct.rtable* @ip_route_output(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @arp_invalidate(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
