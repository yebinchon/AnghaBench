; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_cpupower-monitor.c_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"+lci:m:\00", align 1
@mode = common dso_local global i64 0, align 8
@list = common dso_local global i64 0, align 8
@show = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@interval = common dso_local global i32 0, align 4
@show_monitors_param = common dso_local global i32 0, align 4
@wake_cpus = common dso_local global i32 0, align 4
@show_all = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdline(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @basename(i8* %8)
  store i32 %9, i32* @progname, align 4
  br label %10

10:                                               ; preds = %47, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %48

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %45 [
    i32 108, label %17
    i32 105, label %24
    i32 109, label %36
    i32 99, label %44
  ]

17:                                               ; preds = %15
  %18 = load i64, i64* @mode, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (...) @print_wrong_arg_exit()
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64, i64* @list, align 8
  store i64 %23, i64* @mode, align 8
  br label %47

24:                                               ; preds = %15
  %25 = load i64, i64* @mode, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* @mode, align 8
  %29 = load i64, i64* @show, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (...) @print_wrong_arg_exit()
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = load i32, i32* @optarg, align 4
  %35 = call i32 @atoi(i32 %34)
  store i32 %35, i32* @interval, align 4
  br label %47

36:                                               ; preds = %15
  %37 = load i64, i64* @mode, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @print_wrong_arg_exit()
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* @show, align 8
  store i64 %42, i64* @mode, align 8
  %43 = load i32, i32* @optarg, align 4
  store i32 %43, i32* @show_monitors_param, align 4
  br label %47

44:                                               ; preds = %15
  store i32 1, i32* @wake_cpus, align 4
  br label %47

45:                                               ; preds = %15
  %46 = call i32 (...) @print_wrong_arg_exit()
  br label %47

47:                                               ; preds = %45, %44, %41, %33, %22
  br label %10

48:                                               ; preds = %10
  %49 = load i64, i64* @mode, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @show_all, align 8
  store i64 %52, i64* @mode, align 8
  br label %53

53:                                               ; preds = %51, %48
  ret void
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @print_wrong_arg_exit(...) #1

declare dso_local i32 @atoi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
