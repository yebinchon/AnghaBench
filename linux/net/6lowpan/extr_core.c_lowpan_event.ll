; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_core.c_lowpan_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_core.c_lowpan_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64 }
%struct.inet6_dev = type { i32 }
%struct.in6_addr = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ARPHRD_6LOWPAN = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@LOWPAN_LLTYPE_IEEE802154 = common dso_local global i32 0, align 4
@LOWPAN_IPHC_CTX_TABLE_SIZE = common dso_local global i32 0, align 4
@LOWPAN_IPHC_CTX_FLAG_ACTIVE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @lowpan_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca %struct.in6_addr, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ARPHRD_6LOWPAN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %22)
  store %struct.inet6_dev* %23, %struct.inet6_dev** %9, align 8
  %24 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %25 = icmp ne %struct.inet6_dev* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  switch i64 %29, label %72 [
    i64 128, label %30
    i64 130, label %30
    i64 129, label %51
  ]

30:                                               ; preds = %28, %28
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load i32, i32* @LOWPAN_LLTYPE_IEEE802154, align 4
  %33 = call i32 @lowpan_is_ll(%struct.net_device* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = call i32 @addrconf_ifid_802154_6lowpan(i32 %38, %struct.net_device* %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @htonl(i32 -25165824)
  %47 = call i32 @__ipv6_addr_set_half(i32* %45, i32 %46, i32 0)
  %48 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %49 = call i32 @addrconf_add_linklocal(%struct.inet6_dev* %48, %struct.in6_addr* %10, i32 0)
  br label %50

50:                                               ; preds = %42, %35, %30
  br label %74

51:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @LOWPAN_IPHC_CTX_TABLE_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* @LOWPAN_IPHC_CTX_FLAG_ACTIVE, align 4
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = call %struct.TYPE_6__* @lowpan_dev(%struct.net_device* %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %57, i32* %66)
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %52

71:                                               ; preds = %52
  br label %74

72:                                               ; preds = %28
  %73 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %71, %50
  %75 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %26, %19
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

declare dso_local i32 @lowpan_is_ll(%struct.net_device*, i32) #1

declare dso_local i32 @addrconf_ifid_802154_6lowpan(i32, %struct.net_device*) #1

declare dso_local i32 @__ipv6_addr_set_half(i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @addrconf_add_linklocal(%struct.inet6_dev*, %struct.in6_addr*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @lowpan_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
