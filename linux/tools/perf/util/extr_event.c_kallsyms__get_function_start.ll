; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_kallsyms__get_function_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_event.c_kallsyms__get_function_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_symbol_args = type { i8*, i32 }

@find_symbol_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kallsyms__get_function_start(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.process_symbol_args, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %8, i32 0, i32 0
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %8, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @find_symbol_cb, align 4
  %14 = call i64 @kallsyms__parse(i8* %12, %struct.process_symbol_args* %8, i32 %13)
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %21

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i64 @kallsyms__parse(i8*, %struct.process_symbol_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
