; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_pkt_set_htuple_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_pkt_set_htuple_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.hmark_tuple = type { i32, i32, i64 }
%struct.xt_hmark_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iphdr = type { i64, i32, i32, i32, i32 }

@IPPROTO_ICMP = common dso_local global i64 0, align 8
@XT_HMARK_METHOD_L3 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.hmark_tuple*, %struct.xt_hmark_info*)* @hmark_pkt_set_htuple_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmark_pkt_set_htuple_ipv4(%struct.sk_buff* %0, %struct.hmark_tuple* %1, %struct.xt_hmark_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hmark_tuple*, align 8
  %7 = alloca %struct.xt_hmark_info*, align 8
  %8 = alloca %struct.iphdr*, align 8
  %9 = alloca %struct.iphdr, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.hmark_tuple* %1, %struct.hmark_tuple** %6, align 8
  store %struct.xt_hmark_info* %2, %struct.xt_hmark_info** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @skb_network_offset(%struct.sk_buff* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = inttoptr i64 %18 to %struct.iphdr*
  store %struct.iphdr* %19, %struct.iphdr** %8, align 8
  %20 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %21 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPPROTO_ICMP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %28 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %29, 4
  %31 = call i64 @get_inner_hdr(%struct.sk_buff* %26, i32 %30, i32* %10)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.iphdr* @skb_header_pointer(%struct.sk_buff* %34, i32 %35, i32 24, %struct.iphdr* %9)
  store %struct.iphdr* %36, %struct.iphdr** %8, align 8
  %37 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %38 = icmp eq %struct.iphdr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %105

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %25
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %44 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %7, align 8
  %47 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %45, %49
  %51 = load %struct.hmark_tuple*, %struct.hmark_tuple** %6, align 8
  %52 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %7, align 8
  %57 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %55, %59
  %61 = load %struct.hmark_tuple*, %struct.hmark_tuple** %6, align 8
  %62 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %7, align 8
  %64 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @XT_HMARK_METHOD_L3, align 4
  %67 = call i32 @XT_HMARK_FLAG(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %105

71:                                               ; preds = %42
  %72 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hmark_tuple*, %struct.hmark_tuple** %6, align 8
  %76 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.hmark_tuple*, %struct.hmark_tuple** %6, align 8
  %78 = getelementptr inbounds %struct.hmark_tuple, %struct.hmark_tuple* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IPPROTO_ICMP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %105

83:                                               ; preds = %71
  %84 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %85 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IP_MF, align 4
  %88 = load i32, i32* @IP_OFFSET, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @htons(i32 %89)
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %105

94:                                               ; preds = %83
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load %struct.iphdr*, %struct.iphdr** %8, align 8
  %97 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.hmark_tuple*, %struct.hmark_tuple** %6, align 8
  %103 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %7, align 8
  %104 = call i32 @hmark_set_tuple_ports(%struct.sk_buff* %95, i32 %101, %struct.hmark_tuple* %102, %struct.xt_hmark_info* %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %94, %93, %82, %70, %39
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @get_inner_hdr(%struct.sk_buff*, i32, i32*) #1

declare dso_local %struct.iphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.iphdr*) #1

declare dso_local i32 @XT_HMARK_FLAG(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @hmark_set_tuple_ports(%struct.sk_buff*, i32, %struct.hmark_tuple*, %struct.xt_hmark_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
