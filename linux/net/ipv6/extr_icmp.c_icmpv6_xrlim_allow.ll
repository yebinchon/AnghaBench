; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_icmpv6_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi6 = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dst_entry = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.rt6_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.inet_peer = type { i32 }

@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, %struct.flowi6*)* @icmpv6_xrlim_allow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmpv6_xrlim_allow(%struct.sock* %0, i32 %1, %struct.flowi6* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flowi6*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inet_peer*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.flowi6* %2, %struct.flowi6** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.net*, %struct.net** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @icmpv6_mask_allow(%struct.net* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %25 = call %struct.dst_entry* @ip6_route_output(%struct.net* %22, %struct.sock* %23, %struct.flowi6* %24)
  store %struct.dst_entry* %25, %struct.dst_entry** %9, align 8
  %26 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %27 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.net*, %struct.net** %8, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %33 = call i32 @ip6_dst_idev(%struct.dst_entry* %32)
  %34 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %35 = call i32 @IP6_INC_STATS(%struct.net* %31, i32 %33, i32 %34)
  br label %91

36:                                               ; preds = %21
  %37 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = icmp ne %struct.TYPE_5__* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %43 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_LOOPBACK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %90

51:                                               ; preds = %41, %36
  %52 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %53 = bitcast %struct.dst_entry* %52 to %struct.rt6_info*
  store %struct.rt6_info* %53, %struct.rt6_info** %11, align 8
  %54 = load %struct.net*, %struct.net** %8, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 128
  br i1 %63, label %64, label %73

64:                                               ; preds = %51
  %65 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %66 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 128, %68
  %70 = ashr i32 %69, 5
  %71 = load i32, i32* %12, align 4
  %72 = ashr i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %64, %51
  %74 = load %struct.net*, %struct.net** %8, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.flowi6*, %struct.flowi6** %7, align 8
  %79 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %78, i32 0, i32 0
  %80 = call %struct.inet_peer* @inet_getpeer_v6(i32 %77, i32* %79, i32 1)
  store %struct.inet_peer* %80, %struct.inet_peer** %13, align 8
  %81 = load %struct.inet_peer*, %struct.inet_peer** %13, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @inet_peer_xrlim_allow(%struct.inet_peer* %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load %struct.inet_peer*, %struct.inet_peer** %13, align 8
  %85 = icmp ne %struct.inet_peer* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.inet_peer*, %struct.inet_peer** %13, align 8
  %88 = call i32 @inet_putpeer(%struct.inet_peer* %87)
  br label %89

89:                                               ; preds = %86, %73
  br label %90

90:                                               ; preds = %89, %50
  br label %91

91:                                               ; preds = %90, %30
  %92 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %93 = call i32 @dst_release(%struct.dst_entry* %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %20
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i64 @icmpv6_mask_allow(%struct.net*, i32) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, %struct.sock*, %struct.flowi6*) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local %struct.inet_peer* @inet_getpeer_v6(i32, i32*, i32) #1

declare dso_local i32 @inet_peer_xrlim_allow(%struct.inet_peer*, i32) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
