; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_get_idle_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_get_idle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }

@idle_max_cpu = common dso_local global i32 0, align 4
@idle_threads = common dso_local global %struct.thread** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thread* (i32)* @get_idle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thread* @get_idle_thread(i32 %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @idle_max_cpu, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %12 = icmp eq %struct.thread** %11, null
  br i1 %12, label %13, label %44

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i32 @__roundup_pow_of_two(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i8* @realloc(%struct.thread** %17, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %80

26:                                               ; preds = %13
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.thread**
  store %struct.thread** %28, %struct.thread*** @idle_threads, align 8
  %29 = load i32, i32* @idle_max_cpu, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %39, %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.thread*, %struct.thread** %35, i64 %37
  store %struct.thread* null, %struct.thread** %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* @idle_max_cpu, align 4
  br label %44

44:                                               ; preds = %42, %10
  %45 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.thread*, %struct.thread** %45, i64 %47
  %49 = load %struct.thread*, %struct.thread** %48, align 8
  %50 = icmp eq %struct.thread* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = call %struct.thread* @thread__new(i32 0, i32 0)
  %53 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.thread*, %struct.thread** %53, i64 %55
  store %struct.thread* %52, %struct.thread** %56, align 8
  %57 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.thread*, %struct.thread** %57, i64 %59
  %61 = load %struct.thread*, %struct.thread** %60, align 8
  %62 = icmp ne %struct.thread* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.thread*, %struct.thread** %64, i64 %66
  %68 = load %struct.thread*, %struct.thread** %67, align 8
  %69 = call i64 @init_idle_thread(%struct.thread* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store %struct.thread* null, %struct.thread** %2, align 8
  br label %80

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %44
  %75 = load %struct.thread**, %struct.thread*** @idle_threads, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.thread*, %struct.thread** %75, i64 %77
  %79 = load %struct.thread*, %struct.thread** %78, align 8
  store %struct.thread* %79, %struct.thread** %2, align 8
  br label %80

80:                                               ; preds = %74, %71, %25
  %81 = load %struct.thread*, %struct.thread** %2, align 8
  ret %struct.thread* %81
}

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i8* @realloc(%struct.thread**, i32) #1

declare dso_local %struct.thread* @thread__new(i32, i32) #1

declare dso_local i64 @init_idle_thread(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
