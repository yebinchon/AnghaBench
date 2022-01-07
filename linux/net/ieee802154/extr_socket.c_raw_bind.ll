; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_raw_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ieee802154_addr = type { i32 }
%struct.sockaddr_ieee802154 = type { i64, i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @raw_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802154_addr, align 4
  %9 = alloca %struct.sockaddr_ieee802154*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %13, %struct.sockaddr_ieee802154** %9, align 8
  store i32 0, i32* %10, align 4
  store %struct.net_device* null, %struct.net_device** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %22, %struct.sockaddr_ieee802154** %9, align 8
  %23 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_IEEE802154, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %59

31:                                               ; preds = %20
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = call i32 @lock_sock(%struct.sock* %32)
  %34 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %9, align 8
  %35 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %34, i32 0, i32 1
  %36 = call i32 @ieee802154_addr_from_sa(%struct.ieee802154_addr* %8, i32* %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = call %struct.net_device* @ieee802154_get_dev(i32 %38, %struct.ieee802154_addr* %8)
  store %struct.net_device* %39, %struct.net_device** %11, align 8
  %40 = load %struct.net_device*, %struct.net_device** %11, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %55

45:                                               ; preds = %31
  %46 = load %struct.net_device*, %struct.net_device** %11, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = call i32 @sk_dst_reset(%struct.sock* %51)
  %53 = load %struct.net_device*, %struct.net_device** %11, align 8
  %54 = call i32 @dev_put(%struct.net_device* %53)
  br label %55

55:                                               ; preds = %45, %42
  %56 = load %struct.sock*, %struct.sock** %5, align 8
  %57 = call i32 @release_sock(%struct.sock* %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %55, %28, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ieee802154_addr_from_sa(%struct.ieee802154_addr*, i32*) #1

declare dso_local %struct.net_device* @ieee802154_get_dev(i32, %struct.ieee802154_addr*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
