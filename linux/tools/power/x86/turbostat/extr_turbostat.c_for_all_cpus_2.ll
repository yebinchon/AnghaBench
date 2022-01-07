; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_cpus_2.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_for_all_cpus_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.thread_data = type { i32 }
%struct.core_data = type { i32 }
%struct.pkg_data = type { i32 }

@topo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @for_all_cpus_2(i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)* %0, %struct.thread_data* %1, %struct.core_data* %2, %struct.pkg_data* %3, %struct.thread_data* %4, %struct.core_data* %5, %struct.pkg_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)*, align 8
  %10 = alloca %struct.thread_data*, align 8
  %11 = alloca %struct.core_data*, align 8
  %12 = alloca %struct.pkg_data*, align 8
  %13 = alloca %struct.thread_data*, align 8
  %14 = alloca %struct.core_data*, align 8
  %15 = alloca %struct.pkg_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.thread_data*, align 8
  %22 = alloca %struct.thread_data*, align 8
  %23 = alloca %struct.core_data*, align 8
  %24 = alloca %struct.core_data*, align 8
  %25 = alloca %struct.pkg_data*, align 8
  %26 = alloca %struct.pkg_data*, align 8
  store i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)* %0, i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)** %9, align 8
  store %struct.thread_data* %1, %struct.thread_data** %10, align 8
  store %struct.core_data* %2, %struct.core_data** %11, align 8
  store %struct.pkg_data* %3, %struct.pkg_data** %12, align 8
  store %struct.thread_data* %4, %struct.thread_data** %13, align 8
  store %struct.core_data* %5, %struct.core_data** %14, align 8
  store %struct.pkg_data* %6, %struct.pkg_data** %15, align 8
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %107, %7
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 0), align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %27
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %103, %31
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 1), align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %106

36:                                               ; preds = %32
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %99, %36
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 2), align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %102

41:                                               ; preds = %37
  store i32 0, i32* %20, align 4
  br label %42

42:                                               ; preds = %95, %41
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @topo, i32 0, i32 3), align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = load %struct.thread_data*, %struct.thread_data** %10, align 8
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call %struct.thread_data* @GET_THREAD(%struct.thread_data* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  store %struct.thread_data* %52, %struct.thread_data** %21, align 8
  %53 = load %struct.thread_data*, %struct.thread_data** %21, align 8
  %54 = getelementptr inbounds %struct.thread_data, %struct.thread_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @cpu_is_not_present(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %95

59:                                               ; preds = %46
  %60 = load %struct.thread_data*, %struct.thread_data** %13, align 8
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call %struct.thread_data* @GET_THREAD(%struct.thread_data* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  store %struct.thread_data* %65, %struct.thread_data** %22, align 8
  %66 = load %struct.core_data*, %struct.core_data** %11, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call %struct.core_data* @GET_CORE(%struct.core_data* %66, i32 %67, i32 %68, i32 %69)
  store %struct.core_data* %70, %struct.core_data** %23, align 8
  %71 = load %struct.core_data*, %struct.core_data** %14, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call %struct.core_data* @GET_CORE(%struct.core_data* %71, i32 %72, i32 %73, i32 %74)
  store %struct.core_data* %75, %struct.core_data** %24, align 8
  %76 = load %struct.pkg_data*, %struct.pkg_data** %12, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call %struct.pkg_data* @GET_PKG(%struct.pkg_data* %76, i32 %77)
  store %struct.pkg_data* %78, %struct.pkg_data** %25, align 8
  %79 = load %struct.pkg_data*, %struct.pkg_data** %15, align 8
  %80 = load i32, i32* %17, align 4
  %81 = call %struct.pkg_data* @GET_PKG(%struct.pkg_data* %79, i32 %80)
  store %struct.pkg_data* %81, %struct.pkg_data** %26, align 8
  %82 = load i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)*, i32 (%struct.thread_data*, %struct.core_data*, %struct.pkg_data*, %struct.thread_data*, %struct.core_data*, %struct.pkg_data*)** %9, align 8
  %83 = load %struct.thread_data*, %struct.thread_data** %21, align 8
  %84 = load %struct.core_data*, %struct.core_data** %23, align 8
  %85 = load %struct.pkg_data*, %struct.pkg_data** %25, align 8
  %86 = load %struct.thread_data*, %struct.thread_data** %22, align 8
  %87 = load %struct.core_data*, %struct.core_data** %24, align 8
  %88 = load %struct.pkg_data*, %struct.pkg_data** %26, align 8
  %89 = call i32 %82(%struct.thread_data* %83, %struct.core_data* %84, %struct.pkg_data* %85, %struct.thread_data* %86, %struct.core_data* %87, %struct.pkg_data* %88)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %59
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %8, align 4
  br label %111

94:                                               ; preds = %59
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i32, i32* %20, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %20, align 4
  br label %42

98:                                               ; preds = %42
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  br label %37

102:                                              ; preds = %37
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %32

106:                                              ; preds = %32
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %27

110:                                              ; preds = %27
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32, i32* %8, align 4
  ret i32 %112
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
