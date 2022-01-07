; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_recover_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_llsec.c_llsec_recover_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac802154_llsec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.ieee802154_addr = type { i64, i32, i32, i32 }

@IEEE802154_ADDR_BROADCAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ADDR_UNDEF = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac802154_llsec*, %struct.ieee802154_addr*)* @llsec_recover_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llsec_recover_addr(%struct.mac802154_llsec* %0, %struct.ieee802154_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac802154_llsec*, align 8
  %5 = alloca %struct.ieee802154_addr*, align 8
  %6 = alloca i64, align 8
  store %struct.mac802154_llsec* %0, %struct.mac802154_llsec** %4, align 8
  store %struct.ieee802154_addr* %1, %struct.ieee802154_addr** %5, align 8
  %7 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %8 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %12 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %16 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @IEEE802154_ADDR_BROADCAST, align 4
  %19 = call i64 @cpu_to_le16(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @IEEE802154_ADDR_UNDEF, align 4
  %27 = call i64 @cpu_to_le16(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %31 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %35 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %37 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %38 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.mac802154_llsec*, %struct.mac802154_llsec** %4, align 8
  %41 = getelementptr inbounds %struct.mac802154_llsec, %struct.mac802154_llsec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %45 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %47 = load %struct.ieee802154_addr*, %struct.ieee802154_addr** %5, align 8
  %48 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %39, %29
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
