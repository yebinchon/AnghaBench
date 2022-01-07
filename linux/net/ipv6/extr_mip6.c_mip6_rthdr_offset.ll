; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_rthdr_offset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_rthdr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.ipv6_rt_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32**)* @mip6_rthdr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_rthdr_offset(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_opt_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipv6_rt_hdr*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 4, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 1
  %17 = bitcast %struct.TYPE_2__* %16 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %17, %struct.ipv6_opt_hdr** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i8* @skb_network_header(%struct.sk_buff* %18)
  store i8* %19, i8** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call i8* @skb_tail_pointer(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i8* @skb_network_header(%struct.sk_buff* %22)
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  br label %32

32:                                               ; preds = %77, %3
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %11, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %92

37:                                               ; preds = %32
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %75 [
    i32 129, label %41
    i32 128, label %42
    i32 130, label %61
  ]

41:                                               ; preds = %37
  br label %77

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 3
  %45 = load i32, i32* %11, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = bitcast i8* %51 to %struct.ipv6_rt_hdr*
  store %struct.ipv6_rt_hdr* %52, %struct.ipv6_rt_hdr** %13, align 8
  %53 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %13, align 8
  %54 = getelementptr inbounds %struct.ipv6_rt_hdr, %struct.ipv6_rt_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %94

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %42
  store i32 1, i32* %12, align 4
  br label %77

61:                                               ; preds = %37
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @IPV6_TLV_HAO, align 4
  %65 = call i32 @ipv6_find_tlv(%struct.sk_buff* %62, i32 %63, i32 %64)
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %94

69:                                               ; preds = %61
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %94

74:                                               ; preds = %69
  br label %77

75:                                               ; preds = %37
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %94

77:                                               ; preds = %74, %60, %41
  %78 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %79 = call i64 @ipv6_optlen(%struct.ipv6_opt_hdr* %78)
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %85 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %84, i32 0, i32 0
  %86 = load i32**, i32*** %7, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = bitcast i8* %90 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %91, %struct.ipv6_opt_hdr** %9, align 8
  br label %32

92:                                               ; preds = %32
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %75, %72, %67, %57
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_find_tlv(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
