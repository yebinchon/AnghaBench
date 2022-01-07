; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_do_show.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_perf.c_do_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTW_ACTIONRETVAL = common dso_local global i32 0, align 4
@FTW_PHYS = common dso_local global i32 0, align 4
@json_output = common dso_local global i64 0, align 8
@json_wtr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@show_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_show(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @FTW_ACTIONRETVAL, align 4
  %10 = load i32, i32* @FTW_PHYS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 16, i32* %8, align 4
  %12 = call i32 (...) @has_perf_query_support()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i64, i64* @json_output, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @json_wtr, align 4
  %20 = call i32 @jsonw_start_array(i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @show_proc, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nftw(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @p_err(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i64, i64* @json_output, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @json_wtr, align 4
  %36 = call i32 @jsonw_end_array(i32 %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @has_perf_query_support(...) #1

declare dso_local i32 @jsonw_start_array(i32) #1

declare dso_local i32 @nftw(i8*, i32, i32, i32) #1

declare dso_local i32 @p_err(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @jsonw_end_array(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
