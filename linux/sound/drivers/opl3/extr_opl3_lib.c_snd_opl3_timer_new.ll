; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_lib.c_snd_opl3_timer_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opl3 = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_opl3_timer_new(%struct.snd_opl3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_opl3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_opl3* %0, %struct.snd_opl3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @snd_opl3_timer1_init(%struct.snd_opl3* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @snd_opl3_timer2_init(%struct.snd_opl3* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %29 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %32 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @snd_device_free(i32 %30, i32* %33)
  %35 = load %struct.snd_opl3*, %struct.snd_opl3** %5, align 8
  %36 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %19
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %27, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @snd_opl3_timer1_init(%struct.snd_opl3*, i32) #1

declare dso_local i32 @snd_opl3_timer2_init(%struct.snd_opl3*, i32) #1

declare dso_local i32 @snd_device_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
