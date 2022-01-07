; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1816a = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1816a*)* @snd_ad1816a_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_free(%struct.snd_ad1816a* %0) #0 {
  %2 = alloca %struct.snd_ad1816a*, align 8
  store %struct.snd_ad1816a* %0, %struct.snd_ad1816a** %2, align 8
  %3 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @release_and_free_resource(i32 %5)
  %7 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %8 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %13 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %16 = bitcast %struct.snd_ad1816a* %15 to i8*
  %17 = call i32 @free_irq(i64 %14, i8* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %20 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %25 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @snd_dma_disable(i64 %26)
  %28 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %29 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @free_dma(i64 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %34 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %39 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @snd_dma_disable(i64 %40)
  %42 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %2, align 8
  %43 = getelementptr inbounds %struct.snd_ad1816a, %struct.snd_ad1816a* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @free_dma(i64 %44)
  br label %46

46:                                               ; preds = %37, %32
  ret i32 0
}

declare dso_local i32 @release_and_free_resource(i32) #1

declare dso_local i32 @free_irq(i64, i8*) #1

declare dso_local i32 @snd_dma_disable(i64) #1

declare dso_local i32 @free_dma(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
