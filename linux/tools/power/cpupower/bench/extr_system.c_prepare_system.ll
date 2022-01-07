; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_system.c_prepare_system.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/bench/extr_system.c_prepare_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"set cpu affinity to cpu #%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"high priority condition requested\0A\00", align 1
@PRIORITY_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"low priority condition requested\0A\00", align 1
@PRIORITY_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"default priority condition requested\0A\00", align 1
@PRIORITY_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_system(%struct.config* %0) #0 {
  %2 = alloca %struct.config*, align 8
  store %struct.config* %0, %struct.config** %2, align 8
  %3 = load %struct.config*, %struct.config** %2, align 8
  %4 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.config*, %struct.config** %2, align 8
  %9 = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.config*, %struct.config** %2, align 8
  %14 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @set_cpu_affinity(i32 %15)
  %17 = load %struct.config*, %struct.config** %2, align 8
  %18 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %40 [
    i32 129, label %20
    i32 128, label %30
  ]

20:                                               ; preds = %12
  %21 = load %struct.config*, %struct.config** %2, align 8
  %22 = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* @PRIORITY_HIGH, align 4
  %29 = call i32 @set_process_priority(i32 %28)
  br label %50

30:                                               ; preds = %12
  %31 = load %struct.config*, %struct.config** %2, align 8
  %32 = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* @PRIORITY_LOW, align 4
  %39 = call i32 @set_process_priority(i32 %38)
  br label %50

40:                                               ; preds = %12
  %41 = load %struct.config*, %struct.config** %2, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32, i32* @PRIORITY_DEFAULT, align 4
  %49 = call i32 @set_process_priority(i32 %48)
  br label %50

50:                                               ; preds = %47, %37, %27
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @set_cpu_affinity(i32) #1

declare dso_local i32 @set_process_priority(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
