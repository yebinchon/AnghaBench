; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_flag_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-perl.c_define_flag_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_print_flag_sym = type { %struct.tep_print_flag_sym*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_print_flag_sym*, i8*, i8*)* @define_flag_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_flag_values(%struct.tep_print_flag_sym* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.tep_print_flag_sym*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.tep_print_flag_sym* %0, %struct.tep_print_flag_sym** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %10 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %13 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @define_flag_value(i8* %7, i8* %8, i32 %11, i32 %14)
  %16 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %17 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %16, i32 0, i32 0
  %18 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %17, align 8
  %19 = icmp ne %struct.tep_print_flag_sym* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %4, align 8
  %22 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %21, i32 0, i32 0
  %23 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %22, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  call void @define_flag_values(%struct.tep_print_flag_sym* %23, i8* %24, i8* %25)
  br label %26

26:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @define_flag_value(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
