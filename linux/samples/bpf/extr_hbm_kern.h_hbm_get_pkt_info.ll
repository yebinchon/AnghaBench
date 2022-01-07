; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_hbm_kern.h_hbm_get_pkt_info.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_hbm_kern.h_hbm_get_pkt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.hbm_pkt_info = type { i32, i32, i32, i64, i64 }
%struct.iphdr = type { i32, i32, i32 }
%struct.ipv6hdr = type { i32, i32* }

@INET_ECN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__sk_buff*, %struct.hbm_pkt_info*)* @hbm_get_pkt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hbm_get_pkt_info(%struct.__sk_buff* %0, %struct.hbm_pkt_info* %1) #0 {
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca %struct.hbm_pkt_info*, align 8
  %5 = alloca %struct.iphdr, align 4
  %6 = alloca %struct.ipv6hdr*, align 8
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store %struct.hbm_pkt_info* %1, %struct.hbm_pkt_info** %4, align 8
  %7 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %8 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %7, i32 0, i32 4
  store i64 0, i64* %8, align 8
  %9 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %10 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %12 = call i32 @bpf_skb_load_bytes(%struct.__sk_buff* %11, i32 0, %struct.iphdr* %5, i32 12)
  %13 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = bitcast %struct.iphdr* %5 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %17, %struct.ipv6hdr** %6, align 8
  %18 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %19 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %21 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 6
  %24 = zext i1 %23 to i32
  %25 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %26 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %28 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = load i32, i32* @INET_ECN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %36 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %64

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %56

41:                                               ; preds = %37
  %42 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %43 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 6
  %47 = zext i1 %46 to i32
  %48 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %49 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %5, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @INET_ECN_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %55 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %63

56:                                               ; preds = %37
  %57 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %58 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %60 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %62 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %41
  br label %64

64:                                               ; preds = %63, %16
  %65 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %66 = getelementptr inbounds %struct.hbm_pkt_info, %struct.hbm_pkt_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %71 = load %struct.hbm_pkt_info*, %struct.hbm_pkt_info** %4, align 8
  %72 = call i32 @get_tcp_info(%struct.__sk_buff* %70, %struct.hbm_pkt_info* %71)
  br label %73

73:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @bpf_skb_load_bytes(%struct.__sk_buff*, i32, %struct.iphdr*, i32) #1

declare dso_local i32 @get_tcp_info(%struct.__sk_buff*, %struct.hbm_pkt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
