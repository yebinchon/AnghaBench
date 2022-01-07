; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_sysinfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdb_sysinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i64, i8**, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@avenrun = common dso_local global i8** null, align 8
@nr_threads = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysinfo*)* @kdb_sysinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdb_sysinfo(%struct.sysinfo* %0) #0 {
  %2 = alloca %struct.sysinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.sysinfo* %0, %struct.sysinfo** %2, align 8
  %4 = call i32 (...) @ktime_get_mono_fast_ns()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %6 = call i32 @memset(%struct.sysinfo* %5, i32 0, i32 24)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NSEC_PER_SEC, align 4
  %9 = call i32 @div_u64(i32 %7, i32 %8)
  %10 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %11 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load i8**, i8*** @avenrun, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %14, i8** %18, align 8
  %19 = load i8**, i8*** @avenrun, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %23 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %21, i8** %25, align 8
  %26 = load i8**, i8*** @avenrun, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 2
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %30 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* @nr_threads, align 8
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %36 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.sysinfo*, %struct.sysinfo** %2, align 8
  %38 = call i32 @si_meminfo(%struct.sysinfo* %37)
  ret void
}

declare dso_local i32 @ktime_get_mono_fast_ns(...) #1

declare dso_local i32 @memset(%struct.sysinfo*, i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
