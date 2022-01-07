; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_fl_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tcf_proto*, i32)* @fl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fl_get(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cls_fl_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %7 = call %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto* %6)
  store %struct.cls_fl_head* %7, %struct.cls_fl_head** %5, align 8
  %8 = load %struct.cls_fl_head*, %struct.cls_fl_head** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @__fl_get(%struct.cls_fl_head* %8, i32 %9)
  ret i8* %10
}

declare dso_local %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto*) #1

declare dso_local i8* @__fl_get(%struct.cls_fl_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
