; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_cap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.task_struct = type { i32 }
%struct.cred = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"CapInh:\09\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CapPrm:\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"CapEff:\09\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CapBnd:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"CapAmb:\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.task_struct*)* @task_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_cap(%struct.seq_file* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = call %struct.cred* @__task_cred(%struct.task_struct* %12)
  store %struct.cred* %13, %struct.cred** %5, align 8
  %14 = load %struct.cred*, %struct.cred** %5, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cred*, %struct.cred** %5, align 8
  %18 = getelementptr inbounds %struct.cred, %struct.cred* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.cred*, %struct.cred** %5, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.cred*, %struct.cred** %5, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.cred*, %struct.cred** %5, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = call i32 @render_cap_t(%struct.seq_file* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %6)
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @render_cap_t(%struct.seq_file* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = call i32 @render_cap_t(%struct.seq_file* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @render_cap_t(%struct.seq_file* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = call i32 @render_cap_t(%struct.seq_file* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @render_cap_t(%struct.seq_file*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
