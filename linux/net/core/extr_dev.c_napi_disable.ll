; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_napi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32, i32 }

@NAPI_STATE_DISABLE = common dso_local global i32 0, align 4
@NAPI_STATE_SCHED = common dso_local global i32 0, align 4
@NAPI_STATE_NPSVC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @napi_disable(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load i32, i32* @NAPI_STATE_DISABLE, align 4
  %5 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %6 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %5, i32 0, i32 0
  %7 = call i32 @set_bit(i32 %4, i32* %6)
  br label %8

8:                                                ; preds = %14, %1
  %9 = load i32, i32* @NAPI_STATE_SCHED, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 0
  %12 = call i64 @test_and_set_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 @msleep(i32 1)
  br label %8

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %19 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %20 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %19, i32 0, i32 0
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @msleep(i32 1)
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %27 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %26, i32 0, i32 1
  %28 = call i32 @hrtimer_cancel(i32* %27)
  %29 = load i32, i32* @NAPI_STATE_DISABLE, align 4
  %30 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %31 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
