; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_eq_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8810.c_nau8810_eq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.nau8810 = type { i32 }
%struct.soc_bytes_ext = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NAU8810_REG_EQ1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"EQ configuration fail, register: %x ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @nau8810_eq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8810_eq_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.nau8810*, align 8
  %8 = alloca %struct.soc_bytes_ext*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %6, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = call %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.nau8810* %18, %struct.nau8810** %7, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %23, %struct.soc_bytes_ext** %8, align 8
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %30 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @kmemdup(i32 %28, i32 %31, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %90

41:                                               ; preds = %2
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %10, align 8
  %44 = load i32, i32* @NAU8810_REG_EQ1, align 4
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %84, %41
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %49 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = icmp ult i64 %47, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %45
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be16_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.nau8810*, %struct.nau8810** %7, align 8
  %62 = getelementptr inbounds %struct.nau8810, %struct.nau8810* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @regmap_write(i32 %63, i32 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %54
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @kfree(i8* %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %54
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %45

87:                                               ; preds = %45
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @kfree(i8* %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %87, %71, %38
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.nau8810* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
