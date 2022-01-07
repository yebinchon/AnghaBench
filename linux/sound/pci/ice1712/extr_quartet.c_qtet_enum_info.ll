; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_enum_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_enum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtet_kcontrol_private = type { i32 }
%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32 }

@qtet_privates = common dso_local global %struct.qtet_kcontrol_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @qtet_enum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtet_enum_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca %struct.qtet_kcontrol_private, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.qtet_kcontrol_private*, %struct.qtet_kcontrol_private** @qtet_privates, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.qtet_kcontrol_private, %struct.qtet_kcontrol_private* %6, i64 %9
  %11 = bitcast %struct.qtet_kcontrol_private* %5 to i8*
  %12 = bitcast %struct.qtet_kcontrol_private* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = getelementptr inbounds %struct.qtet_kcontrol_private, %struct.qtet_kcontrol_private* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = getelementptr inbounds %struct.qtet_kcontrol_private, %struct.qtet_kcontrol_private* %5, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %13, i32 1, i32 %16, i32 %18)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
