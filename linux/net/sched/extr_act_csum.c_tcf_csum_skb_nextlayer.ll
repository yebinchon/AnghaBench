; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_skb_nextlayer.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_csum.c_tcf_csum_skb_nextlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sk_buff*, i32, i32, i32)* @tcf_csum_skb_nextlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tcf_csum_skb_nextlayer(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @skb_network_offset(%struct.sk_buff* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add i32 %18, %19
  %21 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i64 @skb_try_make_writable(%struct.sk_buff* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %23, %4
  store i8* null, i8** %5, align 8
  br label %42

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i64 @skb_network_header(%struct.sk_buff* %36)
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %35, %34
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_try_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
