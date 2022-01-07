; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_perf_c2c__hists_fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_perf_c2c__hists_fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.perf_session = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@c2c = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"=================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"           Shared Data Cache Line Table          \0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"      Shared Cache Line Distribution Pareto      \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.perf_session*)* @perf_c2c__hists_fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_c2c__hists_fprintf(i32* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.perf_session*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.perf_session* %1, %struct.perf_session** %4, align 8
  %5 = call i32 (...) @setup_pager()
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @print_c2c__display_stats(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fprintf(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @print_shared_cacheline_info(i32* %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %16 = call i32 @print_c2c_info(i32* %14, %struct.perf_session* %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @c2c, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %45

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fprintf(i32* %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 @hists__fprintf(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @c2c, i32 0, i32 0, i32 0), i32 1, i32 0, i32 0, i32 0, i32 %31, i32 1)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @fprintf(i32* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @fprintf(i32* %39, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @fprintf(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @print_pareto(i32* %43)
  br label %45

45:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @setup_pager(...) #1

declare dso_local i32 @print_c2c__display_stats(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_shared_cacheline_info(i32*) #1

declare dso_local i32 @print_c2c_info(i32*, %struct.perf_session*) #1

declare dso_local i32 @hists__fprintf(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_pareto(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
