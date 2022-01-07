; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_coeff_ram_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs42xx.c_coeff_ram_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tscs42xx = type { i32, i32, i32, i32* }
%struct.coeff_ram_ctl = type { i64, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i64 }

@COEFF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Failed to flush coeff ram cache (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @coeff_ram_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coeff_ram_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.tscs42xx*, align 8
  %7 = alloca %struct.coeff_ram_ctl*, align 8
  %8 = alloca %struct.soc_bytes_ext*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %5, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %14 = call %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.tscs42xx* %14, %struct.tscs42xx** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.coeff_ram_ctl*
  store %struct.coeff_ram_ctl* %18, %struct.coeff_ram_ctl** %7, align 8
  %19 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %7, align 8
  %20 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %19, i32 0, i32 1
  store %struct.soc_bytes_ext* %20, %struct.soc_bytes_ext** %8, align 8
  %21 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %22 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @COEFF_SIZE, align 8
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %28 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %31 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %33 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %7, align 8
  %36 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @COEFF_SIZE, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %8, align 8
  %47 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy(i32* %40, i32 %45, i64 %48)
  %50 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %51 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %54 = call i64 @plls_locked(%struct.snd_soc_component* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %2
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %58 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %59 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %7, align 8
  %62 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @write_coeff_ram(%struct.snd_soc_component* %57, i32* %60, i64 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %78

74:                                               ; preds = %56
  %75 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %76 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %2
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %80 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.tscs42xx*, %struct.tscs42xx** %6, align 8
  %83 = getelementptr inbounds %struct.tscs42xx, %struct.tscs42xx* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.tscs42xx* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i64 @plls_locked(%struct.snd_soc_component*) #1

declare dso_local i32 @write_coeff_ram(%struct.snd_soc_component*, i32*, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
