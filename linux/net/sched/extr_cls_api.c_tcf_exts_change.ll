; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_exts_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_exts_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_exts = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_exts_change(%struct.tcf_exts* %0, %struct.tcf_exts* %1) #0 {
  %3 = alloca %struct.tcf_exts*, align 8
  %4 = alloca %struct.tcf_exts*, align 8
  store %struct.tcf_exts* %0, %struct.tcf_exts** %3, align 8
  store %struct.tcf_exts* %1, %struct.tcf_exts** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
