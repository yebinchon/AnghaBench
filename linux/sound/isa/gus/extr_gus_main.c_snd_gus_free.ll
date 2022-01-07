; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_main.c_snd_gus_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_main.c_snd_gus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_gus_card = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_gus_card*)* @snd_gus_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_gus_free(%struct.snd_gus_card* %0) #0 {
  %2 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_gus_card* %0, %struct.snd_gus_card** %2, align 8
  %3 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %4 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %11 = call i32 @snd_gf1_stop(%struct.snd_gus_card* %10)
  %12 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %13 = call i32 @snd_gus_init_dma_irq(%struct.snd_gus_card* %12, i32 0)
  br label %14

14:                                               ; preds = %9, %8
  %15 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %16 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @release_and_free_resource(i32* %18)
  %20 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %21 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @release_and_free_resource(i32* %23)
  %25 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %26 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %32 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %36 = bitcast %struct.snd_gus_card* %35 to i8*
  %37 = call i32 @free_irq(i64 %34, i8* %36)
  br label %38

38:                                               ; preds = %30, %14
  %39 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %40 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %46 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @disable_dma(i64 %48)
  %50 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %51 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @free_dma(i64 %53)
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %57 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %62 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %68 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @disable_dma(i64 %70)
  %72 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %73 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @free_dma(i64 %75)
  br label %77

77:                                               ; preds = %66, %60, %55
  %78 = load %struct.snd_gus_card*, %struct.snd_gus_card** %2, align 8
  %79 = call i32 @kfree(%struct.snd_gus_card* %78)
  ret i32 0
}

declare dso_local i32 @snd_gf1_stop(%struct.snd_gus_card*) #1

declare dso_local i32 @snd_gus_init_dma_irq(%struct.snd_gus_card*, i32) #1

declare dso_local i32 @release_and_free_resource(i32*) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @free_dma(i64) #1

declare dso_local i32 @kfree(%struct.snd_gus_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
