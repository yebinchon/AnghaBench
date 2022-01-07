; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1011_priv = type { i8**, i32, %struct.snd_soc_component* }

@RT1011_ADVMODE_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RT1011_BQ_DRC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @rt1011_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.rt1011_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt1011_priv* %7, %struct.rt1011_priv** %4, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %10 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %9, i32 0, i32 2
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %10, align 8
  %11 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %12 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %11, i32 0, i32 1
  %13 = call i32 @schedule_work(i32* %12)
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RT1011_ADVMODE_NUM, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kcalloc(i32 %16, i32 %17, i32 8, i32 %18)
  %20 = bitcast i8* %19 to i8**
  %21 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %22 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %21, i32 0, i32 0
  store i8** %20, i8*** %22, align 8
  %23 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %24 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %64

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %60, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @RT1011_ADVMODE_NUM, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RT1011_BQ_DRC_NUM, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kcalloc(i32 %38, i32 %39, i32 4, i32 %40)
  %42 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = load %struct.rt1011_priv*, %struct.rt1011_priv** %4, align 8
  %49 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %35
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %31

63:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %56, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
