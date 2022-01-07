; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_eq_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_eq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { i32 }
%struct.soc_bytes_ext = type { i32 }

@NAU8810_REG_EQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @nau8810_eq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_eq_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.nau8810*, align 8
  %7 = alloca %struct.soc_bytes_ext*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %5, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.nau8810* %15, %struct.nau8810** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %20, %struct.soc_bytes_ext** %7, align 8
  %21 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %22 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %11, align 8
  %27 = load i32, i32* @NAU8810_REG_EQ1, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %52, %2
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %7, align 8
  %32 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = icmp ult i64 %30, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %28
  %38 = load %struct.nau8810*, %struct.nau8810** %6, align 8
  %39 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @regmap_read(i32 %40, i32 %43, i32* %10)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @cpu_to_be16(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @memcpy(i32* %50, i32* %10, i32 4)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %28

55:                                               ; preds = %28
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
