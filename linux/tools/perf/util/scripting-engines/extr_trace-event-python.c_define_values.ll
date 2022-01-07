; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_values.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_trace-event-python.c_define_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_print_flag_sym = type { %struct.tep_print_flag_sym*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.tep_print_flag_sym*, i8*, i8*)* @define_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_values(i32 %0, %struct.tep_print_flag_sym* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tep_print_flag_sym*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.tep_print_flag_sym* %1, %struct.tep_print_flag_sym** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %6, align 8
  %13 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %6, align 8
  %16 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @define_value(i32 %9, i8* %10, i8* %11, i32 %14, i32 %17)
  %19 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %6, align 8
  %20 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %19, i32 0, i32 0
  %21 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %20, align 8
  %22 = icmp ne %struct.tep_print_flag_sym* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %6, align 8
  %26 = getelementptr inbounds %struct.tep_print_flag_sym, %struct.tep_print_flag_sym* %25, i32 0, i32 0
  %27 = load %struct.tep_print_flag_sym*, %struct.tep_print_flag_sym** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  call void @define_values(i32 %24, %struct.tep_print_flag_sym* %27, i8* %28, i8* %29)
  br label %30

30:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @define_value(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
