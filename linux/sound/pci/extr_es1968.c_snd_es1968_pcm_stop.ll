; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i64, i32* }

@ESM_MODE_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*)* @snd_es1968_pcm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_pcm_stop(%struct.es1968* %0, %struct.esschan* %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.esschan*, align 8
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store %struct.esschan* %1, %struct.esschan** %4, align 8
  %5 = load %struct.es1968*, %struct.es1968** %3, align 8
  %6 = getelementptr inbounds %struct.es1968, %struct.es1968* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.es1968*, %struct.es1968** %3, align 8
  %9 = load %struct.esschan*, %struct.esschan** %4, align 8
  %10 = getelementptr inbounds %struct.esschan, %struct.esschan* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %8, i32 %13, i32 0)
  %15 = load %struct.es1968*, %struct.es1968** %3, align 8
  %16 = load %struct.esschan*, %struct.esschan** %4, align 8
  %17 = getelementptr inbounds %struct.esschan, %struct.esschan* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %15, i32 %20, i32 0)
  %22 = load %struct.esschan*, %struct.esschan** %4, align 8
  %23 = getelementptr inbounds %struct.esschan, %struct.esschan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ESM_MODE_CAPTURE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = load %struct.es1968*, %struct.es1968** %3, align 8
  %29 = load %struct.esschan*, %struct.esschan** %4, align 8
  %30 = getelementptr inbounds %struct.esschan, %struct.esschan* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %28, i32 %33, i32 0)
  %35 = load %struct.es1968*, %struct.es1968** %3, align 8
  %36 = load %struct.esschan*, %struct.esschan** %4, align 8
  %37 = getelementptr inbounds %struct.esschan, %struct.esschan* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %35, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %27, %2
  %43 = load %struct.es1968*, %struct.es1968** %3, align 8
  %44 = getelementptr inbounds %struct.es1968, %struct.es1968* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_es1968_trigger_apu(%struct.es1968*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
