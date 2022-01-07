; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs4231 = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CS4231_MODE_OPEN = common dso_local global i32 0, align 4
@CS4231_IRQ_STATUS = common dso_local global i32 0, align 4
@CS4231_PLAYBACK_IRQ = common dso_local global i32 0, align 4
@CS4231_RECORD_IRQ = common dso_local global i32 0, align 4
@CS4231_TIMER_IRQ = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_cs4231*, i32)* @snd_cs4231_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_open(%struct.snd_cs4231* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_cs4231* %0, %struct.snd_cs4231** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %8 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %11 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %18 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %24 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CS4231_MODE_OPEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %32 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %36 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  store i32 0, i32* %3, align 4
  br label %85

38:                                               ; preds = %22
  %39 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %40 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %39, i32 0, i32 2
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %44 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %45 = load i32, i32* @CS4231_PLAYBACK_IRQ, align 4
  %46 = load i32, i32* @CS4231_RECORD_IRQ, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CS4231_TIMER_IRQ, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %43, i32 %44, i32 %49)
  %51 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %52 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %53 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %51, i32 %52, i32 0)
  %54 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %55 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %56 = load i32, i32* @STATUS, align 4
  %57 = call i32 @CS4231U(%struct.snd_cs4231* %55, i32 %56)
  %58 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %54, i32 0, i32 %57)
  %59 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %60 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %61 = load i32, i32* @STATUS, align 4
  %62 = call i32 @CS4231U(%struct.snd_cs4231* %60, i32 %61)
  %63 = call i32 @__cs4231_writeb(%struct.snd_cs4231* %59, i32 0, i32 %62)
  %64 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %65 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %66 = load i32, i32* @CS4231_PLAYBACK_IRQ, align 4
  %67 = load i32, i32* @CS4231_RECORD_IRQ, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CS4231_TIMER_IRQ, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %64, i32 %65, i32 %70)
  %72 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %73 = load i32, i32* @CS4231_IRQ_STATUS, align 4
  %74 = call i32 @snd_cs4231_out(%struct.snd_cs4231* %72, i32 %73, i32 0)
  %75 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %76 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %75, i32 0, i32 2
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %81 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %83 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %38, %29, %16
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_cs4231_out(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @__cs4231_writeb(%struct.snd_cs4231*, i32, i32) #1

declare dso_local i32 @CS4231U(%struct.snd_cs4231*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
