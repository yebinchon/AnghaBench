; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_filter = type { i32 }
%struct.fl_flow_mask = type { i32 }
%struct.fl_flow_key = type { i32 }

@TCA_FLOWER_MASK_FLAGS_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cls_fl_filter* (%struct.fl_flow_mask*, %struct.fl_flow_key*, %struct.fl_flow_key*)* @fl_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cls_fl_filter* @fl_lookup(%struct.fl_flow_mask* %0, %struct.fl_flow_key* %1, %struct.fl_flow_key* %2) #0 {
  %4 = alloca %struct.cls_fl_filter*, align 8
  %5 = alloca %struct.fl_flow_mask*, align 8
  %6 = alloca %struct.fl_flow_key*, align 8
  %7 = alloca %struct.fl_flow_key*, align 8
  store %struct.fl_flow_mask* %0, %struct.fl_flow_mask** %5, align 8
  store %struct.fl_flow_key* %1, %struct.fl_flow_key** %6, align 8
  store %struct.fl_flow_key* %2, %struct.fl_flow_key** %7, align 8
  %8 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %9 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TCA_FLOWER_MASK_FLAGS_RANGE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %16 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %17 = load %struct.fl_flow_key*, %struct.fl_flow_key** %7, align 8
  %18 = call %struct.cls_fl_filter* @fl_lookup_range(%struct.fl_flow_mask* %15, %struct.fl_flow_key* %16, %struct.fl_flow_key* %17)
  store %struct.cls_fl_filter* %18, %struct.cls_fl_filter** %4, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %21 = load %struct.fl_flow_key*, %struct.fl_flow_key** %6, align 8
  %22 = call %struct.cls_fl_filter* @__fl_lookup(%struct.fl_flow_mask* %20, %struct.fl_flow_key* %21)
  store %struct.cls_fl_filter* %22, %struct.cls_fl_filter** %4, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %4, align 8
  ret %struct.cls_fl_filter* %24
}

declare dso_local %struct.cls_fl_filter* @fl_lookup_range(%struct.fl_flow_mask*, %struct.fl_flow_key*, %struct.fl_flow_key*) #1

declare dso_local %struct.cls_fl_filter* @__fl_lookup(%struct.fl_flow_mask*, %struct.fl_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
