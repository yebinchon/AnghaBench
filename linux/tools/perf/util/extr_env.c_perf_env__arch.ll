; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__arch.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_env.c_perf_env__arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_env = type { i8* }
%struct.utsname = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @perf_env__arch(%struct.perf_env* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_env*, align 8
  %4 = alloca %struct.utsname, align 8
  %5 = alloca i8*, align 8
  store %struct.perf_env* %0, %struct.perf_env** %3, align 8
  %6 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %7 = icmp ne %struct.perf_env* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %10 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %8, %1
  %14 = call i64 @uname(%struct.utsname* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %27

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %5, align 8
  br label %24

20:                                               ; preds = %8
  %21 = load %struct.perf_env*, %struct.perf_env** %3, align 8
  %22 = getelementptr inbounds %struct.perf_env, %struct.perf_env* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* @normalize_arch(i8* %25)
  store i8* %26, i8** %2, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i8*, i8** %2, align 8
  ret i8* %28
}

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i8* @normalize_arch(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
