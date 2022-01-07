; ModuleID = '/home/carl/AnghaBench/linux/tools/accounting/extr_getdelays.c_task_context_switch_counts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/accounting/extr_getdelays.c_task_context_switch_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"\0A\0ATask   %15s%15s\0A       %15llu%15llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"voluntary\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"nonvoluntary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.taskstats*)* @task_context_switch_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_context_switch_counts(%struct.taskstats* %0) #0 {
  %2 = alloca %struct.taskstats*, align 8
  store %struct.taskstats* %0, %struct.taskstats** %2, align 8
  %3 = load %struct.taskstats*, %struct.taskstats** %2, align 8
  %4 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.taskstats*, %struct.taskstats** %2, align 8
  %7 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %5, i64 %8)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
