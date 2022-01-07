; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_show_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-script.c_show_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.perf_sample = type { i32 }
%struct.evsel = type { i32 }
%struct.thread = type { i32, i32 }
%struct.addr_location = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sample*, %struct.evsel*, %struct.thread*, %struct.addr_location*)* @show_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_event(%struct.perf_sample* %0, %struct.evsel* %1, %struct.thread* %2, %struct.addr_location* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_sample*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.addr_location*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.perf_sample* %0, %struct.perf_sample** %6, align 8
  store %struct.evsel* %1, %struct.evsel** %7, align 8
  store %struct.thread* %2, %struct.thread** %8, align 8
  store %struct.addr_location* %3, %struct.addr_location** %9, align 8
  %16 = load %struct.thread*, %struct.thread** %8, align 8
  %17 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %18 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @thread_stack__depth(%struct.thread* %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %88

24:                                               ; preds = %4
  %25 = load %struct.thread*, %struct.thread** %8, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.thread*, %struct.thread** %8, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %88

38:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %88

39:                                               ; preds = %24
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %40, i8** %11, align 8
  %41 = load %struct.perf_sample*, %struct.perf_sample** %6, align 8
  %42 = load %struct.evsel*, %struct.evsel** %7, align 8
  %43 = load %struct.thread*, %struct.thread** %8, align 8
  %44 = load %struct.addr_location*, %struct.addr_location** %9, align 8
  %45 = call i8* @resolve_branch_sym(%struct.perf_sample* %41, %struct.evsel* %42, %struct.thread* %43, %struct.addr_location* %44, i32* %12)
  store i8* %45, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %88

49:                                               ; preds = %39
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %86, %49
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @strcspn(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @strncmp(i8* %63, i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.thread*, %struct.thread** %8, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.thread*, %struct.thread** %8, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %5, align 4
  br label %88

74:                                               ; preds = %62, %56
  %75 = load i32, i32* %15, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 44
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %83, %74
  br label %52

87:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %68, %48, %38, %35, %23
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @thread_stack__depth(%struct.thread*, i32) #1

declare dso_local i8* @resolve_branch_sym(%struct.perf_sample*, %struct.evsel*, %struct.thread*, %struct.addr_location*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
