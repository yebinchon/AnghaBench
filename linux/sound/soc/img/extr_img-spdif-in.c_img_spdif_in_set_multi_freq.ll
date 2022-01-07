; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_set_multi_freq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-spdif-in.c_img_spdif_in_set_multi_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_soc_dai = type { i32 }
%struct.img_spdif_in = type { i32, i32, i64 }

@IMG_SPDIF_IN_NUM_ACLKGEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @img_spdif_in_set_multi_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_spdif_in_set_multi_freq(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.img_spdif_in*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = call %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.snd_soc_dai* %14, %struct.snd_soc_dai** %6, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = call %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %15)
  store %struct.img_spdif_in* %16, %struct.img_spdif_in** %7, align 8
  %17 = load i32, i32* @IMG_SPDIF_IN_NUM_ACLKGEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %2
  %30 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %31 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %29
  %39 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %90

57:                                               ; preds = %47, %38, %29, %2
  %58 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %67 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %80, i32* %81, align 8
  %82 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %83 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %88, i32* %89, align 4
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %57, %56
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %95 = call i32 @img_spdif_in_do_clkgen_multi(%struct.img_spdif_in* %94, i32* %20)
  store i32 %95, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %119

96:                                               ; preds = %90
  %97 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %98 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %97, i32 0, i32 1
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %102 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %107 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %106, i32 0, i32 1
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* @EBUSY, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %119

112:                                              ; preds = %96
  %113 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %114 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.img_spdif_in*, %struct.img_spdif_in** %7, align 8
  %116 = getelementptr inbounds %struct.img_spdif_in, %struct.img_spdif_in* %115, i32 0, i32 1
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %112, %105, %93
  %120 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.snd_soc_dai* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.img_spdif_in* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @img_spdif_in_do_clkgen_multi(%struct.img_spdif_in*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
