; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_data_comm_from_pid.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_tep_data_comm_from_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tep_data_comm_from_pid(%struct.tep_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.tep_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tep_handle*, %struct.tep_handle** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i8* @find_cmdline(%struct.tep_handle* %6, i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  ret i8* %9
}

declare dso_local i8* @find_cmdline(%struct.tep_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
