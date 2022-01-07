; ModuleID = '/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_push.c'
source_filename = "/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.nshhdr = type { i64 }

@TUN_P_ETHERNET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_NSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsh_push(%struct.sk_buff* %0, %struct.nshhdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nshhdr*, align 8
  %6 = alloca %struct.nshhdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nshhdr* %1, %struct.nshhdr** %5, align 8
  %9 = load %struct.nshhdr*, %struct.nshhdr** %5, align 8
  %10 = call i64 @nsh_hdr_len(%struct.nshhdr* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @TUN_P_ETHERNET, align 8
  store i64 %16, i64* %8, align 8
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @tun_p_from_eth_p(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EAFNOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @skb_cow_head(%struct.sk_buff* %29, i64 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %65

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @skb_push(%struct.sk_buff* %37, i64 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.nshhdr*
  store %struct.nshhdr* %43, %struct.nshhdr** %6, align 8
  %44 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %45 = load %struct.nshhdr*, %struct.nshhdr** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @memcpy(%struct.nshhdr* %44, %struct.nshhdr* %45, i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %50 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.nshhdr*, %struct.nshhdr** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %51, %struct.nshhdr* %52, i64 %53)
  %55 = load i32, i32* @ETH_P_NSH, align 4
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @skb_reset_mac_header(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @skb_reset_network_header(%struct.sk_buff* %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @skb_reset_mac_len(%struct.sk_buff* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %36, %33, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @nsh_hdr_len(%struct.nshhdr*) #1

declare dso_local i64 @tun_p_from_eth_p(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(%struct.nshhdr*, %struct.nshhdr*, i64) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, %struct.nshhdr*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
