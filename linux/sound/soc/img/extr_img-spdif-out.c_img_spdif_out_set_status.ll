; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-out.c_img_spdif_out_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_out = type { i32 }

@IMG_SPDIF_OUT_CSL = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CSH_UV = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CSH_UV_CSH_MASK = common dso_local global i32 0, align 4
@IMG_SPDIF_OUT_CSH_UV_CSH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @img_spdif_out_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_out_set_status(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.img_spdif_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_dai* %10, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = call %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.img_spdif_out* %12, %struct.img_spdif_out** %6, align 8
  %13 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 3
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 24
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.img_spdif_out*, %struct.img_spdif_out** %6, align 8
  %55 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.img_spdif_out*, %struct.img_spdif_out** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IMG_SPDIF_OUT_CSL, align 4
  %61 = call i32 @img_spdif_out_writel(%struct.img_spdif_out* %58, i32 %59, i32 %60)
  %62 = load %struct.img_spdif_out*, %struct.img_spdif_out** %6, align 8
  %63 = load i32, i32* @IMG_SPDIF_OUT_CSH_UV, align 4
  %64 = call i32 @img_spdif_out_readl(%struct.img_spdif_out* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @IMG_SPDIF_OUT_CSH_UV_CSH_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %70 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 4
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @IMG_SPDIF_OUT_CSH_UV_CSH_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.img_spdif_out*, %struct.img_spdif_out** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IMG_SPDIF_OUT_CSH_UV, align 4
  %84 = call i32 @img_spdif_out_writel(%struct.img_spdif_out* %81, i32 %82, i32 %83)
  %85 = load %struct.img_spdif_out*, %struct.img_spdif_out** %6, align 8
  %86 = getelementptr inbounds %struct.img_spdif_out, %struct.img_spdif_out* %85, i32 0, i32 0
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret i32 0
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.img_spdif_out* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @img_spdif_out_writel(%struct.img_spdif_out*, i32, i32) #1

declare dso_local i32 @img_spdif_out_readl(%struct.img_spdif_out*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
