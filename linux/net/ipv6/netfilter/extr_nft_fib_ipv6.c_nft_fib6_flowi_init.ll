; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_flowi_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_fib_ipv6.c_nft_fib6_flowi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowi6 = type { i32, i32, i32, i32, i32 }
%struct.nft_fib = type { i32 }
%struct.nft_pktinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ipv6hdr = type { i32, i32 }

@NFTA_FIB_F_DADDR = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@NFTA_FIB_F_MARK = common dso_local global i32 0, align 4
@IPV6_FLOWINFO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flowi6*, %struct.nft_fib*, %struct.nft_pktinfo*, %struct.net_device*, %struct.ipv6hdr*)* @nft_fib6_flowi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_fib6_flowi_init(%struct.flowi6* %0, %struct.nft_fib* %1, %struct.nft_pktinfo* %2, %struct.net_device* %3, %struct.ipv6hdr* %4) #0 {
  %6 = alloca %struct.flowi6*, align 8
  %7 = alloca %struct.nft_fib*, align 8
  %8 = alloca %struct.nft_pktinfo*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.flowi6* %0, %struct.flowi6** %6, align 8
  store %struct.nft_fib* %1, %struct.nft_fib** %7, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  store %struct.ipv6hdr* %4, %struct.ipv6hdr** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %13 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NFTA_FIB_F_DADDR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %23 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %25 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %28 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %40

29:                                               ; preds = %5
  %30 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %31 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %34 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %39 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %18
  %41 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %42 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %41, i32 0, i32 4
  %43 = call i32 @ipv6_addr_type(i32* %42)
  %44 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  br label %61

55:                                               ; preds = %47
  %56 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %8, align 8
  %57 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  br label %61

61:                                               ; preds = %55, %53
  %62 = phi %struct.net_device* [ %54, %53 ], [ %60, %55 ]
  %63 = call i32 @get_ifindex(%struct.net_device* %62)
  %64 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %65 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %40
  %67 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %68 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %67, i32 0, i32 2
  %69 = call i32 @ipv6_addr_type(i32* %68)
  %70 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.nft_fib*, %struct.nft_fib** %7, align 8
  %79 = getelementptr inbounds %struct.nft_fib, %struct.nft_fib* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NFTA_FIB_F_MARK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %8, align 8
  %86 = getelementptr inbounds %struct.nft_pktinfo, %struct.nft_pktinfo* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %91 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %77
  %93 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %94 = bitcast %struct.ipv6hdr* %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @IPV6_FLOWINFO_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.flowi6*, %struct.flowi6** %6, align 8
  %99 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %11, align 4
  ret i32 %100
}

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i32 @get_ifindex(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
