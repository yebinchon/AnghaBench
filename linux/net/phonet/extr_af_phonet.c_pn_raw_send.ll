; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_raw_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_raw_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_PHONET_HEADER = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PACKET_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.net_device*, i32, i32, i32)* @pn_raw_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_raw_send(i8* %0, i32 %1, %struct.net_device* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %54

26:                                               ; preds = %6
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = call i32 @dev_net(%struct.net_device* %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pn_addr(i32 %29)
  %31 = call i64 @phonet_address_lookup(i32 %28, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @PACKET_LOOPBACK, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %39 = load i64, i64* @MAX_PHONET_HEADER, align 8
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @__skb_put(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %44, i8* %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @pn_send(%struct.sk_buff* %48, %struct.net_device* %49, i32 %50, i32 %51, i32 %52, i32 1)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %37, %23
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @phonet_address_lookup(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @pn_addr(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @pn_send(%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
