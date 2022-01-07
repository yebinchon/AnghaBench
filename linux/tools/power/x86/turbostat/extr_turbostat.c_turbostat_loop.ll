; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_turbostat_loop.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_turbostat_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timezone = type { i32 }

@get_counters = common dso_local global i32 0, align 4
@EVEN_COUNTERS = common dso_local global i32 0, align 4
@first_counter_read = common dso_local global i64 0, align 8
@tv_even = common dso_local global i32 0, align 4
@cpu_is_not_present = common dso_local global i32 0, align 4
@ODD_COUNTERS = common dso_local global i32 0, align 4
@tv_odd = common dso_local global i32 0, align 4
@tv_delta = common dso_local global i32 0, align 4
@delta_cpu = common dso_local global i32 0, align 4
@exit_requested = common dso_local global i64 0, align 8
@num_iterations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turbostat_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @setup_signal_handler()
  br label %5

5:                                                ; preds = %113, %102, %89, %65, %54, %41, %35, %26, %0
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %2, align 4
  %8 = call i64 (...) @snapshot_proc_sysfs_files()
  %9 = load i32, i32* @get_counters, align 4
  %10 = load i32, i32* @EVEN_COUNTERS, align 4
  %11 = call i32 @for_all_cpus(i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  store i64 0, i64* @first_counter_read, align 8
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @exit(i32 %15) #3
  unreachable

17:                                               ; preds = %5
  %18 = load i32, i32* %1, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @exit(i32 %24) #3
  unreachable

26:                                               ; preds = %20
  %27 = call i32 (...) @re_initialize()
  br label %5

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %30 = call i32 @gettimeofday(i32* @tv_even, %struct.timezone* null)
  br label %31

31:                                               ; preds = %29, %133
  %32 = load i32, i32* @cpu_is_not_present, align 4
  %33 = call i64 @for_all_proc_cpus(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @re_initialize()
  br label %5

37:                                               ; preds = %31
  %38 = call i32 (...) @do_sleep()
  %39 = call i64 (...) @snapshot_proc_sysfs_files()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %5

42:                                               ; preds = %37
  %43 = load i32, i32* @get_counters, align 4
  %44 = load i32, i32* @ODD_COUNTERS, align 4
  %45 = call i32 @for_all_cpus(i32 %43, i32 %44)
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = icmp slt i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @exit(i32 %49) #3
  unreachable

51:                                               ; preds = %42
  %52 = load i32, i32* %1, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @re_initialize()
  br label %5

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = call i32 @gettimeofday(i32* @tv_odd, %struct.timezone* null)
  %59 = call i32 @timersub(i32* @tv_odd, i32* @tv_even, i32* @tv_delta)
  %60 = load i32, i32* @delta_cpu, align 4
  %61 = load i32, i32* @ODD_COUNTERS, align 4
  %62 = load i32, i32* @EVEN_COUNTERS, align 4
  %63 = call i64 @for_all_cpus_2(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 (...) @re_initialize()
  br label %5

67:                                               ; preds = %57
  %68 = load i32, i32* @EVEN_COUNTERS, align 4
  %69 = call i32 @compute_average(i32 %68)
  %70 = load i32, i32* @EVEN_COUNTERS, align 4
  %71 = call i32 @format_all_counters(i32 %70)
  %72 = call i32 (...) @flush_output_stdout()
  %73 = load i64, i64* @exit_requested, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %134

76:                                               ; preds = %67
  %77 = load i32, i32* @num_iterations, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @num_iterations, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %134

85:                                               ; preds = %79, %76
  %86 = call i32 (...) @do_sleep()
  %87 = call i64 (...) @snapshot_proc_sysfs_files()
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %5

90:                                               ; preds = %85
  %91 = load i32, i32* @get_counters, align 4
  %92 = load i32, i32* @EVEN_COUNTERS, align 4
  %93 = call i32 @for_all_cpus(i32 %91, i32 %92)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = icmp slt i32 %94, -1
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %1, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %90
  %100 = load i32, i32* %1, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call i32 (...) @re_initialize()
  br label %5

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = call i32 @gettimeofday(i32* @tv_even, %struct.timezone* null)
  %107 = call i32 @timersub(i32* @tv_even, i32* @tv_odd, i32* @tv_delta)
  %108 = load i32, i32* @delta_cpu, align 4
  %109 = load i32, i32* @EVEN_COUNTERS, align 4
  %110 = load i32, i32* @ODD_COUNTERS, align 4
  %111 = call i64 @for_all_cpus_2(i32 %108, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 (...) @re_initialize()
  br label %5

115:                                              ; preds = %105
  %116 = load i32, i32* @ODD_COUNTERS, align 4
  %117 = call i32 @compute_average(i32 %116)
  %118 = load i32, i32* @ODD_COUNTERS, align 4
  %119 = call i32 @format_all_counters(i32 %118)
  %120 = call i32 (...) @flush_output_stdout()
  %121 = load i64, i64* @exit_requested, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %134

124:                                              ; preds = %115
  %125 = load i32, i32* @num_iterations, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* @num_iterations, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127, %124
  br label %31

134:                                              ; preds = %132, %123, %84, %75
  ret void
}

declare dso_local i32 @setup_signal_handler(...) #1

declare dso_local i64 @snapshot_proc_sysfs_files(...) #1

declare dso_local i32 @for_all_cpus(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @re_initialize(...) #1

declare dso_local i32 @gettimeofday(i32*, %struct.timezone*) #1

declare dso_local i64 @for_all_proc_cpus(i32) #1

declare dso_local i32 @do_sleep(...) #1

declare dso_local i32 @timersub(i32*, i32*, i32*) #1

declare dso_local i64 @for_all_cpus_2(i32, i32, i32) #1

declare dso_local i32 @compute_average(i32) #1

declare dso_local i32 @format_all_counters(i32) #1

declare dso_local i32 @flush_output_stdout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
