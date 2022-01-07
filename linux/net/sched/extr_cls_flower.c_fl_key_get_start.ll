; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_key_get_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_key_get_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fl_flow_key = type { i32 }
%struct.fl_flow_mask = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fl_flow_key*, %struct.fl_flow_mask*)* @fl_key_get_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fl_key_get_start(%struct.fl_flow_key* %0, %struct.fl_flow_mask* %1) #0 {
  %3 = alloca %struct.fl_flow_key*, align 8
  %4 = alloca %struct.fl_flow_mask*, align 8
  store %struct.fl_flow_key* %0, %struct.fl_flow_key** %3, align 8
  store %struct.fl_flow_mask* %1, %struct.fl_flow_mask** %4, align 8
  %5 = load %struct.fl_flow_key*, %struct.fl_flow_key** %3, align 8
  %6 = bitcast %struct.fl_flow_key* %5 to i8*
  %7 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %4, align 8
  %8 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %6, i64 %11
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
