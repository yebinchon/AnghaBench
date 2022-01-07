; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_free_sr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_free_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32* }

@wm5100_sr_code = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unsupported sample rate: %dHz\0A\00", align 1
@wm5100_sr_regs = common dso_local global i32* null, align 8
@WM5100_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Dereference SR %dHz, count now %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Freeing unreferenced sample rate %dHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32)* @wm5100_free_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_free_sr(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm5100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.wm5100_priv* %9, %struct.wm5100_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32*, i32** @wm5100_sr_code, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32*, i32** @wm5100_sr_code, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %10

28:                                               ; preds = %23, %10
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** @wm5100_sr_code, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %109

39:                                               ; preds = %28
  %40 = load i32*, i32** @wm5100_sr_code, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %74, %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** @wm5100_sr_regs, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %52 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %74

60:                                               ; preds = %50
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %62 = load i32*, i32** @wm5100_sr_regs, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %61, i32 %66)
  %68 = load i32, i32* @WM5100_SAMPLE_RATE_1_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %77

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %45

77:                                               ; preds = %72, %45
  %78 = load i32, i32* %6, align 4
  %79 = load i32*, i32** @wm5100_sr_regs, align 8
  %80 = call i32 @ARRAY_SIZE(i32* %79)
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %77
  %83 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %84 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %92 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.wm5100_priv*, %struct.wm5100_priv** %5, align 8
  %96 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %101)
  br label %109

103:                                              ; preds = %77
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %105 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @dev_warn(i32 %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %33, %103, %82
  ret void
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
