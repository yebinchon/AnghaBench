; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_exit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-pmf.c_pmf_gpio_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_runtime = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_runtime*)* @pmf_gpio_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmf_gpio_exit(%struct.gpio_runtime* %0) #0 {
  %2 = alloca %struct.gpio_runtime*, align 8
  store %struct.gpio_runtime* %0, %struct.gpio_runtime** %2, align 8
  %3 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %4 = call i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime* %3)
  %5 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %6 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %8 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %14 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @pmf_unregister_irq_client(i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %20 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %26 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pmf_unregister_irq_client(i64 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %32 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %38 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pmf_unregister_irq_client(i64 %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %44 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i32 @cancel_delayed_work_sync(i32* %45)
  %47 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %48 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = call i32 @cancel_delayed_work_sync(i32* %49)
  %51 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %52 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @cancel_delayed_work_sync(i32* %53)
  %55 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %56 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @mutex_destroy(i32* %57)
  %59 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %60 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = call i32 @mutex_destroy(i32* %61)
  %63 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %64 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = call i32 @mutex_destroy(i32* %65)
  %67 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %68 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @kfree(i64 %70)
  %72 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %73 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @kfree(i64 %75)
  %77 = load %struct.gpio_runtime*, %struct.gpio_runtime** %2, align 8
  %78 = getelementptr inbounds %struct.gpio_runtime, %struct.gpio_runtime* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @kfree(i64 %80)
  ret void
}

declare dso_local i32 @pmf_gpio_all_amps_off(%struct.gpio_runtime*) #1

declare dso_local i32 @pmf_unregister_irq_client(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
