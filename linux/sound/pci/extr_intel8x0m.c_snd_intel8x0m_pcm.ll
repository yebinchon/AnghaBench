; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0m.c_snd_intel8x0m_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ich_pcm_table = type { i64 }
%struct.intel8x0m = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@intel_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@ali_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@nforce_pcms = common dso_local global %struct.ich_pcm_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0m*)* @snd_intel8x0m_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0m_pcm(%struct.intel8x0m* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel8x0m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ich_pcm_table*, align 8
  %9 = alloca %struct.ich_pcm_table*, align 8
  store %struct.intel8x0m* %0, %struct.intel8x0m** %3, align 8
  %10 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** @intel_pcms, align 8
  store %struct.ich_pcm_table* %10, %struct.ich_pcm_table** %8, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %52, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %16, i64 %18
  store %struct.ich_pcm_table* %19, %struct.ich_pcm_table** %9, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %24 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %29 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %32 = getelementptr inbounds %struct.ich_pcm_table, %struct.ich_pcm_table* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  br label %52

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %22, %15
  %41 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ich_pcm_table*, %struct.ich_pcm_table** %9, align 8
  %44 = call i32 @snd_intel8x0m_pcm1(%struct.intel8x0m* %41, i32 %42, %struct.ich_pcm_table* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %11

55:                                               ; preds = %11
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.intel8x0m*, %struct.intel8x0m** %3, align 8
  %58 = getelementptr inbounds %struct.intel8x0m, %struct.intel8x0m* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @snd_intel8x0m_pcm1(%struct.intel8x0m*, i32, %struct.ich_pcm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
