; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thread_data = type { i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_all_cpus(i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)* %0, %struct.thread_data* %1, %struct.core_data* %2, %struct.pkg_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)*, align 8
  %7 = alloca %struct.thread_data*, align 8
  %8 = alloca %struct.core_data*, align 8
  %9 = alloca %struct.pkg_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.thread_data*, align 8
  %16 = alloca %struct.core_data*, align 8
  %17 = alloca %struct.pkg_data*, align 8
  store i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)* %0, i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)** %6, align 8
  store %struct.thread_data* %1, %struct.thread_data** %7, align 8
  store %struct.core_data* %2, %struct.core_data** %8, align 8
  store %struct.pkg_data* %3, %struct.pkg_data** %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %81, %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %84

22:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %77, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 2), align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 3), align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  %38 = load %struct.thread_data*, %struct.thread_data** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.thread_data* @GET_THREAD(%struct.thread_data* %38, i32 %39, i32 %40, i32 %41, i32 %42)
  store %struct.thread_data* %43, %struct.thread_data** %15, align 8
  %44 = load %struct.thread_data*, %struct.thread_data** %15, align 8
  %45 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @cpu_is_not_present(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %69

50:                                               ; preds = %37
  %51 = load %struct.core_data*, %struct.core_data** %8, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.core_data* @GET_CORE(%struct.core_data* %51, i32 %52, i32 %53, i32 %54)
  store %struct.core_data* %55, %struct.core_data** %16, align 8
  %56 = load %struct.pkg_data*, %struct.pkg_data** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.pkg_data* @GET_PKG(%struct.pkg_data* %56, i32 %57)
  store %struct.pkg_data* %58, %struct.pkg_data** %17, align 8
  %59 = load i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)*, i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*)** %6, align 8
  %60 = load %struct.thread_data*, %struct.thread_data** %15, align 8
  %61 = load %struct.core_data*, %struct.core_data** %16, align 8
  %62 = load %struct.pkg_data*, %struct.pkg_data** %17, align 8
  %63 = call i32 %59(%struct.thread_data* %60, %struct.core_data* %61, %struct.pkg_data* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %85

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %33

72:                                               ; preds = %33
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %28

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %23

80:                                               ; preds = %23
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %18

84:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.thread_data* @GET_THREAD(%struct.thread_data*, i32, i32, i32, i32) #1

declare dso_local i64 @cpu_is_not_present(i32) #1

declare dso_local %struct.core_data* @GET_CORE(%struct.core_data*, i32, i32, i32) #1

declare dso_local %struct.pkg_data* @GET_PKG(%struct.pkg_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
