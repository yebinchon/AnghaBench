; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__pid_tid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__pid_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_export = type { i32 }
%struct.machine = type { i32 }
%struct.comm = type { i32 }
%struct.thread = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.db_export*, %struct.machine*, i32, i32, i32*, %struct.comm**, i32*)* @db_export__pid_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_export__pid_tid(%struct.db_export* %0, %struct.machine* %1, i32 %2, i32 %3, i32* %4, %struct.comm** %5, i32* %6) #0 {
  %8 = alloca %struct.db_export*, align 8
  %9 = alloca %struct.machine*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.comm**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.thread*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca i32, align 4
  store %struct.db_export* %0, %struct.db_export** %8, align 8
  store %struct.machine* %1, %struct.machine** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.comm** %5, %struct.comm*** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.machine*, %struct.machine** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.thread* @machine__find_thread(%struct.machine* %18, i32 %19, i32 %20)
  store %struct.thread* %21, %struct.thread** %15, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.thread*, %struct.thread** %15, align 8
  %23 = icmp ne %struct.thread* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %7
  %25 = load %struct.thread*, %struct.thread** %15, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %7
  br label %60

30:                                               ; preds = %24
  %31 = load %struct.thread*, %struct.thread** %15, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.thread*, %struct.thread** %15, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.machine*, %struct.machine** %9, align 8
  %46 = load %struct.thread*, %struct.thread** %15, align 8
  %47 = call %struct.thread* @thread__main_thread(%struct.machine* %45, %struct.thread* %46)
  store %struct.thread* %47, %struct.thread** %16, align 8
  %48 = load %struct.db_export*, %struct.db_export** %8, align 8
  %49 = load %struct.thread*, %struct.thread** %15, align 8
  %50 = load %struct.thread*, %struct.thread** %16, align 8
  %51 = load %struct.machine*, %struct.machine** %9, align 8
  %52 = load %struct.comm**, %struct.comm*** %13, align 8
  %53 = call i32 @db_export__threads(%struct.db_export* %48, %struct.thread* %49, %struct.thread* %50, %struct.machine* %51, %struct.comm** %52)
  store i32 %53, i32* %17, align 4
  %54 = load %struct.thread*, %struct.thread** %15, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.thread*, %struct.thread** %16, align 8
  %59 = call i32 @thread__put(%struct.thread* %58)
  br label %60

60:                                               ; preds = %41, %29
  %61 = load %struct.thread*, %struct.thread** %15, align 8
  %62 = call i32 @thread__put(%struct.thread* %61)
  %63 = load i32, i32* %17, align 4
  ret i32 %63
}

declare dso_local %struct.thread* @machine__find_thread(%struct.machine*, i32, i32) #1

declare dso_local %struct.thread* @thread__main_thread(%struct.machine*, %struct.thread*) #1

declare dso_local i32 @db_export__threads(%struct.db_export*, %struct.thread*, %struct.thread*, %struct.machine*, %struct.comm**) #1

declare dso_local i32 @thread__put(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
