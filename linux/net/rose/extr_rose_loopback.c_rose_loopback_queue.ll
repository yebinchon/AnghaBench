; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_loopback.c_rose_loopback_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_loopback.c_rose_loopback_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rose_neigh = type { i32 }

@loopback_queue = common dso_local global i32 0, align 4
@ROSE_LOOPBACK_LIMIT = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rose_loopback_queue(%struct.sk_buff* %0, %struct.rose_neigh* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rose_neigh*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.rose_neigh* %1, %struct.rose_neigh** %4, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  %6 = call i64 @skb_queue_len(i32* @loopback_queue)
  %7 = load i64, i64* @ROSE_LOOPBACK_LIMIT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %10, i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @consume_skb(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @skb_queue_tail(i32* @loopback_queue, %struct.sk_buff* %19)
  %21 = call i32 (...) @rose_loopback_running()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 (...) @rose_set_loopback_timer()
  br label %25

25:                                               ; preds = %23, %16
  br label %29

26:                                               ; preds = %13
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = call i32 @kfree_skb(%struct.sk_buff* %27)
  br label %29

29:                                               ; preds = %26, %25
  ret i32 1
}

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @rose_loopback_running(...) #1

declare dso_local i32 @rose_set_loopback_timer(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
