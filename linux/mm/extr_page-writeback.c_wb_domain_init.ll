; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_domain_init.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_domain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_domain = type { i32, i32, i32, i32 }

@writeout_period = common dso_local global i32 0, align 4
@TIMER_DEFERRABLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wb_domain_init(%struct.wb_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.wb_domain*, align 8
  %4 = alloca i32, align 4
  store %struct.wb_domain* %0, %struct.wb_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %6 = call i32 @memset(%struct.wb_domain* %5, i32 0, i32 16)
  %7 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %8 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %11 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %10, i32 0, i32 2
  %12 = load i32, i32* @writeout_period, align 4
  %13 = load i32, i32* @TIMER_DEFERRABLE, align 4
  %14 = call i32 @timer_setup(i32* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %17 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %19 = getelementptr inbounds %struct.wb_domain, %struct.wb_domain* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @fprop_global_init(i32* %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @memset(%struct.wb_domain*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @fprop_global_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
