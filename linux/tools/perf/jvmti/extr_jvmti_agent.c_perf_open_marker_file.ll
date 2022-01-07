; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_perf_open_marker_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/jvmti/extr_jvmti_agent.c_perf_open_marker_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@marker_addr = common dso_local global i64 0, align 8
@MAP_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @perf_open_marker_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_open_marker_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @_SC_PAGESIZE, align 4
  %6 = call i64 @sysconf(i32 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* @PROT_READ, align 4
  %13 = load i32, i32* @PROT_EXEC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @mmap(i32* null, i64 %11, i32 %14, i32 %15, i32 %16, i32 0)
  store i64 %17, i64* @marker_addr, align 8
  %18 = load i64, i64* @marker_addr, align 8
  %19 = load i64, i64* @MAP_FAILED, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 0
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @mmap(i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
