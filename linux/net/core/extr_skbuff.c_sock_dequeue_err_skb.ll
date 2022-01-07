; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_dequeue_err_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_sock_dequeue_err_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32, %struct.sk_buff_head }
%struct.sk_buff_head = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @sock_dequeue_err_skb(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff_head*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 2
  store %struct.sk_buff_head* %9, %struct.sk_buff_head** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %15 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %20 = call %struct.sk_buff* @skb_peek(%struct.sk_buff_head* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @is_icmp_err_skb(%struct.sk_buff* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_4__* @SKB_EXT_ERR(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  br label %36

36:                                               ; preds = %35, %18, %1
  %37 = load %struct.sk_buff_head*, %struct.sk_buff_head** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @is_icmp_err_skb(%struct.sk_buff* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load %struct.sock*, %struct.sock** %2, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %44, %36
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.sock*, %struct.sock** %2, align 8
  %55 = getelementptr inbounds %struct.sock, %struct.sock* %54, i32 0, i32 0
  %56 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = call i32 %56(%struct.sock* %57)
  br label %59

59:                                               ; preds = %53, %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.sk_buff_head*) #1

declare dso_local i32 @is_icmp_err_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
