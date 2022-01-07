; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objagg_destroy(%struct.objagg* %0) #0 {
  %2 = alloca %struct.objagg*, align 8
  store %struct.objagg* %0, %struct.objagg** %2, align 8
  %3 = load %struct.objagg*, %struct.objagg** %2, align 8
  %4 = call i32 @trace_objagg_destroy(%struct.objagg* %3)
  %5 = load %struct.objagg*, %struct.objagg** %2, align 8
  %6 = getelementptr inbounds %struct.objagg, %struct.objagg* %5, i32 0, i32 3
  %7 = call i32 @ida_destroy(i32* %6)
  %8 = load %struct.objagg*, %struct.objagg** %2, align 8
  %9 = getelementptr inbounds %struct.objagg, %struct.objagg* %8, i32 0, i32 2
  %10 = call i32 @list_empty(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.objagg*, %struct.objagg** %2, align 8
  %16 = getelementptr inbounds %struct.objagg, %struct.objagg* %15, i32 0, i32 1
  %17 = call i32 @rhashtable_destroy(i32* %16)
  %18 = load %struct.objagg*, %struct.objagg** %2, align 8
  %19 = getelementptr inbounds %struct.objagg, %struct.objagg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.objagg*, %struct.objagg** %2, align 8
  %24 = getelementptr inbounds %struct.objagg, %struct.objagg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @objagg_hints_put(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.objagg*, %struct.objagg** %2, align 8
  %29 = call i32 @kfree(%struct.objagg* %28)
  ret void
}

declare dso_local i32 @trace_objagg_destroy(%struct.objagg*) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @objagg_hints_put(i64) #1

declare dso_local i32 @kfree(%struct.objagg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
