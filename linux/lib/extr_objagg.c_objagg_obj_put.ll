; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_put.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32 }
%struct.objagg_obj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objagg_obj_put(%struct.objagg* %0, %struct.objagg_obj* %1) #0 {
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %4, align 8
  %5 = load %struct.objagg*, %struct.objagg** %3, align 8
  %6 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %7 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %8 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @trace_objagg_obj_put(%struct.objagg* %5, %struct.objagg_obj* %6, i32 %9)
  %11 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %12 = call i32 @objagg_obj_stats_dec(%struct.objagg_obj* %11)
  %13 = load %struct.objagg*, %struct.objagg** %3, align 8
  %14 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %15 = call i32 @__objagg_obj_put(%struct.objagg* %13, %struct.objagg_obj* %14)
  ret void
}

declare dso_local i32 @trace_objagg_obj_put(%struct.objagg*, %struct.objagg_obj*, i32) #1

declare dso_local i32 @objagg_obj_stats_dec(%struct.objagg_obj*) #1

declare dso_local i32 @__objagg_obj_put(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
