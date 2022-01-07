; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_parse_prog_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_parse_prog_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"bpf: '%s' is not a valid tracepoint\0A\00", align 1
@BPF_LOADER_ERRNO__CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"bpf: '%s' is not a valid config string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32*, %struct.perf_probe_event*)* @parse_prog_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_prog_config(i8* %0, i8** %1, i32* %2, %struct.perf_probe_event* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.perf_probe_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.perf_probe_event* %3, %struct.perf_probe_event** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %15 = call i8* @parse_prog_config_kvpair(i8* %13, %struct.perf_probe_event* %14)
  store i8* %15, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 61)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 58)
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @BPF_LOADER_ERRNO__CONFIG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %53

38:                                               ; preds = %28
  %39 = load i32*, i32** %8, align 8
  store i32 1, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %53

40:                                               ; preds = %22
  %41 = load i32*, i32** %8, align 8
  store i32 0, i32* %41, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.perf_probe_event*, %struct.perf_probe_event** %9, align 8
  %44 = call i32 @parse_perf_probe_command(i8* %42, %struct.perf_probe_event* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @BPF_LOADER_ERRNO__CONFIG, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %47, %38, %33, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i8* @parse_prog_config_kvpair(i8*, %struct.perf_probe_event*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @parse_perf_probe_command(i8*, %struct.perf_probe_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
