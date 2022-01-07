; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_hw_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_cfg.c_cfg_hw_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i32, i32 }

@XENSND_LIST_SEPARATOR = common dso_local global i32 0, align 4
@CFG_HW_SUPPORTED_RATES = common dso_local global %struct.TYPE_3__* null, align 8
@XENSND_SAMPLE_RATE_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, %struct.snd_pcm_hardware*)* @cfg_hw_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_hw_rates(i8* %0, i32 %1, i8* %2, %struct.snd_pcm_hardware* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_pcm_hardware*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.snd_pcm_hardware* %3, %struct.snd_pcm_hardware** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %69, %4
  %17 = load i32, i32* @XENSND_LIST_SEPARATOR, align 4
  %18 = call i8* @strsep(i8** %5, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %70

20:                                               ; preds = %16
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %66, %20
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CFG_HW_SUPPORTED_RATES, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CFG_HW_SUPPORTED_RATES, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XENSND_SAMPLE_RATE_MAX_LEN, align 4
  %35 = call i32 @strncasecmp(i8* %27, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CFG_HW_SUPPORTED_RATES, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @CFG_HW_SUPPORTED_RATES, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %37
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %21

69:                                               ; preds = %21
  br label %16

70:                                               ; preds = %16
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %8, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %8, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.snd_pcm_hardware*, %struct.snd_pcm_hardware** %8, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_hardware, %struct.snd_pcm_hardware* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %70
  ret void
}

declare dso_local i8* @strsep(i8**, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strncasecmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
