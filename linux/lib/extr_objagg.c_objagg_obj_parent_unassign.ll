; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_parent_unassign.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_parent_unassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.objagg_obj = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objagg*, %struct.objagg_obj*)* @objagg_obj_parent_unassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objagg_obj_parent_unassign(%struct.objagg* %0, %struct.objagg_obj* %1) #0 {
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %4, align 8
  %5 = load %struct.objagg*, %struct.objagg** %3, align 8
  %6 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %7 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %8 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %11 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_objagg_obj_parent_unassign(%struct.objagg* %5, %struct.objagg_obj* %6, %struct.TYPE_5__* %9, i32 %14)
  %16 = load %struct.objagg*, %struct.objagg** %3, align 8
  %17 = getelementptr inbounds %struct.objagg, %struct.objagg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.objagg*, %struct.objagg** %3, align 8
  %22 = getelementptr inbounds %struct.objagg, %struct.objagg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %25 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %20(i32 %23, i32 %26)
  %28 = load %struct.objagg*, %struct.objagg** %3, align 8
  %29 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %30 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @__objagg_obj_put(%struct.objagg* %28, %struct.TYPE_5__* %31)
  ret void
}

declare dso_local i32 @trace_objagg_obj_parent_unassign(%struct.objagg*, %struct.objagg_obj*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @__objagg_obj_put(%struct.objagg*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
