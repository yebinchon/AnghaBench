; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-version.c_cmd_version.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-version.c_cmd_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@version_options = common dso_local global i32 0, align 4
@version_usage = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"perf version %s\0A\00", align 1
@perf_version_string = common dso_local global i8* null, align 8
@version = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@version_verbose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_version(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = load i32, i32* @version_options, align 4
  %8 = load i32, i32* @version_usage, align 4
  %9 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %10 = call i32 @parse_options(i32 %5, i8** %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i8*, i8** @perf_version_string, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @version, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @version_verbose, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = call i32 (...) @library_status()
  br label %20

20:                                               ; preds = %18, %15
  ret i32 0
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @library_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
