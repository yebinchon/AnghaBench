; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_init_counter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_init_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thread_data = type { i32, i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@cpus = common dso_local global %struct.TYPE_2__* null, align 8
@CPU_IS_FIRST_THREAD_IN_CORE = common dso_local global i32 0, align 4
@CPU_IS_FIRST_CORE_IN_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_counter(%struct.thread_data* %0, %struct.core_data* %1, %struct.pkg_data* %2, i32 %3) #0 {
  %5 = alloca %struct.thread_data*, align 8
  %6 = alloca %struct.core_data*, align 8
  %7 = alloca %struct.pkg_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.thread_data*, align 8
  %14 = alloca %struct.core_data*, align 8
  %15 = alloca %struct.pkg_data*, align 8
  store %struct.thread_data* %0, %struct.thread_data** %5, align 8
  store %struct.core_data* %1, %struct.core_data** %6, align 8
  store %struct.pkg_data* %2, %struct.pkg_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpus, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %4
  %44 = load %struct.thread_data*, %struct.thread_data** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.thread_data* @GET_THREAD(%struct.thread_data* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store %struct.thread_data* %49, %struct.thread_data** %13, align 8
  %50 = load %struct.core_data*, %struct.core_data** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.core_data* @GET_CORE(%struct.core_data* %50, i32 %51, i32 %52, i32 %53)
  store %struct.core_data* %54, %struct.core_data** %14, align 8
  %55 = load %struct.pkg_data*, %struct.pkg_data** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.pkg_data* @GET_PKG(%struct.pkg_data* %55, i32 %56)
  store %struct.pkg_data* %57, %struct.pkg_data** %15, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.thread_data*, %struct.thread_data** %13, align 8
  %60 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %43
  %64 = load i32, i32* @CPU_IS_FIRST_THREAD_IN_CORE, align 4
  %65 = load %struct.thread_data*, %struct.thread_data** %13, align 8
  %66 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @cpu_is_first_core_in_package(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* @CPU_IS_FIRST_CORE_IN_PACKAGE, align 4
  %74 = load %struct.thread_data*, %struct.thread_data** %13, align 8
  %75 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %63
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.core_data*, %struct.core_data** %14, align 8
  %82 = getelementptr inbounds %struct.core_data, %struct.core_data* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.pkg_data*, %struct.pkg_data** %15, align 8
  %85 = getelementptr inbounds %struct.pkg_data, %struct.pkg_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local %struct.thread_data* @GET_THREAD(%struct.thread_data*, i32, i32, i32, i32) #1

declare dso_local %struct.core_data* @GET_CORE(%struct.core_data*, i32, i32, i32) #1

declare dso_local %struct.pkg_data* @GET_PKG(%struct.pkg_data*, i32) #1

declare dso_local i64 @cpu_is_first_core_in_package(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
