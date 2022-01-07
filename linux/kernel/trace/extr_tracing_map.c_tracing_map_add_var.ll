; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_add_var.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_tracing_map.c_tracing_map_add_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracing_map = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TRACING_MAP_VARS_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracing_map_add_var(%struct.tracing_map* %0) #0 {
  %2 = alloca %struct.tracing_map*, align 8
  %3 = alloca i32, align 4
  store %struct.tracing_map* %0, %struct.tracing_map** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %7 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TRACING_MAP_VARS_MAX, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tracing_map*, %struct.tracing_map** %2, align 8
  %13 = getelementptr inbounds %struct.tracing_map, %struct.tracing_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %13, align 8
  %16 = trunc i64 %14 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
