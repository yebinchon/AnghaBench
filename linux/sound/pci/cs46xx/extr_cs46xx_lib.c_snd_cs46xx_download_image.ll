; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_download_image.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c_snd_cs46xx_download_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cs46xx = type { %struct.ba1_struct* }
%struct.ba1_struct = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@BA1_MEMORY_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_cs46xx_download_image(%struct.snd_cs46xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_cs46xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ba1_struct*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %8, i32 0, i32 0
  %10 = load %struct.ba1_struct*, %struct.ba1_struct** %9, align 8
  store %struct.ba1_struct* %10, %struct.ba1_struct** %7, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %56, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @BA1_MEMORY_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %3, align 8
  %17 = load %struct.ba1_struct*, %struct.ba1_struct** %7, align 8
  %18 = getelementptr inbounds %struct.ba1_struct, %struct.ba1_struct* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.ba1_struct*, %struct.ba1_struct** %7, align 8
  %24 = getelementptr inbounds %struct.ba1_struct, %struct.ba1_struct* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ba1_struct*, %struct.ba1_struct** %7, align 8
  %32 = getelementptr inbounds %struct.ba1_struct, %struct.ba1_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @snd_cs46xx_download(%struct.snd_cs46xx* %16, i32* %22, i32 %30, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %15
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %15
  %45 = load %struct.ba1_struct*, %struct.ba1_struct** %7, align 8
  %46 = getelementptr inbounds %struct.ba1_struct, %struct.ba1_struct* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 2
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %11

59:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @snd_cs46xx_download(%struct.snd_cs46xx*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
