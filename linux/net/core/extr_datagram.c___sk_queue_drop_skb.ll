; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c___sk_queue_drop_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c___sk_queue_drop_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32, i64 }

@MSG_PEEK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sk_queue_drop_skb(%struct.sock* %0, %struct.sk_buff_head* %1, %struct.sk_buff* %2, i32 %3, void (%struct.sock*, %struct.sk_buff*)* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.sock*, %struct.sk_buff*)*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store void (%struct.sock*, %struct.sk_buff*)* %4, void (%struct.sock*, %struct.sk_buff*)** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @MSG_PEEK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %16
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %29 = call i32 @__skb_unlink(%struct.sk_buff* %27, %struct.sk_buff_head* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = call i32 @refcount_dec(i32* %31)
  %33 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %10, align 8
  %34 = icmp ne void (%struct.sock*, %struct.sk_buff*)* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %10, align 8
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  call void %36(%struct.sock* %37, %struct.sk_buff* %38)
  br label %39

39:                                               ; preds = %35, %26
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff_head, %struct.sk_buff_head* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_bh(i32* %42)
  br label %44

44:                                               ; preds = %40, %5
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = call i32 @atomic_inc(i32* %46)
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__skb_unlink(%struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
