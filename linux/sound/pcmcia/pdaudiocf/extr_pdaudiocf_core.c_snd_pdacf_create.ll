; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_core.c_snd_pdacf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32, i32, %struct.snd_card* }
%struct.snd_card = type { %struct.snd_pdacf* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_pdacf* @snd_pdacf_create(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_pdacf*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_pdacf*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.snd_pdacf* @kzalloc(i32 16, i32 %5)
  store %struct.snd_pdacf* %6, %struct.snd_pdacf** %4, align 8
  %7 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %8 = icmp eq %struct.snd_pdacf* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.snd_pdacf* null, %struct.snd_pdacf** %2, align 8
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %12 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %12, i32 0, i32 2
  store %struct.snd_card* %11, %struct.snd_card** %13, align 8
  %14 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %14, i32 0, i32 1
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %21 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 0
  store %struct.snd_pdacf* %20, %struct.snd_pdacf** %22, align 8
  %23 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %24 = call i32 @pdacf_proc_init(%struct.snd_pdacf* %23)
  %25 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  store %struct.snd_pdacf* %25, %struct.snd_pdacf** %2, align 8
  br label %26

26:                                               ; preds = %10, %9
  %27 = load %struct.snd_pdacf*, %struct.snd_pdacf** %2, align 8
  ret %struct.snd_pdacf* %27
}

declare dso_local %struct.snd_pdacf* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pdacf_proc_init(%struct.snd_pdacf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
