; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_headphone_intr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_headphone_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { i32 (%struct.snd_pmac*, i32)*, i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @headphone_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @headphone_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_pmac*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.snd_pmac*
  store %struct.snd_pmac* %8, %struct.snd_pmac** %6, align 8
  %9 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %10 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %9, i32 0, i32 0
  %11 = load i32 (%struct.snd_pmac*, i32)*, i32 (%struct.snd_pmac*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.snd_pmac*, i32)* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_pmac*, i32)*, i32 (%struct.snd_pmac*, i32)** %20, align 8
  %22 = load %struct.snd_pmac*, %struct.snd_pmac** %6, align 8
  %23 = call i32 %21(%struct.snd_pmac* %22, i32 1)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %13, %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
