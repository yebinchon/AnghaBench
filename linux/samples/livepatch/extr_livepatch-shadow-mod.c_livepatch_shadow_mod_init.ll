; ModuleID = '/home/carl/AnghaBench/linux/samples/livepatch/extr_livepatch-shadow-mod.c_livepatch_shadow_mod_init.c'
source_filename = "/home/carl/AnghaBench/linux/samples/livepatch/extr_livepatch-shadow-mod.c_livepatch_shadow_mod_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alloc_dwork = common dso_local global i32 0, align 4
@ALLOC_PERIOD = common dso_local global i32 0, align 4
@cleanup_dwork = common dso_local global i32 0, align 4
@CLEANUP_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @livepatch_shadow_mod_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @livepatch_shadow_mod_init() #0 {
  %1 = load i32, i32* @ALLOC_PERIOD, align 4
  %2 = mul nsw i32 1000, %1
  %3 = call i32 @msecs_to_jiffies(i32 %2)
  %4 = call i32 @schedule_delayed_work(i32* @alloc_dwork, i32 %3)
  %5 = load i32, i32* @CLEANUP_PERIOD, align 4
  %6 = mul nsw i32 1000, %5
  %7 = call i32 @msecs_to_jiffies(i32 %6)
  %8 = call i32 @schedule_delayed_work(i32* @cleanup_dwork, i32 %7)
  ret i32 0
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
