; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_synth_error.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_s390-cpumsf.c_s390_cpumsf_synth_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_cpumsf = type { i32 }
%union.perf_event = type { i32 }

@MAX_AUXTRACE_ERROR_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Lost Auxiliary Trace Buffer\00", align 1
@PERF_AUXTRACE_ERROR_ITRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"s390 Auxiliary Trace: failed to deliver error event,error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s390_cpumsf*, i32, i32, i32, i32, i32, i32)* @s390_cpumsf_synth_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_cpumsf_synth_error(%struct.s390_cpumsf* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.s390_cpumsf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %union.perf_event, align 4
  %18 = alloca i32, align 4
  store %struct.s390_cpumsf* %0, %struct.s390_cpumsf** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @MAX_AUXTRACE_ERROR_MSG, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = sub i64 %20, 1
  %24 = trunc i64 %23 to i32
  %25 = call i32 @strncpy(i8* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = bitcast %union.perf_event* %17 to i32*
  %27 = load i32, i32* @PERF_AUXTRACE_ERROR_ITRACE, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @auxtrace_synth_error(i32* %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i8* %22, i32 %33)
  %35 = load %struct.s390_cpumsf*, %struct.s390_cpumsf** %8, align 8
  %36 = getelementptr inbounds %struct.s390_cpumsf, %struct.s390_cpumsf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @perf_session__deliver_synth_event(i32 %37, %union.perf_event* %17, i32* null)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %7
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %7
  %45 = load i32, i32* %18, align 4
  %46 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %46)
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @auxtrace_synth_error(i32*, i32, i32, i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @perf_session__deliver_synth_event(i32, %union.perf_event*, i32*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
