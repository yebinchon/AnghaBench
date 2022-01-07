; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c___fprop_inc_single.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_flex_proportions.c___fprop_inc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprop_global = type { i32 }
%struct.fprop_local_single = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fprop_inc_single(%struct.fprop_global* %0, %struct.fprop_local_single* %1) #0 {
  %3 = alloca %struct.fprop_global*, align 8
  %4 = alloca %struct.fprop_local_single*, align 8
  store %struct.fprop_global* %0, %struct.fprop_global** %3, align 8
  store %struct.fprop_local_single* %1, %struct.fprop_local_single** %4, align 8
  %5 = load %struct.fprop_global*, %struct.fprop_global** %3, align 8
  %6 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %7 = call i32 @fprop_reflect_period_single(%struct.fprop_global* %5, %struct.fprop_local_single* %6)
  %8 = load %struct.fprop_local_single*, %struct.fprop_local_single** %4, align 8
  %9 = getelementptr inbounds %struct.fprop_local_single, %struct.fprop_local_single* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.fprop_global*, %struct.fprop_global** %3, align 8
  %13 = getelementptr inbounds %struct.fprop_global, %struct.fprop_global* %12, i32 0, i32 0
  %14 = call i32 @percpu_counter_add(i32* %13, i32 1)
  ret void
}

declare dso_local i32 @fprop_reflect_period_single(%struct.fprop_global*, %struct.fprop_local_single*) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
