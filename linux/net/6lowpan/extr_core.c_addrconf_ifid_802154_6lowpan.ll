; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_core.c_addrconf_ifid_802154_6lowpan.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_core.c_addrconf_ifid_802154_6lowpan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wpan_dev = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wpan_dev* }

@IEEE802154_PAN_ID_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addrconf_ifid_802154_6lowpan(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wpan_dev*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.wpan_dev*, %struct.wpan_dev** %11, align 8
  store %struct.wpan_dev* %12, %struct.wpan_dev** %6, align 8
  %13 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %14 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @lowpan_802154_is_valid_src_short_addr(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

19:                                               ; preds = %2
  %20 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %21 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @cpu_to_le16(i32 0)
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %27 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @cpu_to_le16(i32 0)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %65

32:                                               ; preds = %25, %19
  %33 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %34 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @IEEE802154_PAN_ID_BROADCAST, align 4
  %37 = call i64 @cpu_to_le16(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @memset(i32* %40, i32 0, i32 2)
  br label %47

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %45 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %44, i32 0, i32 1
  %46 = call i32 @ieee802154_le16_to_be16(i32* %43, i64* %45)
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, -3
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 255, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 254, i32* %57, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load %struct.wpan_dev*, %struct.wpan_dev** %6, align 8
  %63 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %62, i32 0, i32 0
  %64 = call i32 @ieee802154_le16_to_be16(i32* %61, i64* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %47, %31, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_4__* @lowpan_802154_dev(%struct.net_device*) #1

declare dso_local i32 @lowpan_802154_is_valid_src_short_addr(i64) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ieee802154_le16_to_be16(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
