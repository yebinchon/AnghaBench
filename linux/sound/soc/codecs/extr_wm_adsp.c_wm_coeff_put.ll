; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_coeff_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.soc_bytes_ext = type { i32 }
%struct.wm_coeff_ctl = type { i32, i32, %struct.TYPE_6__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@WMFW_CTL_FLAG_VOLATILE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm_coeff_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_coeff_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
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
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %36 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %40 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(i32 %37, i8* %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %31
  %44 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %45 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %47 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %52 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %61 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wm_coeff_write_control(%struct.wm_coeff_ctl* %58, i8* %59, i32 %62)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %57, %50, %43
  %65 = load %struct.wm_coeff_ctl*, %struct.wm_coeff_ctl** %6, align 8
  %66 = getelementptr inbounds %struct.wm_coeff_ctl, %struct.wm_coeff_ctl* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local %struct.wm_coeff_ctl* @bytes_ext_to_ctl(%struct.soc_bytes_ext*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wm_coeff_write_control(%struct.wm_coeff_ctl*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
