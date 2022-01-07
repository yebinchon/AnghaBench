; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_set_trk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_set_trk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_in = type { i32, i32*, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CTL = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CTL_TRK_MASK = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_CTL_TRK_SHIFT = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_NUM_ACLKGEN = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_TRK_MASK = common dso_local global i32 0, align 4
@IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @img_spdif_in_set_trk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_set_trk(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.img_spdif_in*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_dai* %12, %struct.snd_soc_dai** %6, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = call %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %13)
  store %struct.img_spdif_in* %14, %struct.img_spdif_in** %7, align 8
  %15 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %16 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %15, i32 0, i32 2
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %20 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %25 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %24, i32 0, i32 2
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %2
  %31 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %39 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %41 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %42 = call i32 @img_spdif_in_readl(%struct.img_spdif_in* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @IMG_SPDIF_IN_CTL_TRK_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %48 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IMG_SPDIF_IN_CTL_TRK_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @IMG_SPDIF_IN_CTL, align 4
  %57 = call i32 @img_spdif_in_writel(%struct.img_spdif_in* %54, i32 %55, i32 %56)
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %88, %30
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %64 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_TRK_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %74 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IMG_SPDIF_IN_ACLKGEN_TRK_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %72, %77
  %79 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %80 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @img_spdif_in_aclkgen_writel(%struct.img_spdif_in* %85, i32 %86)
  br label %88

88:                                               ; preds = %62
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %93 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %92, i32 0, i32 2
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @img_spdif_in_readl(%struct.img_spdif_in*, i32) #1

declare dso_local i32 @img_spdif_in_writel(%struct.img_spdif_in*, i32, i32) #1

declare dso_local i32 @img_spdif_in_aclkgen_writel(%struct.img_spdif_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
