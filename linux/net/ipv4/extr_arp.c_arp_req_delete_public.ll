; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_delete_public.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_delete_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.arpreq = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@arp_tbl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.arpreq*, %struct.net_device*)* @arp_req_delete_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_req_delete_public(%struct.net* %0, %struct.arpreq* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.arpreq*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.arpreq* %1, %struct.arpreq** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %10 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %11 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 4
  store i64 %15, i64* %8, align 8
  %16 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %17 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to %struct.sockaddr_in*
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i64 @htonl(i32 -1)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.net*, %struct.net** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call i32 @pneigh_delete(i32* @arp_tbl, %struct.net* %26, i64* %8, %struct.net_device* %27)
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %3
  %30 = load i64, i64* %9, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = call i32 @arp_req_set_proxy(%struct.net* %36, %struct.net_device* %37, i32 0)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %32, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @pneigh_delete(i32*, %struct.net*, i64*, %struct.net_device*) #1

declare dso_local i32 @arp_req_set_proxy(%struct.net*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
