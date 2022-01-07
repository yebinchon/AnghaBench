; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__last_executed_instr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__last_executed_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_packet = type { i64, i64, i64 }

@CS_ETM_DISCONTINUITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cs_etm_packet*)* @cs_etm__last_executed_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cs_etm__last_executed_instr(%struct.cs_etm_packet* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cs_etm_packet*, align 8
  store %struct.cs_etm_packet* %0, %struct.cs_etm_packet** %3, align 8
  %4 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %3, align 8
  %5 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CS_ETM_DISCONTINUITY, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %3, align 8
  %12 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cs_etm_packet*, %struct.cs_etm_packet** %3, align 8
  %15 = getelementptr inbounds %struct.cs_etm_packet, %struct.cs_etm_packet* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %10, %9
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
