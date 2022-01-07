; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i64, i64, i64, i32 }

@ES1688_HW_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es1688*)* @snd_es1688_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_free(%struct.snd_es1688* %0) #0 {
  %2 = alloca %struct.snd_es1688*, align 8
  store %struct.snd_es1688* %0, %struct.snd_es1688** %2, align 8
  %3 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %4 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ES1688_HW_UNDEF, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %10 = call i32 @snd_es1688_init(%struct.snd_es1688* %9, i32 0)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %13 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @release_and_free_resource(i32 %14)
  %16 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %17 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %22 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %25 = bitcast %struct.snd_es1688* %24 to i8*
  %26 = call i32 @free_irq(i64 %23, i8* %25)
  br label %27

27:                                               ; preds = %20, %11
  %28 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %29 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %34 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @disable_dma(i64 %35)
  %37 = load %struct.snd_es1688*, %struct.snd_es1688** %2, align 8
  %38 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free_dma(i64 %39)
  br label %41

41:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local i32 @snd_es1688_init(%struct.snd_es1688*, i32) #1

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @free_dma(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
