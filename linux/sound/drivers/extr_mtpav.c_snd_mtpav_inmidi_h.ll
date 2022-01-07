; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_inmidi_h.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_mtpav.c_snd_mtpav_inmidi_h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtpav = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtpav*, i32)* @snd_mtpav_inmidi_h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_mtpav_inmidi_h(%struct.mtpav* %0, i32 %1) #0 {
  %3 = alloca %struct.mtpav*, align 8
  %4 = alloca i32, align 4
  store %struct.mtpav* %0, %struct.mtpav** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 248
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @snd_mtpav_inmidi_process(%struct.mtpav* %8, i32 %9)
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %13 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 245
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %21 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @snd_mtpav_inmidi_process(%struct.mtpav* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %41

27:                                               ; preds = %11
  %28 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %29 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @translate_hwport_to_subdevice(%struct.mtpav* %33, i32 %34)
  %36 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %37 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mtpav*, %struct.mtpav** %3, align 8
  %39 = getelementptr inbounds %struct.mtpav, %struct.mtpav* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %27
  br label %41

41:                                               ; preds = %7, %40, %26
  ret void
}

declare dso_local i32 @snd_mtpav_inmidi_process(%struct.mtpav*, i32) #1

declare dso_local i32 @translate_hwport_to_subdevice(%struct.mtpav*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
