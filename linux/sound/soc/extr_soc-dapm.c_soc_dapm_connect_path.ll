; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_connect_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_soc_dapm_connect_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_path = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_path*, i32, i8*)* @soc_dapm_connect_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_dapm_connect_path(%struct.snd_soc_dapm_path* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.snd_soc_dapm_path* %0, %struct.snd_soc_dapm_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %29

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @dapm_mark_dirty(i32 %19, i8* %20)
  %22 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @dapm_mark_dirty(i32 %24, i8* %25)
  %27 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %28 = call i32 @dapm_path_invalidate(%struct.snd_soc_dapm_path* %27)
  br label %29

29:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @dapm_mark_dirty(i32, i8*) #1

declare dso_local i32 @dapm_path_invalidate(%struct.snd_soc_dapm_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
