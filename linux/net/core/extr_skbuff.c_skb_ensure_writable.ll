; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_ensure_writable.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_ensure_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_ensure_writable(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @pskb_may_pull(%struct.sk_buff* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_cloned(%struct.sk_buff* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @skb_clone_writable(%struct.sk_buff* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %13
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @pskb_expand_head(%struct.sk_buff* %24, i32 0, i32 0, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %22, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
