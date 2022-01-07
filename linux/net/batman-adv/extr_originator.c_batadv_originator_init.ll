; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_originator_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_originator.c_batadv_originator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32, i64 }

@batadv_orig_hash_lock_class_key = common dso_local global i32 0, align 4
@batadv_purge_orig = common dso_local global i32 0, align 4
@batadv_event_workqueue = common dso_local global i32 0, align 4
@BATADV_ORIG_WORK_PERIOD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_originator_init(%struct.batadv_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.batadv_priv*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  %4 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %5 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = call i64 @batadv_hash_new(i32 1024)
  %11 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %12 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %14 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %33

18:                                               ; preds = %9
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %20 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @batadv_hash_set_lock_class(i64 %21, i32* @batadv_orig_hash_lock_class_key)
  %23 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %24 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %23, i32 0, i32 0
  %25 = load i32, i32* @batadv_purge_orig, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load i32, i32* @batadv_event_workqueue, align 4
  %28 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %29 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %28, i32 0, i32 0
  %30 = load i32, i32* @BATADV_ORIG_WORK_PERIOD, align 4
  %31 = call i32 @msecs_to_jiffies(i32 %30)
  %32 = call i32 @queue_delayed_work(i32 %27, i32* %29, i32 %31)
  store i32 0, i32* %2, align 4
  br label %36

33:                                               ; preds = %17
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %18, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @batadv_hash_new(i32) #1

declare dso_local i32 @batadv_hash_set_lock_class(i64, i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
