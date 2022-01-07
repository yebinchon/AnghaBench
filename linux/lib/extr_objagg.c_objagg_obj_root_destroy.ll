; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_root_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.objagg_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objagg*, %struct.objagg_obj*)* @objagg_obj_root_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objagg_obj_root_destroy(%struct.objagg* %0, %struct.objagg_obj* %1) #0 {
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %4, align 8
  %5 = load %struct.objagg*, %struct.objagg** %3, align 8
  %6 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %7 = call i32 @trace_objagg_obj_root_destroy(%struct.objagg* %5, %struct.objagg_obj* %6)
  %8 = load %struct.objagg*, %struct.objagg** %3, align 8
  %9 = getelementptr inbounds %struct.objagg, %struct.objagg* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.objagg*, %struct.objagg** %3, align 8
  %14 = getelementptr inbounds %struct.objagg, %struct.objagg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %17 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 %12(i32 %15, i32 %18)
  %20 = load %struct.objagg*, %struct.objagg** %3, align 8
  %21 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %22 = call i32 @objagg_obj_root_id_free(%struct.objagg* %20, %struct.objagg_obj* %21)
  ret void
}

declare dso_local i32 @trace_objagg_obj_root_destroy(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @objagg_obj_root_id_free(%struct.objagg*, %struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
