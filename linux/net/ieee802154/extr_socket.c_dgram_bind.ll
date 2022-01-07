; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ieee802154 = type { i64, i32 }
%struct.ieee802154_addr = type { i32 }
%struct.dgram_sock = type { i32, %struct.ieee802154_addr }
%struct.net_device = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ARPHRD_IEEE802154 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @dgram_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_bind(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_ieee802154*, align 8
  %8 = alloca %struct.ieee802154_addr, align 4
  %9 = alloca %struct.dgram_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %13, %struct.sockaddr_ieee802154** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.dgram_sock* @dgram_sk(%struct.sock* %14)
  store %struct.dgram_sock* %15, %struct.dgram_sock** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call i32 @lock_sock(%struct.sock* %18)
  %20 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %21 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %7, align 8
  %28 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_IEEE802154, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %64

33:                                               ; preds = %26
  %34 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %7, align 8
  %35 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %34, i32 0, i32 1
  %36 = call i32 @ieee802154_addr_from_sa(%struct.ieee802154_addr* %8, i32* %35)
  %37 = load %struct.sock*, %struct.sock** %4, align 8
  %38 = call i32 @sock_net(%struct.sock* %37)
  %39 = call %struct.net_device* @ieee802154_get_dev(i32 %38, %struct.ieee802154_addr* %8)
  store %struct.net_device* %39, %struct.net_device** %11, align 8
  %40 = load %struct.net_device*, %struct.net_device** %11, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.net_device*, %struct.net_device** %11, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ARPHRD_IEEE802154, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %61

54:                                               ; preds = %45
  %55 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %56 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %55, i32 0, i32 1
  %57 = bitcast %struct.ieee802154_addr* %56 to i8*
  %58 = bitcast %struct.ieee802154_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 4, i1 false)
  %59 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %60 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.net_device*, %struct.net_device** %11, align 8
  %63 = call i32 @dev_put(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %61, %42, %32, %25
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call i32 @release_sock(%struct.sock* %65)
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local %struct.dgram_sock* @dgram_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ieee802154_addr_from_sa(%struct.ieee802154_addr*, i32*) #1

declare dso_local %struct.net_device* @ieee802154_get_dev(i32, %struct.ieee802154_addr*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
