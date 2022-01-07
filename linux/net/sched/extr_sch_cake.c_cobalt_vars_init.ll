; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_vars_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_vars_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i32 }

@cobalt_rec_inv_sqrt_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt_vars*)* @cobalt_vars_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_vars_init(%struct.cobalt_vars* %0) #0 {
  %2 = alloca %struct.cobalt_vars*, align 8
  store %struct.cobalt_vars* %0, %struct.cobalt_vars** %2, align 8
  %3 = load %struct.cobalt_vars*, %struct.cobalt_vars** %2, align 8
  %4 = call i32 @memset(%struct.cobalt_vars* %3, i32 0, i32 4)
  %5 = load i32*, i32** @cobalt_rec_inv_sqrt_cache, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @cobalt_cache_init()
  %11 = load i32*, i32** @cobalt_rec_inv_sqrt_cache, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 -1, i32* %12, align 4
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @memset(%struct.cobalt_vars*, i32, i32) #1

declare dso_local i32 @cobalt_cache_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
