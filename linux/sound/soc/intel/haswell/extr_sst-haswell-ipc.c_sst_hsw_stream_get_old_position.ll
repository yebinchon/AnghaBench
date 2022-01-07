; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_get_old_position.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_get_old_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_get_old_position(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1) #0 {
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.sst_hsw_stream*, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %4, align 8
  %5 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %4, align 8
  %6 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
