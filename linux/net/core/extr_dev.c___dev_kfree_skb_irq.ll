; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_kfree_skb_irq.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_kfree_skb_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@softnet_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@NET_TX_SOFTIRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__dev_kfree_skb_irq(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = icmp ne %struct.sk_buff* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %55

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = call i32 @refcount_read(i32* %15)
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = call i32 (...) @smp_rmb()
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = call i32 @refcount_set(i32* %24, i32 0)
  br label %37

26:                                               ; preds = %13
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = call i32 @refcount_dec_and_test(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %55

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call %struct.TYPE_4__* @get_kfree_skb_cb(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @local_irq_save(i64 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @softnet_data, i32 0, i32 0), align 4
  %45 = call i32 @__this_cpu_read(i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @softnet_data, i32 0, i32 0), align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @__this_cpu_write(i32 %48, %struct.sk_buff* %49)
  %51 = load i32, i32* @NET_TX_SOFTIRQ, align 4
  %52 = call i32 @raise_softirq_irqoff(i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  br label %55

55:                                               ; preds = %37, %35, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local %struct.TYPE_4__* @get_kfree_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.sk_buff*) #1

declare dso_local i32 @raise_softirq_irqoff(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
