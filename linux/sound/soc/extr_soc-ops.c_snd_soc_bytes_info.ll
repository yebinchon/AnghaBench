; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-ops.c_snd_soc_bytes_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.soc_bytes = type { i32 }

@SNDRV_CTL_ELEM_TYPE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_bytes_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.soc_bytes*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = call %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol* %7)
  store %struct.snd_soc_component* %8, %struct.snd_soc_component** %5, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.soc_bytes*
  store %struct.soc_bytes* %13, %struct.soc_bytes** %6, align 8
  %14 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %15 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.soc_bytes*, %struct.soc_bytes** %6, align 8
  %18 = getelementptr inbounds %struct.soc_bytes, %struct.soc_bytes* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %25 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
