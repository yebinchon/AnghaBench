; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-jack.c_snd_soc_jack_add_zones.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-jack.c_snd_soc_jack_add_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_jack = type { i32 }
%struct.snd_soc_jack_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_jack_add_zones(%struct.snd_soc_jack* %0, i32 %1, %struct.snd_soc_jack_zone* %2) #0 {
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_jack_zone*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_jack* %0, %struct.snd_soc_jack** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_jack_zone* %2, %struct.snd_soc_jack_zone** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.snd_soc_jack_zone*, %struct.snd_soc_jack_zone** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.snd_soc_jack_zone, %struct.snd_soc_jack_zone* %13, i64 %15
  %17 = getelementptr inbounds %struct.snd_soc_jack_zone, %struct.snd_soc_jack_zone* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.snd_soc_jack_zone*, %struct.snd_soc_jack_zone** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.snd_soc_jack_zone, %struct.snd_soc_jack_zone* %19, i64 %21
  %23 = getelementptr inbounds %struct.snd_soc_jack_zone, %struct.snd_soc_jack_zone* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %25 = getelementptr inbounds %struct.snd_soc_jack, %struct.snd_soc_jack* %24, i32 0, i32 0
  %26 = call i32 @list_add(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %8

30:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
