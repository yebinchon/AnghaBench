; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_skb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sk_buff_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %0) #0 {
  %2 = alloca %struct.sk_buff_head*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff_head* %0, %struct.sk_buff_head** %2, align 8
  %5 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %10 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff_head*, %struct.sk_buff_head** %2, align 8
  %12 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %11, i32 0, i32 0
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i64 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %15
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
