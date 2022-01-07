; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_setup_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_6lowpan.c_setup_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.lowpan_btle_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.lowpan_peer = type { %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }

@.str = private unnamed_addr constant [14 x i8] c"dest IP %pI6c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no such peer\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32*, i32*)* @setup_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_header(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.ipv6hdr*, align 8
  %12 = alloca %struct.lowpan_btle_dev*, align 8
  %13 = alloca %struct.lowpan_peer*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %17)
  store %struct.ipv6hdr* %18, %struct.ipv6hdr** %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.lowpan_btle_dev* @lowpan_btle_dev(%struct.net_device* %19)
  store %struct.lowpan_btle_dev* %20, %struct.lowpan_btle_dev** %12, align 8
  %21 = load %struct.ipv6hdr*, %struct.ipv6hdr** %11, align 8
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 0
  %23 = call i32 @memcpy(%struct.in6_addr* %10, i32* %22, i32 4)
  %24 = call i64 @ipv6_addr_is_multicast(%struct.in6_addr* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_6__* @lowpan_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %29, align 8
  store i32* null, i32** %14, align 8
  br label %63

30:                                               ; preds = %4
  %31 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.in6_addr* %10)
  %32 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %12, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call %struct.lowpan_peer* @peer_lookup_dst(%struct.lowpan_btle_dev* %32, %struct.in6_addr* %10, %struct.sk_buff* %33)
  store %struct.lowpan_peer* %34, %struct.lowpan_peer** %13, align 8
  %35 = load %struct.lowpan_peer*, %struct.lowpan_peer** %13, align 8
  %36 = icmp ne %struct.lowpan_peer* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %83

41:                                               ; preds = %30
  %42 = load %struct.lowpan_peer*, %struct.lowpan_peer** %13, align 8
  %43 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %14, align 8
  %45 = load %struct.lowpan_peer*, %struct.lowpan_peer** %13, align 8
  %46 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.lowpan_peer*, %struct.lowpan_peer** %13, align 8
  %52 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.lowpan_peer*, %struct.lowpan_peer** %13, align 8
  %58 = getelementptr inbounds %struct.lowpan_peer, %struct.lowpan_peer* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call %struct.TYPE_6__* @lowpan_cb(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %62, align 8
  store i32 1, i32* %16, align 4
  br label %63

63:                                               ; preds = %41, %26
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load %struct.net_device*, %struct.net_device** %7, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = load %struct.lowpan_btle_dev*, %struct.lowpan_btle_dev** %12, align 8
  %68 = getelementptr inbounds %struct.lowpan_btle_dev, %struct.lowpan_btle_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @lowpan_header_compress(%struct.sk_buff* %64, %struct.net_device* %65, i32* %66, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load %struct.net_device*, %struct.net_device** %7, align 8
  %75 = load i32, i32* @ETH_P_IPV6, align 4
  %76 = call i32 @dev_hard_header(%struct.sk_buff* %73, %struct.net_device* %74, i32 %75, i32* null, i32* null, i32 0)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %63
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %79, %37
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.lowpan_btle_dev* @lowpan_btle_dev(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local i64 @ipv6_addr_is_multicast(%struct.in6_addr*) #1

declare dso_local %struct.TYPE_6__* @lowpan_cb(%struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.lowpan_peer* @peer_lookup_dst(%struct.lowpan_btle_dev*, %struct.in6_addr*, %struct.sk_buff*) #1

declare dso_local i32 @lowpan_header_compress(%struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
