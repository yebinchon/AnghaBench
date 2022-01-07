; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.soc_bytes_ext = type { i32 }
%struct.wm_coeff_ctl = type { i32, i8*, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@WMFW_CTL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_coeff_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.soc_bytes_ext*, align 8
  %6 = alloca %struct.wm_coeff_ctl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %12, %struct.soc_bytes_ext** %5, align 8
  %13 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %5, align 8
  %14 = call %struct.wm_coeff_ctl* @bytes_ext_to_ctl(%struct.soc_bytes_ext* %13)
  store %struct.wm_coeff_ctl* %14, %struct.wm_coeff_ctl** %6, align 8
  %15 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %21 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %26 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WMFW_CTL_FLAG_VOLATILE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %2
  %32 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %33 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %38 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %47 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wm_coeff_read_control(%struct.wm_coeff_ctl* %44, i8* %45, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %53

50:                                               ; preds = %36, %31
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50, %43
  br label %89

54:                                               ; preds = %2
  %55 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %56 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %54
  %60 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %61 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %59
  %65 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %66 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %73 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %74 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %77 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @wm_coeff_read_control(%struct.wm_coeff_ctl* %72, i8* %75, i32 %78)
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %71, %64, %59, %54
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %83 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %86 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i8* %81, i8* %84, i32 %87)
  br label %89

89:                                               ; preds = %80, %53
  %90 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %91 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.wm_coeff_ctl* @bytes_ext_to_ctl(%struct.soc_bytes_ext*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_coeff_read_control(%struct.wm_coeff_ctl*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
