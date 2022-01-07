; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_zerocopy_notify_extend.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_zerocopy_notify_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64)* @skb_zerocopy_notify_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_zerocopy_notify_extend(%struct.sk_buff* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock_exterr_skb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %12)
  store %struct.sock_exterr_skb* %13, %struct.sock_exterr_skb** %8, align 8
  %14 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %8, align 8
  %15 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %8, align 8
  %19 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = sub nsw i64 %22, %23
  %25 = add i64 %24, 1
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp uge i64 %28, 4294967296
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add nsw i64 %33, 1
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %8, align 8
  %40 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, %38
  store i64 %43, i64* %41, align 8
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %36, %30
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
