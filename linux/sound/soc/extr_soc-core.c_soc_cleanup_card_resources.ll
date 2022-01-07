; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_cleanup_card_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_soc_cleanup_card_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 (%struct.snd_soc_card*)*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_card*)* @soc_cleanup_card_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_cleanup_card_resources(%struct.snd_soc_card* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %2, align 8
  %3 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %9 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @snd_card_free(i32* %10)
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %13 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %7, %1
  %15 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %16 = call i32 @soc_remove_dai_links(%struct.snd_soc_card* %15)
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %18 = call i32 @soc_remove_pcm_runtimes(%struct.snd_soc_card* %17)
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %20 = call i32 @soc_remove_aux_devices(%struct.snd_soc_card* %19)
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %22 = call i32 @soc_unbind_aux_dev(%struct.snd_soc_card* %21)
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 1
  %25 = call i32 @snd_soc_dapm_free(i32* %24)
  %26 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %27 = call i32 @soc_cleanup_card_debugfs(%struct.snd_soc_card* %26)
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 0
  %30 = load i32 (%struct.snd_soc_card*)*, i32 (%struct.snd_soc_card*)** %29, align 8
  %31 = icmp ne i32 (%struct.snd_soc_card*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %14
  %33 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %34 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %33, i32 0, i32 0
  %35 = load i32 (%struct.snd_soc_card*)*, i32 (%struct.snd_soc_card*)** %34, align 8
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %37 = call i32 %35(%struct.snd_soc_card* %36)
  br label %38

38:                                               ; preds = %32, %14
  ret void
}

declare dso_local i32 @snd_card_free(i32*) #1

declare dso_local i32 @soc_remove_dai_links(%struct.snd_soc_card*) #1

declare dso_local i32 @soc_remove_pcm_runtimes(%struct.snd_soc_card*) #1

declare dso_local i32 @soc_remove_aux_devices(%struct.snd_soc_card*) #1

declare dso_local i32 @soc_unbind_aux_dev(%struct.snd_soc_card*) #1

declare dso_local i32 @snd_soc_dapm_free(i32*) #1

declare dso_local i32 @soc_cleanup_card_debugfs(%struct.snd_soc_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
