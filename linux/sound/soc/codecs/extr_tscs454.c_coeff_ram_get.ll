; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_coeff_ram_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.tscs454 = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.mutex, i32* }
%struct.mutex = type { i32 }
%struct.TYPE_8__ = type { %struct.mutex, i32* }
%struct.TYPE_7__ = type { %struct.mutex, i32* }
%struct.coeff_ram_ctl = type { i64, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"DAC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Sub\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@COEFF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @coeff_ram_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coeff_ram_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.tscs454*, align 8
  %8 = alloca %struct.coeff_ram_ctl*, align 8
  %9 = alloca %struct.soc_bytes_ext*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mutex*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.tscs454* %15, %struct.tscs454** %7, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.coeff_ram_ctl*
  store %struct.coeff_ram_ctl* %19, %struct.coeff_ram_ctl** %8, align 8
  %20 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %8, align 8
  %21 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %20, i32 0, i32 1
  store %struct.soc_bytes_ext* %21, %struct.soc_bytes_ext** %9, align 8
  %22 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %23 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strstr(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %30 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %10, align 8
  %33 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %34 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store %struct.mutex* %35, %struct.mutex** %11, align 8
  br label %71

36:                                               ; preds = %2
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strstr(i32 %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %45 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %10, align 8
  %48 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %49 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store %struct.mutex* %50, %struct.mutex** %11, align 8
  br label %70

51:                                               ; preds = %36
  %52 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %53 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strstr(i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %60 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %10, align 8
  %63 = load %struct.tscs454*, %struct.tscs454** %7, align 8
  %64 = getelementptr inbounds %struct.tscs454, %struct.tscs454* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store %struct.mutex* %65, %struct.mutex** %11, align 8
  br label %69

66:                                               ; preds = %51
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %92

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %28
  %72 = load %struct.mutex*, %struct.mutex** %11, align 8
  %73 = call i32 @mutex_lock(%struct.mutex* %72)
  %74 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.coeff_ram_ctl*, %struct.coeff_ram_ctl** %8, align 8
  %81 = getelementptr inbounds %struct.coeff_ram_ctl, %struct.coeff_ram_ctl* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @COEFF_SIZE, align 8
  %84 = mul i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %9, align 8
  %87 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32 %78, i32* %85, i32 %88)
  %90 = load %struct.mutex*, %struct.mutex** %11, align 8
  %91 = call i32 @mutex_unlock(%struct.mutex* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %71, %66
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local %struct.tscs454* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
