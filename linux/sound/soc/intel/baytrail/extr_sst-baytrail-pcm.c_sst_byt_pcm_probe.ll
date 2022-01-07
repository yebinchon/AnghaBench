; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-pcm.c_sst_byt_pcm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sst_pdata = type { i32 }
%struct.sst_byt_priv_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BYT_PCM_COUNT = common dso_local global i32 0, align 4
@sst_byt_pcm_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @sst_byt_pcm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_pcm_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.sst_pdata*, align 8
  %5 = alloca %struct.sst_byt_priv_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sst_pdata* @dev_get_platdata(i32 %9)
  store %struct.sst_pdata* %10, %struct.sst_pdata** %4, align 8
  %11 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %12 = icmp ne %struct.sst_pdata* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sst_byt_priv_data* @devm_kzalloc(i32 %19, i32 16, i32 %20)
  store %struct.sst_byt_priv_data* %21, %struct.sst_byt_priv_data** %5, align 8
  %22 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %23 = icmp ne %struct.sst_byt_priv_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %16
  %28 = load %struct.sst_pdata*, %struct.sst_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.sst_pdata, %struct.sst_pdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %32 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %34 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %35 = call i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component* %33, %struct.sst_byt_priv_data* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %58, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @BYT_PCM_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %42 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.sst_byt_priv_data*, %struct.sst_byt_priv_data** %5, align 8
  %50 = getelementptr inbounds %struct.sst_byt_priv_data, %struct.sst_byt_priv_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* @sst_byt_pcm_work, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %36

61:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %24, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.sst_pdata* @dev_get_platdata(i32) #1

declare dso_local %struct.sst_byt_priv_data* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_drvdata(%struct.snd_soc_component*, %struct.sst_byt_priv_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
