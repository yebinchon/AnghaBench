; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd.c_snd_msnd_dsp_write_flush.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd.c_snd_msnd_dsp_write_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i32, i32, i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@F_WRITING = common dso_local global i32 0, align 4
@F_WRITEFLUSH = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_msnd*)* @snd_msnd_dsp_write_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_msnd_dsp_write_flush(%struct.snd_msnd* %0) #0 {
  %2 = alloca %struct.snd_msnd*, align 8
  store %struct.snd_msnd* %0, %struct.snd_msnd** %2, align 8
  %3 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %4 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FMODE_WRITE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @F_WRITING, align 4
  %11 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %12 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %11, i32 0, i32 1
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9, %1
  br label %40

16:                                               ; preds = %9
  %17 = load i32, i32* @F_WRITEFLUSH, align 4
  %18 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %19 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load i32, i32* @F_WRITEFLUSH, align 4
  %22 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %23 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %22, i32 0, i32 1
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load i32, i32* @current, align 4
  %26 = call i32 @signal_pending(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %30 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %31 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @get_play_delay_jiffies(%struct.snd_msnd* %29, i32 %32)
  %34 = call i32 @schedule_timeout_interruptible(i32 %33)
  br label %35

35:                                               ; preds = %28, %16
  %36 = load i32, i32* @F_WRITING, align 4
  %37 = load %struct.snd_msnd*, %struct.snd_msnd** %2, align 8
  %38 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %15
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @signal_pending(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @get_play_delay_jiffies(%struct.snd_msnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
