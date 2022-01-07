; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_config_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_config_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, %struct.snd_pcxhr** }
%struct.snd_pcxhr = type { i32, i32, %struct.TYPE_4__*, %struct.pcxhr_pipe*, %struct.TYPE_3__*, %struct.pcxhr_pipe }
%struct.TYPE_4__ = type { %struct.pcxhr_pipe* }
%struct.TYPE_3__ = type { %struct.pcxhr_pipe* }
%struct.pcxhr_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*)* @pcxhr_config_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_config_pipes(%struct.pcxhr_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcxhr*, align 8
  %8 = alloca %struct.pcxhr_pipe*, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %97, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %12 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %100

15:                                               ; preds = %9
  %16 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %17 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %16, i32 0, i32 1
  %18 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %18, i64 %20
  %22 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %21, align 8
  store %struct.snd_pcxhr* %22, %struct.snd_pcxhr** %7, align 8
  %23 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %24 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %15
  %28 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %29 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %28, i32 0, i32 5
  store %struct.pcxhr_pipe* %29, %struct.pcxhr_pipe** %8, align 8
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %31 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @pcxhr_dsp_allocate_pipe(%struct.pcxhr_mgr* %30, %struct.pcxhr_pipe* %31, i32 0, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %101

39:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %43 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %8, align 8
  %48 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store %struct.pcxhr_pipe* %47, %struct.pcxhr_pipe** %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %15
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %93, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %63 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %68 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %67, i32 0, i32 3
  %69 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %69, i64 %71
  store %struct.pcxhr_pipe* %72, %struct.pcxhr_pipe** %8, align 8
  %73 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %74 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 2
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @pcxhr_dsp_allocate_pipe(%struct.pcxhr_mgr* %73, %struct.pcxhr_pipe* %74, i32 1, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %101

84:                                               ; preds = %66
  %85 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %8, align 8
  %86 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %7, align 8
  %87 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store %struct.pcxhr_pipe* %85, %struct.pcxhr_pipe** %92, align 8
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %60

96:                                               ; preds = %60
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %9

100:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %82, %37
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @pcxhr_dsp_allocate_pipe(%struct.pcxhr_mgr*, %struct.pcxhr_pipe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
