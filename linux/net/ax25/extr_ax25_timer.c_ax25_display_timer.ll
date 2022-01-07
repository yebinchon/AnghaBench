; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_timer.c_ax25_display_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_timer.c_ax25_display_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ax25_display_timer(%struct.timer_list* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %3, align 8
  %4 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %5 = call i32 @timer_pending(%struct.timer_list* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %14

8:                                                ; preds = %1
  %9 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %10 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = sub i64 %11, %12
  store i64 %13, i64* %2, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load i64, i64* %2, align 8
  ret i64 %15
}

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
