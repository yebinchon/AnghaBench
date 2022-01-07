; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_pr_debug_stats.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_objagg.c_pr_debug_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objagg*)* @pr_debug_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_debug_stats(%struct.objagg* %0) #0 {
  %2 = alloca %struct.objagg*, align 8
  %3 = alloca %struct.objagg_stats*, align 8
  store %struct.objagg* %0, %struct.objagg** %2, align 8
  %4 = load %struct.objagg*, %struct.objagg** %2, align 8
  %5 = call %struct.objagg_stats* @objagg_stats_get(%struct.objagg* %4)
  store %struct.objagg_stats* %5, %struct.objagg_stats** %3, align 8
  %6 = load %struct.objagg_stats*, %struct.objagg_stats** %3, align 8
  %7 = call i64 @IS_ERR(%struct.objagg_stats* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.objagg_stats*, %struct.objagg_stats** %3, align 8
  %12 = call i32 @__pr_debug_stats(%struct.objagg_stats* %11)
  %13 = load %struct.objagg_stats*, %struct.objagg_stats** %3, align 8
  %14 = call i32 @objagg_stats_put(%struct.objagg_stats* %13)
  br label %15

15:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.objagg_stats* @objagg_stats_get(%struct.objagg*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_stats*) #1

declare dso_local i32 @__pr_debug_stats(%struct.objagg_stats*) #1

declare dso_local i32 @objagg_stats_put(%struct.objagg_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
