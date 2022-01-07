; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_return_dm.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_subr.c_ax25_return_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_DM = common dso_local global i8 0, align 1
@AX25_PF = common dso_local global i8 0, align 1
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_MODULUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_return_dm(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp eq %struct.net_device* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %59

15:                                               ; preds = %4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %9, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %59

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skb_reserve(%struct.sk_buff* %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = call i32 @skb_reset_network_header(%struct.sk_buff* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @ax25_digi_invert(i32* %32, i32* %11)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = call i8* @skb_put(%struct.sk_buff* %34, i32 1)
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* @AX25_DM, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* @AX25_PF, align 1
  %39 = sext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %10, align 8
  store i8 %41, i8* %42, align 1
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @ax25_addr_size(i32* %44)
  %46 = call i8* @skb_push(%struct.sk_buff* %43, i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @AX25_RESPONSE, align 4
  %51 = load i32, i32* @AX25_MODULUS, align 4
  %52 = call i32 @ax25_addr_build(i8* %47, i32* %48, i32* %49, i32* %11, i32 %50, i32 %51)
  %53 = load i8*, i8** %10, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %10, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @ax25_queue_xmit(%struct.sk_buff* %56, %struct.net_device* %57)
  br label %59

59:                                               ; preds = %24, %23, %14
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ax25_digi_invert(i32*, i32*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @ax25_addr_size(i32*) #1

declare dso_local i32 @ax25_addr_build(i8*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @ax25_queue_xmit(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
