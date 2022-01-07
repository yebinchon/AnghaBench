; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__threads.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 }
%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.comm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_export*, %struct.thread*, %struct.thread*, %struct.machine*, %struct.comm**)* @db_export__threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_export__threads(%struct.db_export* %0, %struct.thread* %1, %struct.thread* %2, %struct.machine* %3, %struct.comm** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.db_export*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.machine*, align 8
  %11 = alloca %struct.comm**, align 8
  %12 = alloca %struct.comm*, align 8
  %13 = alloca %struct.comm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.db_export* %0, %struct.db_export** %7, align 8
  store %struct.thread* %1, %struct.thread** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.machine* %3, %struct.machine** %10, align 8
  store %struct.comm** %4, %struct.comm*** %11, align 8
  store %struct.comm* null, %struct.comm** %12, align 8
  %16 = load %struct.thread*, %struct.thread** %9, align 8
  %17 = icmp ne %struct.thread* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %5
  %19 = load %struct.db_export*, %struct.db_export** %7, align 8
  %20 = load %struct.thread*, %struct.thread** %9, align 8
  %21 = load %struct.machine*, %struct.machine** %10, align 8
  %22 = load %struct.thread*, %struct.thread** %9, align 8
  %23 = call i32 @db_export__thread(%struct.db_export* %19, %struct.thread* %20, %struct.machine* %21, %struct.thread* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %97

28:                                               ; preds = %18
  %29 = load %struct.machine*, %struct.machine** %10, align 8
  %30 = load %struct.thread*, %struct.thread** %9, align 8
  %31 = call %struct.comm* @machine__thread_exec_comm(%struct.machine* %29, %struct.thread* %30)
  store %struct.comm* %31, %struct.comm** %12, align 8
  %32 = load %struct.comm*, %struct.comm** %12, align 8
  %33 = icmp ne %struct.comm* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.db_export*, %struct.db_export** %7, align 8
  %36 = load %struct.comm*, %struct.comm** %12, align 8
  %37 = load %struct.thread*, %struct.thread** %9, align 8
  %38 = call i32 @db_export__exec_comm(%struct.db_export* %35, %struct.comm* %36, %struct.thread* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %97

43:                                               ; preds = %34
  %44 = load %struct.comm*, %struct.comm** %12, align 8
  %45 = load %struct.comm**, %struct.comm*** %11, align 8
  store %struct.comm* %44, %struct.comm** %45, align 8
  br label %46

46:                                               ; preds = %43, %28
  br label %47

47:                                               ; preds = %46, %5
  %48 = load %struct.thread*, %struct.thread** %8, align 8
  %49 = load %struct.thread*, %struct.thread** %9, align 8
  %50 = icmp ne %struct.thread* %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.comm*, %struct.comm** %12, align 8
  %53 = icmp ne %struct.comm* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.thread*, %struct.thread** %8, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i1 [ false, %51 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load %struct.db_export*, %struct.db_export** %7, align 8
  %64 = load %struct.thread*, %struct.thread** %8, align 8
  %65 = load %struct.machine*, %struct.machine** %10, align 8
  %66 = load %struct.thread*, %struct.thread** %9, align 8
  %67 = call i32 @db_export__thread(%struct.db_export* %63, %struct.thread* %64, %struct.machine* %65, %struct.thread* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %97

72:                                               ; preds = %60
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.db_export*, %struct.db_export** %7, align 8
  %77 = load %struct.comm*, %struct.comm** %12, align 8
  %78 = load %struct.thread*, %struct.thread** %8, align 8
  %79 = call i32 @db_export__comm_thread(%struct.db_export* %76, %struct.comm* %77, %struct.thread* %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %6, align 4
  br label %97

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %47
  %87 = load %struct.thread*, %struct.thread** %8, align 8
  %88 = call %struct.comm* @thread__comm(%struct.thread* %87)
  store %struct.comm* %88, %struct.comm** %13, align 8
  %89 = load %struct.comm*, %struct.comm** %13, align 8
  %90 = icmp ne %struct.comm* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.db_export*, %struct.db_export** %7, align 8
  %93 = load %struct.comm*, %struct.comm** %13, align 8
  %94 = load %struct.thread*, %struct.thread** %8, align 8
  %95 = call i32 @db_export__comm(%struct.db_export* %92, %struct.comm* %93, %struct.thread* %94)
  store i32 %95, i32* %6, align 4
  br label %97

96:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %91, %82, %70, %41, %26
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @db_export__thread(%struct.db_export*, %struct.thread*, %struct.machine*, %struct.thread*) #1

declare dso_local %struct.comm* @machine__thread_exec_comm(%struct.machine*, %struct.thread*) #1

declare dso_local i32 @db_export__exec_comm(%struct.db_export*, %struct.comm*, %struct.thread*) #1

declare dso_local i32 @db_export__comm_thread(%struct.db_export*, %struct.comm*, %struct.thread*) #1

declare dso_local %struct.comm* @thread__comm(%struct.thread*) #1

declare dso_local i32 @db_export__comm(%struct.db_export*, %struct.comm*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
