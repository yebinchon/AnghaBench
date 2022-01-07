; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_seq_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_seq_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32* }

@WM5100_CHANNEL_ENABLES_1 = common dso_local global i32 0, align 4
@WM5100_OUTPUT_STATUS_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout waiting for OUTPUT1 %x\0A\00", align 1
@WM5100_OUTPUT_ENABLES_2 = common dso_local global i32 0, align 4
@WM5100_OUTPUT_STATUS_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Timeout waiting for OUTPUT2 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i32, i32)* @wm5100_seq_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm5100_seq_notifier(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wm5100_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.wm5100_priv* %12, %struct.wm5100_priv** %7, align 8
  %13 = load %struct.wm5100_priv*, %struct.wm5100_priv** %7, align 8
  %14 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %21 = load i32, i32* @WM5100_CHANNEL_ENABLES_1, align 4
  %22 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %39, %19
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 200
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %28 = load i32, i32* @WM5100_OUTPUT_STATUS_1, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.wm5100_priv*, %struct.wm5100_priv** %7, align 8
  %35 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  br label %42

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %23

42:                                               ; preds = %33, %23
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 200
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.wm5100_priv*, %struct.wm5100_priv** %7, align 8
  %54 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %61 = load i32, i32* @WM5100_OUTPUT_ENABLES_2, align 4
  %62 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %79, %59
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 200
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %68 = load i32, i32* @WM5100_OUTPUT_STATUS_2, align 4
  %69 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.wm5100_priv*, %struct.wm5100_priv** %7, align 8
  %75 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 0, i32* %77, align 4
  br label %82

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %63

82:                                               ; preds = %73, %63
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 200
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %87 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @dev_err(i32 %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %92

92:                                               ; preds = %91, %52
  ret void
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
