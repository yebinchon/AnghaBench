; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_biq_coeff_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_biq_coeff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.soc_bytes_ext = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAU8825_REG_BIQ_CTRL = common dso_local global i32 0, align 4
@NAU8825_BIQ_WRT_EN = common dso_local global i32 0, align 4
@NAU8825_REG_BIQ_COF1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @nau8825_biq_coeff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_biq_coeff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.soc_bytes_ext*, align 8
  %8 = alloca i8*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %10 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %15, %struct.soc_bytes_ext** %7, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %2
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %30 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @kmemdup(i32 %28, i32 %31, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %23
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NAU8825_REG_BIQ_CTRL, align 4
  %46 = load i32, i32* @NAU8825_BIQ_WRT_EN, align 4
  %47 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %49 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @NAU8825_REG_BIQ_COF1, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %54 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regmap_raw_write(i32 %50, i32 %51, i8* %52, i32 %55)
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NAU8825_REG_BIQ_CTRL, align 4
  %61 = load i32, i32* @NAU8825_BIQ_WRT_EN, align 4
  %62 = load i32, i32* @NAU8825_BIQ_WRT_EN, align 4
  %63 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @kfree(i8* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %41, %38, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
