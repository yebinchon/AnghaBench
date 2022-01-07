; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_is_adsp_ready.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_is_adsp_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@g_core = common dso_local global %struct.TYPE_3__* null, align 8
@jiffies = common dso_local global i64 0, align 8
@ADSP_STATE_READY_TIMEOUT_MS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6core_is_adsp_ready() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_core, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %32

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_core, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* @ADSP_STATE_READY_TIMEOUT_MS, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %26, %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_core, align 8
  %17 = call i64 @__q6core_is_adsp_ready(%struct.TYPE_3__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %27

20:                                               ; preds = %15
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i32 @time_after(i64 %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %20
  br label %15

27:                                               ; preds = %25, %19
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_core, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %27, %6
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @__q6core_is_adsp_ready(%struct.TYPE_3__*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
