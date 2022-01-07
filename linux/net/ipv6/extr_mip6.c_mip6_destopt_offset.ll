; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_offset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ipv6_opt_hdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mip6: hao exists already, override\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, i32**)* @mip6_destopt_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_destopt_offset(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipv6_opt_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 4, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 1
  %16 = bitcast %struct.TYPE_2__* %15 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %16, %struct.ipv6_opt_hdr** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i8* @skb_network_header(%struct.sk_buff* %17)
  store i8* %18, i8** %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i8* @skb_tail_pointer(%struct.sk_buff* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i8* @skb_network_header(%struct.sk_buff* %21)
  %23 = ptrtoint i8* %20 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  br label %31

31:                                               ; preds = %59, %3
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %57 [
    i32 129, label %40
    i32 128, label %41
    i32 130, label %42
  ]

40:                                               ; preds = %36
  br label %59

41:                                               ; preds = %36
  store i32 1, i32* %12, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IPV6_TLV_HAO, align 4
  %46 = call i32 @ipv6_find_tlv(%struct.sk_buff* %43, i32 %44, i32 %45)
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %42
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %76

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %76

59:                                               ; preds = %56, %41, %40
  %60 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %61 = call i64 @ipv6_optlen(%struct.ipv6_opt_hdr* %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  %66 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %66, i32 0, i32 0
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = bitcast i8* %72 to %struct.ipv6_opt_hdr*
  store %struct.ipv6_opt_hdr* %73, %struct.ipv6_opt_hdr** %9, align 8
  br label %31

74:                                               ; preds = %31
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %57, %54, %48
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_find_tlv(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i64 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
