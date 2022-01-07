; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_cmdline_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_cmdline_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32, %struct.tep_cmdline* }
%struct.tep_cmdline = type { i32 }
%struct.cmdline_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tep_cmdline_pid(%struct.tep_handle* %0, %struct.tep_cmdline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tep_handle*, align 8
  %5 = alloca %struct.tep_cmdline*, align 8
  %6 = alloca %struct.cmdline_list*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %4, align 8
  store %struct.tep_cmdline* %1, %struct.tep_cmdline** %5, align 8
  %7 = load %struct.tep_cmdline*, %struct.tep_cmdline** %5, align 8
  %8 = bitcast %struct.tep_cmdline* %7 to %struct.cmdline_list*
  store %struct.cmdline_list* %8, %struct.cmdline_list** %6, align 8
  %9 = load %struct.tep_cmdline*, %struct.tep_cmdline** %5, align 8
  %10 = icmp ne %struct.tep_cmdline* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %14 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %13, i32 0, i32 1
  %15 = load %struct.tep_cmdline*, %struct.tep_cmdline** %14, align 8
  %16 = icmp ne %struct.tep_cmdline* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.tep_cmdline*, %struct.tep_cmdline** %5, align 8
  %19 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %20 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %19, i32 0, i32 1
  %21 = load %struct.tep_cmdline*, %struct.tep_cmdline** %20, align 8
  %22 = icmp ult %struct.tep_cmdline* %18, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct.tep_cmdline*, %struct.tep_cmdline** %5, align 8
  %25 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %26 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %25, i32 0, i32 1
  %27 = load %struct.tep_cmdline*, %struct.tep_cmdline** %26, align 8
  %28 = load %struct.tep_handle*, %struct.tep_handle** %4, align 8
  %29 = getelementptr inbounds %struct.tep_handle, %struct.tep_handle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %27, i64 %31
  %33 = icmp uge %struct.tep_cmdline* %24, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23, %17, %12
  %35 = load %struct.cmdline_list*, %struct.cmdline_list** %6, align 8
  %36 = getelementptr inbounds %struct.cmdline_list, %struct.cmdline_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load %struct.tep_cmdline*, %struct.tep_cmdline** %5, align 8
  %40 = getelementptr inbounds %struct.tep_cmdline, %struct.tep_cmdline* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %34, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
