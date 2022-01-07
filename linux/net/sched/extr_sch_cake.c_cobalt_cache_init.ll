; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i32, i32 }

@cobalt_rec_inv_sqrt_cache = common dso_local global i32* null, align 8
@REC_INV_SQRT_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cobalt_cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_cache_init() #0 {
  %1 = alloca %struct.cobalt_vars, align 4
  %2 = call i32 @memset(%struct.cobalt_vars* %1, i32 0, i32 8)
  %3 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 0
  store i32 -1, i32* %3, align 4
  %4 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** @cobalt_rec_inv_sqrt_cache, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %5, i32* %7, align 4
  %8 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 1
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %0
  %10 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REC_INV_SQRT_CACHE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = call i32 @cobalt_newton_step(%struct.cobalt_vars* %1)
  %16 = call i32 @cobalt_newton_step(%struct.cobalt_vars* %1)
  %17 = call i32 @cobalt_newton_step(%struct.cobalt_vars* %1)
  %18 = call i32 @cobalt_newton_step(%struct.cobalt_vars* %1)
  %19 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @cobalt_rec_inv_sqrt_cache, align 8
  %22 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  br label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %1, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @memset(%struct.cobalt_vars*, i32, i32) #1

declare dso_local i32 @cobalt_newton_step(%struct.cobalt_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
