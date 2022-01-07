; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_alloc_iucv_recv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c_alloc_iucv_recv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"alloc of recv iucv skb len=%lu failed with errcode=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i64)* @alloc_iucv_recv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_iucv_recv_skb(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* %4, align 8
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = load i64, i64* %3, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %4, align 8
  br label %20

20:                                               ; preds = %12, %10
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %24, %25
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = load i32, i32* @GFP_DMA, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.sk_buff* @alloc_skb_with_frags(i64 %23, i64 %26, i32 0, i32* %6, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %2, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @WARN_ONCE(i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %20
  %41 = load i64, i64* %3, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @skb_reserve(%struct.sk_buff* %44, i64 %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @skb_put(%struct.sk_buff* %48, i64 %49)
  %51 = load i64, i64* %2, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 %54, %55
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %20
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %60
}

declare dso_local %struct.sk_buff* @alloc_skb_with_frags(i64, i64, i32, i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
