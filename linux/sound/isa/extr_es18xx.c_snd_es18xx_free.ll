; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/extr_es18xx.c_snd_es18xx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_es18xx* }
%struct.snd_es18xx = type { i64, i64, i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_es18xx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es18xx_free(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.snd_es18xx*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %4 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %4, i32 0, i32 0
  %6 = load %struct.snd_es18xx*, %struct.snd_es18xx** %5, align 8
  store %struct.snd_es18xx* %6, %struct.snd_es18xx** %3, align 8
  %7 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %8 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @release_and_free_resource(i32 %9)
  %11 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %12 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @release_and_free_resource(i32 %13)
  %15 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %16 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @release_and_free_resource(i32 %17)
  %19 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %20 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %25 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %28 = bitcast %struct.snd_card* %27 to i8*
  %29 = call i32 @free_irq(i64 %26, i8* %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %32 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %37 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @disable_dma(i64 %38)
  %40 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %41 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @free_dma(i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %46 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %51 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %54 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %59 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @disable_dma(i64 %60)
  %62 = load %struct.snd_es18xx*, %struct.snd_es18xx** %3, align 8
  %63 = getelementptr inbounds %struct.snd_es18xx, %struct.snd_es18xx* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @free_dma(i64 %64)
  br label %66

66:                                               ; preds = %57, %49, %44
  ret i32 0
}

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
