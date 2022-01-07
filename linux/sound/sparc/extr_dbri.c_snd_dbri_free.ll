; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_snd_dbri_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { i32, i64, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@D_GEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"snd_dbri_free\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*)* @snd_dbri_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_dbri_free(%struct.snd_dbri* %0) #0 {
  %2 = alloca %struct.snd_dbri*, align 8
  store %struct.snd_dbri* %0, %struct.snd_dbri** %2, align 8
  %3 = load i32, i32* @D_GEN, align 4
  %4 = call i32 @dprintk(i32 %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %6 = call i32 @dbri_reset(%struct.snd_dbri* %5)
  %7 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %8 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %13 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.snd_dbri* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %19 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %24 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %30 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %33 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @of_iounmap(i32* %28, i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %22, %17
  %37 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %38 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %43 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %47 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.snd_dbri*, %struct.snd_dbri** %2, align 8
  %51 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dma_free_coherent(i32* %45, i32 4, i8* %49, i32 %52)
  br label %54

54:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @dbri_reset(%struct.snd_dbri*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_dbri*) #1

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
