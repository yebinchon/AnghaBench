; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_parse-options.c_parse_options_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i32, i8**, i8**, i32, i32 }

@PARSE_OPT_KEEP_ARGV0 = common dso_local global i32 0, align 4
@PARSE_OPT_KEEP_UNKNOWN = common dso_local global i32 0, align 4
@PARSE_OPT_STOP_AT_NON_OPTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"STOP_AT_NON_OPTION and KEEP_UNKNOWN don't go together\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse_opt_ctx_t*, i32, i8**, i32)* @parse_options_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options_start(%struct.parse_opt_ctx_t* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.parse_opt_ctx_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %10 = call i32 @memset(%struct.parse_opt_ctx_t* %9, i32 0, i32 32)
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %14 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %18 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %17, i32 0, i32 1
  store i8** %16, i8*** %18, align 8
  %19 = load i8**, i8*** %7, align 8
  %20 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %21 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %20, i32 0, i32 2
  store i8** %19, i8*** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PARSE_OPT_KEEP_ARGV0, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %28 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %5, align 8
  %31 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PARSE_OPT_KEEP_UNKNOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PARSE_OPT_STOP_AT_NON_OPTION, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 @die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36, %4
  ret void
}

declare dso_local i32 @memset(%struct.parse_opt_ctx_t*, i32, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
