; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_LED.c_led_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { %struct.xt_led_info* }
%struct.xt_led_info = type { %struct.xt_led_info_internal* }
%struct.xt_led_info_internal = type { %struct.xt_led_info_internal*, i32, i32, i32, i64 }

@xt_led_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @led_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_tg_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.xt_led_info*, align 8
  %4 = alloca %struct.xt_led_info_internal*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %5 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %6 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %5, i32 0, i32 0
  %7 = load %struct.xt_led_info*, %struct.xt_led_info** %6, align 8
  store %struct.xt_led_info* %7, %struct.xt_led_info** %3, align 8
  %8 = load %struct.xt_led_info*, %struct.xt_led_info** %3, align 8
  %9 = getelementptr inbounds %struct.xt_led_info, %struct.xt_led_info* %8, i32 0, i32 0
  %10 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %9, align 8
  store %struct.xt_led_info_internal* %10, %struct.xt_led_info_internal** %4, align 8
  %11 = call i32 @mutex_lock(i32* @xt_led_mutex)
  %12 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %13 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @mutex_unlock(i32* @xt_led_mutex)
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %21 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %20, i32 0, i32 3
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %24 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %23, i32 0, i32 2
  %25 = call i32 @del_timer_sync(i32* %24)
  %26 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %27 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %26, i32 0, i32 1
  %28 = call i32 @led_trigger_unregister(i32* %27)
  %29 = call i32 @mutex_unlock(i32* @xt_led_mutex)
  %30 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %31 = getelementptr inbounds %struct.xt_led_info_internal, %struct.xt_led_info_internal* %30, i32 0, i32 0
  %32 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %31, align 8
  %33 = call i32 @kfree(%struct.xt_led_info_internal* %32)
  %34 = load %struct.xt_led_info_internal*, %struct.xt_led_info_internal** %4, align 8
  %35 = call i32 @kfree(%struct.xt_led_info_internal* %34)
  br label %36

36:                                               ; preds = %19, %17
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @led_trigger_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.xt_led_info_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
