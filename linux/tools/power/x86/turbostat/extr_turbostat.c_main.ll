; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@dump_only = common dso_local global i64 0, align 8
@list_header_only = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@optind = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @stderr, align 4
  store i32 %6, i32* @outf, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @cmdline(i32 %7, i8** %8)
  %10 = load i32, i32* @quiet, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @print_version()
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 (...) @probe_sysfs()
  %16 = call i32 (...) @turbostat_init()
  %17 = load i64, i64* @dump_only, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @get_and_dump_counters()
  store i32 %20, i32* %3, align 4
  br label %41

21:                                               ; preds = %14
  %22 = load i64, i64* @list_header_only, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call i32 @print_header(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (...) @flush_output_stdout()
  store i32 0, i32* %3, align 4
  br label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* @optind, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = call i32 @fork_it(i8** %36)
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %27
  %39 = call i32 (...) @turbostat_loop()
  br label %40

40:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %32, %24, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @cmdline(i32, i8**) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @probe_sysfs(...) #1

declare dso_local i32 @turbostat_init(...) #1

declare dso_local i32 @get_and_dump_counters(...) #1

declare dso_local i32 @print_header(i8*) #1

declare dso_local i32 @flush_output_stdout(...) #1

declare dso_local i32 @fork_it(i8**) #1

declare dso_local i32 @turbostat_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
