; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_ptp_hello.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_ptp_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_ifaddr = type { i32 }
%struct.sk_buff = type { %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DN_RT_PKT_HELO = common dso_local global i32 0, align 4
@dn_rt_all_rt_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dn_ifaddr*)* @dn_send_ptp_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_send_ptp_hello(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %4, align 8
  store i32 16, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 2
  %17 = add nsw i32 %16, 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @dn_alloc_skb(i32* null, i32 %20, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = icmp eq %struct.sk_buff* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %76

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store %struct.net_device* %31, %struct.net_device** %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @skb_push(%struct.sk_buff* %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 6, %40
  %42 = call i8* @skb_put(%struct.sk_buff* %39, i32 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i32, i32* @DN_RT_PKT_HELO, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  store i8 %44, i8* %45, align 1
  %47 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %48 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %9, align 8
  %54 = load i32, i32* %5, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %65, %30
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %9, align 8
  store i8 -86, i8* %63, align 1
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %58

68:                                               ; preds = %58
  %69 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %70 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dn_dn2eth(i8* %26, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = load i32, i32* @dn_rt_all_rt_mcast, align 4
  %75 = call i32 @dn_rt_finish_output(%struct.sk_buff* %73, i32 %74, i8* %26)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %68, %29
  %77 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %80 [
    i32 0, label %79
    i32 1, label %79
  ]

79:                                               ; preds = %76, %76
  ret void

80:                                               ; preds = %76
  unreachable
}

declare dso_local %struct.sk_buff* @dn_alloc_skb(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_dn2eth(i8*, i32) #1

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
