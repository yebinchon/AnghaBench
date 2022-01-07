; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_dtc_dom.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_dtc_dom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_domain = type { i32 }
%struct.dirty_throttle_control = type { i32 }

@global_wb_domain = common dso_local global %struct.wb_domain zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wb_domain* (%struct.dirty_throttle_control*)* @dtc_dom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wb_domain* @dtc_dom(%struct.dirty_throttle_control* %0) #0 {
  %2 = alloca %struct.dirty_throttle_control*, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %2, align 8
  ret %struct.wb_domain* @global_wb_domain
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
