; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_dgram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ieee802154 = type { i64, i32 }
%struct.dgram_sock = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_IEEE802154 = common dso_local global i64 0, align 8
@ENETUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @dgram_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dgram_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ieee802154*, align 8
  %9 = alloca %struct.dgram_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_ieee802154*
  store %struct.sockaddr_ieee802154* %12, %struct.sockaddr_ieee802154** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.dgram_sock* @dgram_sk(%struct.sock* %13)
  store %struct.dgram_sock* %14, %struct.dgram_sock** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %23 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_IEEE802154, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call i32 @lock_sock(%struct.sock* %31)
  %33 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %34 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENETUNREACH, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %42 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %41, i32 0, i32 1
  %43 = load %struct.sockaddr_ieee802154*, %struct.sockaddr_ieee802154** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_ieee802154, %struct.sockaddr_ieee802154* %43, i32 0, i32 1
  %45 = call i32 @ieee802154_addr_from_sa(i32* %42, i32* %44)
  %46 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %47 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = call i32 @release_sock(%struct.sock* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %27, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.dgram_sock* @dgram_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ieee802154_addr_from_sa(i32*, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
