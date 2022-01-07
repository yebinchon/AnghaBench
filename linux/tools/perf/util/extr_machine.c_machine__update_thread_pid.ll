; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__update_thread_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__update_thread_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.thread = type { i32, i32, i64 }

@.str = private unnamed_addr constant [34 x i8] c"Discarding thread maps for %d:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to join map groups for %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine*, %struct.thread*, i32)* @machine__update_thread_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine__update_thread_pid(%struct.machine* %0, %struct.thread* %1, i32 %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %13, %3
  br label %113

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %113

34:                                               ; preds = %22
  %35 = load %struct.machine*, %struct.machine** %4, align 8
  %36 = load %struct.thread*, %struct.thread** %5, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.thread*, %struct.thread** %5, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.thread* @__machine__findnew_thread(%struct.machine* %35, i32 %38, i32 %41)
  store %struct.thread* %42, %struct.thread** %7, align 8
  %43 = load %struct.thread*, %struct.thread** %7, align 8
  %44 = icmp ne %struct.thread* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %105

46:                                               ; preds = %34
  %47 = load %struct.thread*, %struct.thread** %7, align 8
  %48 = getelementptr inbounds %struct.thread, %struct.thread* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.machine*, %struct.machine** %4, align 8
  %53 = call i64 @map_groups__new(%struct.machine* %52)
  %54 = load %struct.thread*, %struct.thread** %7, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.thread*, %struct.thread** %7, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %105

62:                                               ; preds = %56
  %63 = load %struct.thread*, %struct.thread** %5, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.thread*, %struct.thread** %7, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %113

71:                                               ; preds = %62
  %72 = load %struct.thread*, %struct.thread** %5, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load %struct.thread*, %struct.thread** %5, align 8
  %78 = getelementptr inbounds %struct.thread, %struct.thread* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @map_groups__empty(i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = load %struct.thread*, %struct.thread** %5, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.thread*, %struct.thread** %5, align 8
  %92 = getelementptr inbounds %struct.thread, %struct.thread* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @map_groups__put(i64 %93)
  br label %95

95:                                               ; preds = %90, %71
  %96 = load %struct.thread*, %struct.thread** %7, align 8
  %97 = getelementptr inbounds %struct.thread, %struct.thread* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @map_groups__get(i64 %98)
  %100 = load %struct.thread*, %struct.thread** %5, align 8
  %101 = getelementptr inbounds %struct.thread, %struct.thread* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %102

102:                                              ; preds = %105, %95
  %103 = load %struct.thread*, %struct.thread** %7, align 8
  %104 = call i32 @thread__put(%struct.thread* %103)
  br label %113

105:                                              ; preds = %61, %45
  %106 = load %struct.thread*, %struct.thread** %5, align 8
  %107 = getelementptr inbounds %struct.thread, %struct.thread* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.thread*, %struct.thread** %5, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %108, i32 %111)
  br label %102

113:                                              ; preds = %102, %70, %33, %21
  ret void
}

declare dso_local %struct.thread* @__machine__findnew_thread(%struct.machine*, i32, i32) #1

declare dso_local i64 @map_groups__new(%struct.machine*) #1

declare dso_local i32 @map_groups__empty(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @map_groups__put(i64) #1

declare dso_local i64 @map_groups__get(i64) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
