; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { i32, i64, i64, i32, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loopback_pcm*)* @loopback_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loopback_timer_start(%struct.loopback_pcm* %0) #0 {
  %2 = alloca %struct.loopback_pcm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.loopback_pcm* %0, %struct.loopback_pcm** %2, align 8
  %5 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %6 = call i32 @get_rate_shift(%struct.loopback_pcm* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %9 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %15 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @frac_pos(%struct.loopback_pcm* %16, i32 %19)
  %21 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %22 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %25 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %28 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %33 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = srem i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %40 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %39, i32 0, i32 3
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %31, %23
  %42 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %43 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %46 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %51 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %49, %52
  %54 = sub i64 %53, 1
  %55 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %56 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = udiv i64 %54, %57
  store i64 %58, i64* %3, align 8
  %59 = load %struct.loopback_pcm*, %struct.loopback_pcm** %2, align 8
  %60 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %59, i32 0, i32 5
  %61 = load i64, i64* @jiffies, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %61, %62
  %64 = call i32 @mod_timer(i32* %60, i64 %63)
  ret void
}

declare dso_local i32 @get_rate_shift(%struct.loopback_pcm*) #1

declare dso_local i64 @frac_pos(%struct.loopback_pcm*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
