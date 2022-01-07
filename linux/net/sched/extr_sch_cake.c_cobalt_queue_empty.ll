; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i64, i32, i32, i32, i64, i32 }
%struct.cobalt_params = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt_vars*, %struct.cobalt_params*, i32)* @cobalt_queue_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_queue_empty(%struct.cobalt_vars* %0, %struct.cobalt_params* %1, i32 %2) #0 {
  %4 = alloca %struct.cobalt_vars*, align 8
  %5 = alloca %struct.cobalt_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cobalt_vars* %0, %struct.cobalt_vars** %4, align 8
  store %struct.cobalt_params* %1, %struct.cobalt_params** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %9 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %15 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ktime_sub(i32 %13, i32 %16)
  %18 = call i64 @ktime_to_ns(i32 %17)
  %19 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %20 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %12
  %24 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %25 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %28 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %33 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %36 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %39 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %45 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %47 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %42, %12, %3
  %53 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %54 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %53, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %56 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %62 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ktime_sub(i32 %60, i32 %63)
  %65 = call i64 @ktime_to_ns(i32 %64)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %59
  %68 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %69 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  %72 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %73 = call i32 @cobalt_invsqrt(%struct.cobalt_vars* %72)
  %74 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %75 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.cobalt_params*, %struct.cobalt_params** %5, align 8
  %78 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %81 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cobalt_control(i32 %76, i32 %79, i32 %82)
  %84 = load %struct.cobalt_vars*, %struct.cobalt_vars** %4, align 8
  %85 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %67, %59, %52
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @cobalt_invsqrt(%struct.cobalt_vars*) #1

declare dso_local i32 @cobalt_control(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
