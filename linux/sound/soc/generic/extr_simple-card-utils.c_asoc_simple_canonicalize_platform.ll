; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_canonicalize_platform.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/generic/extr_simple-card-utils.c_asoc_simple_canonicalize_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_link = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asoc_simple_canonicalize_platform(%struct.snd_soc_dai_link* %0) #0 {
  %2 = alloca %struct.snd_soc_dai_link*, align 8
  store %struct.snd_soc_dai_link* %0, %struct.snd_soc_dai_link** %2, align 8
  %3 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %2, align 8
  %4 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %3, i32 0, i32 1
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %2, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %2, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %2, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %2, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %26, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
