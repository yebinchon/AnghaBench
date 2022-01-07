; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_parse_prog_config_kvpair.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-loader.c_parse_prog_config_kvpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Not enough memory: dup config_str failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"WARNING: invalid config in BPF object: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\09Should be 'key=value'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.perf_probe_event*)* @parse_prog_config_kvpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_prog_config_kvpair(i8* %0, %struct.perf_probe_event* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_probe_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.perf_probe_event* %1, %struct.perf_probe_event** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %6, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i8* @ERR_PTR(i32 %19)
  store i8* %20, i8** %3, align 8
  br label %74

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %48, %21
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 59)
  store i8* %25, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 61)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %48

37:                                               ; preds = %27
  %38 = load i8*, i8** %11, align 8
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load %struct.perf_probe_event*, %struct.perf_probe_event** %5, align 8
  %43 = call i32 @do_prog_config(i8* %39, i8* %41, %struct.perf_probe_event* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %51

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %33
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %8, align 8
  br label %23

51:                                               ; preds = %46, %23
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8* %61, i8** %9, align 8
  br label %62

62:                                               ; preds = %54, %51
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @ERR_PTR(i32 %68)
  br label %72

70:                                               ; preds = %62
  %71 = load i8*, i8** %9, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i8* [ %69, %67 ], [ %71, %70 ]
  store i8* %73, i8** %3, align 8
  br label %74

74:                                               ; preds = %72, %16
  %75 = load i8*, i8** %3, align 8
  ret i8* %75
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i32 @do_prog_config(i8*, i8*, %struct.perf_probe_event*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
