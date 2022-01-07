; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_get_tcp_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_get_tcp_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taprio_sched = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i64 }
%struct.iphdr = type { i32, i64 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taprio_sched*, %struct.sk_buff*)* @get_tcp_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tcp_tstamp(%struct.taprio_sched* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.taprio_sched*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.ipv6hdr, align 8
  store %struct.taprio_sched* %0, %struct.taprio_sched** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @skb_network_offset(%struct.sk_buff* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %12, i32 %13, i32 16, %struct.ipv6hdr* %9)
  store %struct.ipv6hdr* %14, %struct.ipv6hdr** %7, align 8
  %15 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %16 = icmp ne %struct.ipv6hdr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

18:                                               ; preds = %2
  %19 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %20 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %60

23:                                               ; preds = %18
  %24 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %25 = bitcast %struct.ipv6hdr* %24 to %struct.iphdr*
  store %struct.iphdr* %25, %struct.iphdr** %8, align 8
  %26 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 4
  %30 = load i32, i32* %6, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPPROTO_IPV6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %23
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff* %38, i32 %39, i32 16, %struct.ipv6hdr* %9)
  store %struct.ipv6hdr* %40, %struct.ipv6hdr** %7, align 8
  %41 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %42 = icmp ne %struct.ipv6hdr* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %45 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IPPROTO_TCP, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  store i32 0, i32* %3, align 4
  br label %81

50:                                               ; preds = %43
  br label %59

51:                                               ; preds = %23
  %52 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IPPROTO_TCP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %81

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %50
  br label %73

60:                                               ; preds = %18
  %61 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %62 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %67 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IPPROTO_TCP, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %81

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.taprio_sched*, %struct.taprio_sched** %4, align 8
  %78 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ktime_mono_to_any(i32 %76, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %71, %57, %49, %17
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6hdr*) #1

declare dso_local i32 @ktime_mono_to_any(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
