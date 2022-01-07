; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_set_public.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_arp.c_arp_req_set_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.arpreq = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATF_COM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.arpreq*, %struct.net_device*)* @arp_req_set_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_req_set_public(%struct.net* %0, %struct.arpreq* %1, %struct.net_device* %2) #0 {
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
  %11 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %10, i32 0, i32 3
  %12 = bitcast i32* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 4
  store i64 %15, i64* %8, align 8
  %16 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %17 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %16, i32 0, i32 2
  %18 = bitcast i32* %17 to %struct.sockaddr_in*
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 4
  store i64 %21, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = call i64 @htonl(i32 -1)
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %24, %3
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  %35 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %36 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATF_COM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %44 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.arpreq*, %struct.arpreq** %6, align 8
  %48 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.net_device* @dev_getbyhwaddr_rcu(%struct.net* %42, i32 %46, i32 %50)
  store %struct.net_device* %51, %struct.net_device** %7, align 8
  %52 = load %struct.net_device*, %struct.net_device** %7, align 8
  %53 = icmp ne %struct.net_device* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %34, %31
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.net*, %struct.net** %5, align 8
  %63 = load %struct.net_device*, %struct.net_device** %7, align 8
  %64 = call i32 @pneigh_lookup(i32* @arp_tbl, %struct.net* %62, i64* %8, %struct.net_device* %63, i32 1)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOBUFS, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %74

70:                                               ; preds = %58
  %71 = load %struct.net*, %struct.net** %5, align 8
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = call i32 @arp_req_set_proxy(%struct.net* %71, %struct.net_device* %72, i32 1)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %69, %66, %54, %28
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @htonl(i32) #1

declare dso_local %struct.net_device* @dev_getbyhwaddr_rcu(%struct.net*, i32, i32) #1

declare dso_local i32 @pneigh_lookup(i32*, %struct.net*, i64*, %struct.net_device*, i32) #1

declare dso_local i32 @arp_req_set_proxy(%struct.net*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
