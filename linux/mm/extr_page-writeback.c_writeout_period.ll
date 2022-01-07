; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_writeout_period.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_writeout_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_domain = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@period_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@VM_COMPLETIONS_PERIOD_LEN = common dso_local global i32 0, align 4
@dom = common dso_local global %struct.wb_domain* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @writeout_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeout_period(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.wb_domain*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %6 = ptrtoint %struct.wb_domain* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @period_timer, align 4
  %9 = call %struct.wb_domain* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.wb_domain* %9, %struct.wb_domain** %3, align 8
  %10 = load i32, i32* @jiffies, align 4
  %11 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %12 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* @VM_COMPLETIONS_PERIOD_LEN, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %18 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %17, i32 0, i32 2
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i64 @fprop_new_period(i32* %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %25 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @VM_COMPLETIONS_PERIOD_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %26, %29
  %31 = call i32 @wp_next_time(i32 %30)
  %32 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %33 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %35 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %34, i32 0, i32 1
  %36 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %37 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mod_timer(i32* %35, i32 %38)
  br label %43

40:                                               ; preds = %1
  %41 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %42 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %23
  ret void
}

declare dso_local %struct.wb_domain* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @fprop_new_period(i32*, i32) #1

declare dso_local i32 @wp_next_time(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
