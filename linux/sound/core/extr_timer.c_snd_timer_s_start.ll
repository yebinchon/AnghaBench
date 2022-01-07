; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_s_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_s_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32, i64 }
%struct.snd_timer_system_private = type { i64, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_timer_s_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_s_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_timer_system_private*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %5 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %6 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.snd_timer_system_private*
  store %struct.snd_timer_system_private* %8, %struct.snd_timer_system_private** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %11 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  store i64 %9, i64* %4, align 8
  %12 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %13 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %16 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %22 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %26 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %44

31:                                               ; preds = %1
  %32 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %33 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %36 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %43 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %31, %20
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %47 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %49 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %48, i32 0, i32 3
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @mod_timer(i32* %49, i64 %50)
  ret i32 0
}

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
