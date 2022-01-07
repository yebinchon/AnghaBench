; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_route_unload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_route_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dobj = type { %struct.snd_sof_route* }
%struct.snd_sof_route = type { i32, %struct.snd_sof_route* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_dobj*)* @sof_route_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_route_unload(%struct.snd_soc_component* %0, %struct.snd_soc_dobj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_soc_dobj*, align 8
  %6 = alloca %struct.snd_sof_route*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_soc_dobj* %1, %struct.snd_soc_dobj** %5, align 8
  %7 = load %struct.snd_soc_dobj*, %struct.snd_soc_dobj** %5, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dobj, %struct.snd_soc_dobj* %7, i32 0, i32 0
  %9 = load %struct.snd_sof_route*, %struct.snd_sof_route** %8, align 8
  store %struct.snd_sof_route* %9, %struct.snd_sof_route** %6, align 8
  %10 = load %struct.snd_sof_route*, %struct.snd_sof_route** %6, align 8
  %11 = icmp ne %struct.snd_sof_route* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.snd_sof_route*, %struct.snd_sof_route** %6, align 8
  %15 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %14, i32 0, i32 1
  %16 = load %struct.snd_sof_route*, %struct.snd_sof_route** %15, align 8
  %17 = call i32 @kfree(%struct.snd_sof_route* %16)
  %18 = load %struct.snd_sof_route*, %struct.snd_sof_route** %6, align 8
  %19 = getelementptr inbounds %struct.snd_sof_route, %struct.snd_sof_route* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.snd_sof_route*, %struct.snd_sof_route** %6, align 8
  %22 = call i32 @kfree(%struct.snd_sof_route* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %13, %12
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @kfree(%struct.snd_sof_route*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
