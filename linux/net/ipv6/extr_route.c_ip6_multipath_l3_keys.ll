; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_multipath_l3_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_route.c_ip6_multipath_l3_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flow_keys = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ipv6hdr = type { i64, i64, i32, i32 }
%struct.icmp6hdr = type { i64, i64, i32, i32 }

@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@ICMPV6_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMPV6_PKT_TOOBIG = common dso_local global i64 0, align 8
@ICMPV6_TIME_EXCEED = common dso_local global i64 0, align 8
@ICMPV6_PARAMPROB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.flow_keys*, %struct.flow_keys*)* @ip6_multipath_l3_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6_multipath_l3_keys(%struct.sk_buff* %0, %struct.flow_keys* %1, %struct.flow_keys* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.flow_keys*, align 8
  %6 = alloca %struct.flow_keys*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca %struct.flow_keys*, align 8
  %10 = alloca %struct.ipv6hdr*, align 8
  %11 = alloca %struct.icmp6hdr*, align 8
  %12 = alloca %struct.ipv6hdr, align 8
  %13 = alloca %struct.icmp6hdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.flow_keys* %1, %struct.flow_keys** %5, align 8
  store %struct.flow_keys* %2, %struct.flow_keys** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %14)
  store %struct.ipv6hdr* %15, %struct.ipv6hdr** %7, align 8
  %16 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  store %struct.ipv6hdr* %16, %struct.ipv6hdr** %8, align 8
  %17 = load %struct.flow_keys*, %struct.flow_keys** %6, align 8
  store %struct.flow_keys* %17, %struct.flow_keys** %9, align 8
  %18 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %19 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @skb_transport_offset(%struct.sk_buff* %29)
  %31 = bitcast %struct.icmp6hdr* %13 to %struct.ipv6hdr*
  %32 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %28, i64 %30, i32 24, %struct.ipv6hdr* %31)
  %33 = bitcast %struct.ipv6hdr* %32 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %33, %struct.icmp6hdr** %11, align 8
  %34 = load %struct.icmp6hdr*, %struct.icmp6hdr** %11, align 8
  %35 = icmp ne %struct.icmp6hdr* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.icmp6hdr*, %struct.icmp6hdr** %11, align 8
  %39 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICMPV6_DEST_UNREACH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.icmp6hdr*, %struct.icmp6hdr** %11, align 8
  %45 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICMPV6_PKT_TOOBIG, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.icmp6hdr*, %struct.icmp6hdr** %11, align 8
  %51 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ICMPV6_TIME_EXCEED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.icmp6hdr*, %struct.icmp6hdr** %11, align 8
  %57 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ICMPV6_PARAMPROB, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %73

62:                                               ; preds = %55, %49, %43, %37
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i64 @skb_transport_offset(%struct.sk_buff* %64)
  %66 = add i64 %65, 24
  %67 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %63, i64 %66, i32 24, %struct.ipv6hdr* %12)
  store %struct.ipv6hdr* %67, %struct.ipv6hdr** %10, align 8
  %68 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  %69 = icmp ne %struct.ipv6hdr* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %73

71:                                               ; preds = %62
  %72 = load %struct.ipv6hdr*, %struct.ipv6hdr** %10, align 8
  store %struct.ipv6hdr* %72, %struct.ipv6hdr** %8, align 8
  store %struct.flow_keys* null, %struct.flow_keys** %9, align 8
  br label %73

73:                                               ; preds = %71, %70, %61, %36, %26
  %74 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %75 = icmp ne %struct.flow_keys* %74, null
  br i1 %75, label %76, label %109

76:                                               ; preds = %73
  %77 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %78 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %83 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %87 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %92 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  %95 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %96 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %100 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.flow_keys*, %struct.flow_keys** %9, align 8
  %103 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %107 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  br label %135

109:                                              ; preds = %73
  %110 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %111 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %114 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %118 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %121 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %125 = call i32 @ip6_flowlabel(%struct.ipv6hdr* %124)
  %126 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %127 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %130 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.flow_keys*, %struct.flow_keys** %5, align 8
  %133 = getelementptr inbounds %struct.flow_keys, %struct.flow_keys* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  br label %135

135:                                              ; preds = %109, %76
  ret void
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.ipv6hdr*) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flowlabel(%struct.ipv6hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
