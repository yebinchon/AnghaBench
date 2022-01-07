; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_kmemleak_disable.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_kmemleak_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmemleak_error = common dso_local global i32 0, align 4
@kmemleak_enabled = common dso_local global i64 0, align 8
@kmemleak_initialized = common dso_local global i64 0, align 8
@cleanup_work = common dso_local global i32 0, align 4
@kmemleak_free_enabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Kernel memory leak detector disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kmemleak_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmemleak_disable() #0 {
  %1 = call i64 @cmpxchg(i32* @kmemleak_error, i32 0, i32 1)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %12

4:                                                ; preds = %0
  store i64 0, i64* @kmemleak_enabled, align 8
  %5 = load i64, i64* @kmemleak_initialized, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @schedule_work(i32* @cleanup_work)
  br label %10

9:                                                ; preds = %4
  store i64 0, i64* @kmemleak_free_enabled, align 8
  br label %10

10:                                               ; preds = %9, %7
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3
  ret void
}

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
