; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_ieee802154_match_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_socket.c_ieee802154_match_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dgram_sock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@IEEE802154_ADDR_LONG = common dso_local global i64 0, align 8
@IEEE802154_ADDR_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, %struct.dgram_sock*)* @ieee802154_match_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_match_sock(i64 %0, i64 %1, i64 %2, %struct.dgram_sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dgram_sock*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.dgram_sock* %3, %struct.dgram_sock** %9, align 8
  %10 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %11 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %53

15:                                               ; preds = %4
  %16 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %17 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE802154_ADDR_LONG, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %25 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %53

30:                                               ; preds = %22, %15
  %31 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %32 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE802154_ADDR_SHORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %40 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.dgram_sock*, %struct.dgram_sock** %9, align 8
  %47 = getelementptr inbounds %struct.dgram_sock, %struct.dgram_sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %53

52:                                               ; preds = %44, %37, %30
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %29, %14
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
