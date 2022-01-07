; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_put_available_governors.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpufreq.c_cpufreq_put_available_governors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_available_governors = type { %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpufreq_put_available_governors(%struct.cpufreq_available_governors* %0) #0 {
  %2 = alloca %struct.cpufreq_available_governors*, align 8
  %3 = alloca %struct.cpufreq_available_governors*, align 8
  %4 = alloca %struct.cpufreq_available_governors*, align 8
  store %struct.cpufreq_available_governors* %0, %struct.cpufreq_available_governors** %2, align 8
  %5 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %2, align 8
  %6 = icmp ne %struct.cpufreq_available_governors* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %2, align 8
  %10 = getelementptr inbounds %struct.cpufreq_available_governors, %struct.cpufreq_available_governors* %9, i32 0, i32 2
  %11 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %10, align 8
  store %struct.cpufreq_available_governors* %11, %struct.cpufreq_available_governors** %3, align 8
  br label %12

12:                                               ; preds = %28, %8
  %13 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %3, align 8
  %14 = icmp ne %struct.cpufreq_available_governors* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %12
  %16 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %3, align 8
  %17 = getelementptr inbounds %struct.cpufreq_available_governors, %struct.cpufreq_available_governors* %16, i32 0, i32 1
  %18 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %17, align 8
  store %struct.cpufreq_available_governors* %18, %struct.cpufreq_available_governors** %4, align 8
  %19 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_available_governors, %struct.cpufreq_available_governors* %19, i32 0, i32 0
  %21 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %20, align 8
  %22 = icmp ne %struct.cpufreq_available_governors* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %3, align 8
  %25 = getelementptr inbounds %struct.cpufreq_available_governors, %struct.cpufreq_available_governors* %24, i32 0, i32 0
  %26 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %25, align 8
  %27 = call i32 @free(%struct.cpufreq_available_governors* %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %3, align 8
  %30 = call i32 @free(%struct.cpufreq_available_governors* %29)
  %31 = load %struct.cpufreq_available_governors*, %struct.cpufreq_available_governors** %4, align 8
  store %struct.cpufreq_available_governors* %31, %struct.cpufreq_available_governors** %3, align 8
  br label %12

32:                                               ; preds = %7, %12
  ret void
}

declare dso_local i32 @free(%struct.cpufreq_available_governors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
