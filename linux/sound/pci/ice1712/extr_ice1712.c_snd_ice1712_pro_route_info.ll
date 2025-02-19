; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_route_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pro_route_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }

@snd_ice1712_pro_route_info.texts = internal constant [12 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"PCM Out\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"H/W In 0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"H/W In 1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"H/W In 2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"H/W In 3\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"H/W In 4\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"H/W In 5\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"H/W In 6\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"H/W In 7\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"IEC958 In L\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"IEC958 In R\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Digital Mixer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_ice1712_pro_route_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_pro_route_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %6 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %7 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %8 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %7, i32 0, i32 0
  %9 = call i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol* %6, i32* %8)
  %10 = icmp slt i32 %9, 2
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 12, i32 11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %13, i32 1, i32 %14, i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @snd_ice1712_pro_route_info.texts, i64 0, i64 0))
  ret i32 %15
}

declare dso_local i32 @snd_ctl_get_ioffidx(%struct.snd_kcontrol*, i32*) #1

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
