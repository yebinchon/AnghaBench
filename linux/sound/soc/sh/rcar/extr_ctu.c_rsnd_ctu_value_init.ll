; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ctu.c_rsnd_ctu_value_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ctu.c_rsnd_ctu_value_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_ctu = type { i32*, i32 }

@RSND_MAX_CHANNELS = common dso_local global i32 0, align 4
@CTU_CTUIR = common dso_local global i32 0, align 4
@CTU_ADINR = common dso_local global i32 0, align 4
@CTU_CPMDR = common dso_local global i32 0, align 4
@CTU_SCMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_dai_stream*, %struct.rsnd_mod*)* @rsnd_ctu_value_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_ctu_value_init(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1) #0 {
  %3 = alloca %struct.rsnd_dai_stream*, align 8
  %4 = alloca %struct.rsnd_mod*, align 8
  %5 = alloca %struct.rsnd_ctu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %3, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %4, align 8
  %11 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %12 = call %struct.rsnd_ctu* @rsnd_mod_to_ctu(%struct.rsnd_mod* %11)
  store %struct.rsnd_ctu* %12, %struct.rsnd_ctu** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %5, align 8
  %19 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @rsnd_kctrl_valm(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sub nsw i32 28, %25
  %27 = shl i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %40

32:                                               ; preds = %17
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 8
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 8
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %32, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %46 = load i32, i32* @CTU_CTUIR, align 4
  %47 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %45, i32 %46, i32 1)
  %48 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %49 = load i32, i32* @CTU_ADINR, align 4
  %50 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %3, align 8
  %51 = call i32 @rsnd_runtime_channel_original(%struct.rsnd_dai_stream* %50)
  %52 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %48, i32 %49, i32 %51)
  %53 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %54 = load i32, i32* @CTU_CPMDR, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %53, i32 %54, i32 %55)
  %57 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %58 = load i32, i32* @CTU_SCMDR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %57, i32 %58, i32 %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %93, %44
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 4
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %96

69:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %89, %69
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @RSND_MAX_CHANNELS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @CTU_SVxxR(i32 %76, i32 %77)
  %79 = load %struct.rsnd_ctu*, %struct.rsnd_ctu** %5, align 8
  %80 = getelementptr inbounds %struct.rsnd_ctu, %struct.rsnd_ctu* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @rsnd_kctrl_valm(i32 %85, i32 %86)
  %88 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %75, i32 %78, i32 %87)
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %70

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %61

96:                                               ; preds = %68, %61
  %97 = load %struct.rsnd_mod*, %struct.rsnd_mod** %4, align 8
  %98 = load i32, i32* @CTU_CTUIR, align 4
  %99 = call i32 @rsnd_mod_write(%struct.rsnd_mod* %97, i32 %98, i32 0)
  ret void
}

declare dso_local %struct.rsnd_ctu* @rsnd_mod_to_ctu(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_kctrl_valm(i32, i32) #1

declare dso_local i32 @rsnd_mod_write(%struct.rsnd_mod*, i32, i32) #1

declare dso_local i32 @rsnd_runtime_channel_original(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @CTU_SVxxR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
