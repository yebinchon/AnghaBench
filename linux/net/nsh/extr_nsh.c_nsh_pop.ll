; ModuleID = '/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_pop.c'
source_filename = "/home/carl/AnghaBench/linux/net/nsh/extr_nsh.c_nsh_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.nshhdr = type { i32 }

@NSH_BASE_HDR_LEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsh_pop(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nshhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i64, i64* @NSH_BASE_HDR_LEN, align 8
  %9 = call i32 @pskb_may_pull(%struct.sk_buff* %7, i64 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nshhdr*
  store %struct.nshhdr* %18, %struct.nshhdr** %4, align 8
  %19 = load %struct.nshhdr*, %struct.nshhdr** %4, align 8
  %20 = call i64 @nsh_hdr_len(%struct.nshhdr* %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @NSH_BASE_HDR_LEN, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %58

27:                                               ; preds = %14
  %28 = load %struct.nshhdr*, %struct.nshhdr** %4, align 8
  %29 = getelementptr inbounds %struct.nshhdr, %struct.nshhdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @tun_p_to_eth_p(i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %58

39:                                               ; preds = %27
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EAFNOSUPPORT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %58

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @skb_pull_rcsum(%struct.sk_buff* %46, i64 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @skb_reset_mac_header(%struct.sk_buff* %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @skb_reset_network_header(%struct.sk_buff* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %54 = call i32 @skb_reset_mac_len(%struct.sk_buff* %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %42, %36, %24, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @nsh_hdr_len(%struct.nshhdr*) #1

declare dso_local i64 @tun_p_to_eth_p(i32) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_len(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
