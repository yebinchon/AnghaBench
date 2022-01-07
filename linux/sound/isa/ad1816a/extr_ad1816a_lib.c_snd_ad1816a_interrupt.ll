; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@AD1816A_INTERRUPT_STATUS = common dso_local global i32 0, align 4
@AD1816A_PLAYBACK_IRQ_PENDING = common dso_local global i8 0, align 1
@AD1816A_CAPTURE_IRQ_PENDING = common dso_local global i8 0, align 1
@AD1816A_TIMER_IRQ_PENDING = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ad1816a_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ad1816a*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_ad1816a*
  store %struct.snd_ad1816a* %8, %struct.snd_ad1816a** %5, align 8
  %9 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %10 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %13 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %14 = call zeroext i8 @snd_ad1816a_in(%struct.snd_ad1816a* %12, i32 %13)
  store i8 %14, i8* %6, align 1
  %15 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %16 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* @AD1816A_PLAYBACK_IRQ_PENDING, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %26 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @snd_pcm_period_elapsed(i64 %32)
  br label %34

34:                                               ; preds = %29, %24, %2
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @AD1816A_CAPTURE_IRQ_PENDING, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %43 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %48 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @snd_pcm_period_elapsed(i64 %49)
  br label %51

51:                                               ; preds = %46, %41, %34
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @AD1816A_TIMER_IRQ_PENDING, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %60 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %65 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %68 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @snd_timer_interrupt(%struct.TYPE_2__* %66, i32 %71)
  br label %73

73:                                               ; preds = %63, %58, %51
  %74 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %78 = load i32, i32* @AD1816A_INTERRUPT_STATUS, align 4
  %79 = call i32 @snd_ad1816a_out(%struct.snd_ad1816a* %77, i32 %78, i32 0)
  %80 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %81 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @snd_ad1816a_in(%struct.snd_ad1816a*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i64) #1

declare dso_local i32 @snd_timer_interrupt(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_ad1816a_out(%struct.snd_ad1816a*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
