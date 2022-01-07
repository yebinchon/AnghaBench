; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_do_prog_config.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_do_prog_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, %struct.perf_probe_event*)*, i32, i32, i32 }
%struct.perf_probe_event = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"config bpf program: %s=%s\0A\00", align 1
@bpf_prog_config_terms = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"BPF: ERROR: invalid program config option: %s=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AHint: Valid options are:\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\09%s:\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BPF_LOADER_ERRNO__PROGCONF_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.perf_probe_event*)* @do_prog_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_prog_config(i8* %0, i8* %1, %struct.perf_probe_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_probe_event*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.perf_probe_event* %2, %struct.perf_probe_event** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strcmp(i8* %18, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (i8*, %struct.perf_probe_event*)*, i32 (i8*, %struct.perf_probe_event*)** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.perf_probe_event*, %struct.perf_probe_event** %7, align 8
  %36 = call i32 %33(i8* %34, %struct.perf_probe_event* %35)
  store i32 %36, i32* %4, align 4
  br label %72

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %42, i8* %43)
  %45 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %65, %41
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %48)
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bpf_prog_config_terms, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %63)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %46

68:                                               ; preds = %46
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @BPF_LOADER_ERRNO__PROGCONF_TERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %27
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
