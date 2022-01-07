; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32 }
%struct.snd_wss = type { i32*, i32 }

@CS4231_ALT_FEATURE_1 = common dso_local global i64 0, align 8
@CS4231_TIMER_ENABLE = common dso_local global i32 0, align 4
@CS4231_TIMER_HIGH = common dso_local global i64 0, align 8
@CS4231_TIMER_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer*)* @snd_wss_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_wss_timer_start(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_wss*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %6 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %7 = call %struct.snd_wss* @snd_timer_chip(%struct.snd_timer* %6)
  store %struct.snd_wss* %7, %struct.snd_wss** %5, align 8
  %8 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %9 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %8, i32 0, i32 1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %13 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %16 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CS4231_TIMER_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 8
  %27 = trunc i32 %26 to i8
  %28 = zext i8 %27 to i32
  %29 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %30 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @CS4231_TIMER_HIGH, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %28, %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %4, align 4
  %38 = trunc i32 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %41 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @CS4231_TIMER_LOW, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %39, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %36, %24, %1
  %48 = load i32, i32* %4, align 4
  %49 = lshr i32 %48, 8
  %50 = trunc i32 %49 to i8
  %51 = zext i8 %50 to i32
  %52 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %53 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @CS4231_TIMER_HIGH, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %58 = load i64, i64* @CS4231_TIMER_HIGH, align 8
  %59 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %60 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @CS4231_TIMER_HIGH, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_wss_out(%struct.snd_wss* %57, i64 %58, i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %70 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @CS4231_TIMER_LOW, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %75 = load i64, i64* @CS4231_TIMER_LOW, align 8
  %76 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %77 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @CS4231_TIMER_LOW, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_wss_out(%struct.snd_wss* %74, i64 %75, i32 %81)
  %83 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %84 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %85 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %86 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @CS4231_ALT_FEATURE_1, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CS4231_TIMER_ENABLE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @snd_wss_out(%struct.snd_wss* %83, i64 %84, i32 %92)
  br label %94

94:                                               ; preds = %47, %36
  %95 = load %struct.snd_wss*, %struct.snd_wss** %5, align 8
  %96 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %95, i32 0, i32 1
  %97 = load i64, i64* %3, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  ret i32 0
}

declare dso_local %struct.snd_wss* @snd_timer_chip(%struct.snd_timer*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_wss_out(%struct.snd_wss*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
