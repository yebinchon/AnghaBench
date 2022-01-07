; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, i32, i32 }
%struct.objagg_obj = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objagg*, %struct.objagg_obj*)* @objagg_obj_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @objagg_obj_destroy(%struct.objagg* %0, %struct.objagg_obj* %1) #0 {
  %3 = alloca %struct.objagg*, align 8
  %4 = alloca %struct.objagg_obj*, align 8
  store %struct.objagg* %0, %struct.objagg** %3, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %4, align 8
  %5 = load %struct.objagg*, %struct.objagg** %3, align 8
  %6 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %7 = call i32 @trace_objagg_obj_destroy(%struct.objagg* %5, %struct.objagg_obj* %6)
  %8 = load %struct.objagg*, %struct.objagg** %3, align 8
  %9 = getelementptr inbounds %struct.objagg, %struct.objagg* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %13 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %12, i32 0, i32 1
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.objagg*, %struct.objagg** %3, align 8
  %16 = getelementptr inbounds %struct.objagg, %struct.objagg* %15, i32 0, i32 1
  %17 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %18 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %17, i32 0, i32 0
  %19 = load %struct.objagg*, %struct.objagg** %3, align 8
  %20 = getelementptr inbounds %struct.objagg, %struct.objagg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rhashtable_remove_fast(i32* %16, i32* %18, i32 %21)
  %23 = load %struct.objagg*, %struct.objagg** %3, align 8
  %24 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %25 = call i32 @objagg_obj_fini(%struct.objagg* %23, %struct.objagg_obj* %24)
  %26 = load %struct.objagg_obj*, %struct.objagg_obj** %4, align 8
  %27 = call i32 @kfree(%struct.objagg_obj* %26)
  ret void
}

declare dso_local i32 @trace_objagg_obj_destroy(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @objagg_obj_fini(%struct.objagg*, %struct.objagg_obj*) #1

declare dso_local i32 @kfree(%struct.objagg_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
