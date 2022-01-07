; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__warn_kptr_restrict.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__warn_kptr_restrict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.report = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.map = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.kmap = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [81 x i8] c"As no suitable kallsyms nor vmlinux was found, kernel samples\0Acan't be resolved.\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"If some relocation was applied (e.g. kexec) symbols may be misresolved.\00", align 1
@.str.2 = private unnamed_addr constant [192 x i8] c"Kernel address maps (/proc/{kallsyms,modules}) were restricted.\0A\0ACheck /proc/sys/kernel/kptr_restrict before running 'perf record'.\0A\0A%s\0A\0ASamples in kernel modules can't be resolved as well.\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.report*)* @report__warn_kptr_restrict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report__warn_kptr_restrict(%struct.report* %0) #0 {
  %2 = alloca %struct.report*, align 8
  %3 = alloca %struct.map*, align 8
  %4 = alloca %struct.kmap*, align 8
  %5 = alloca i8*, align 8
  store %struct.report* %0, %struct.report** %2, align 8
  %6 = load %struct.report*, %struct.report** %2, align 8
  %7 = getelementptr inbounds %struct.report, %struct.report* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = call %struct.map* @machine__kernel_map(i32* %10)
  store %struct.map* %11, %struct.map** %3, align 8
  %12 = load %struct.map*, %struct.map** %3, align 8
  %13 = icmp ne %struct.map* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.map*, %struct.map** %3, align 8
  %16 = call %struct.kmap* @map__kmap(%struct.map* %15)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi %struct.kmap* [ %16, %14 ], [ null, %17 ]
  store %struct.kmap* %19, %struct.kmap** %4, align 8
  %20 = load %struct.report*, %struct.report** %2, align 8
  %21 = getelementptr inbounds %struct.report, %struct.report* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @perf_evlist__exclude_kernel(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %61

28:                                               ; preds = %18
  %29 = load %struct.map*, %struct.map** %3, align 8
  %30 = icmp eq %struct.map* %29, null
  br i1 %30, label %50, label %31

31:                                               ; preds = %28
  %32 = load %struct.map*, %struct.map** %3, align 8
  %33 = getelementptr inbounds %struct.map, %struct.map* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load %struct.kmap*, %struct.kmap** %4, align 8
  %40 = getelementptr inbounds %struct.kmap, %struct.kmap* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.kmap*, %struct.kmap** %4, align 8
  %45 = getelementptr inbounds %struct.kmap, %struct.kmap* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43, %38, %28
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %51 = load %struct.map*, %struct.map** %3, align 8
  %52 = icmp ne %struct.map* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.map*, %struct.map** %3, align 8
  %55 = call i64 @map__has_symbols(%struct.map* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %58

58:                                               ; preds = %57, %53, %50
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @ui__warning(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %27, %58, %43, %31
  ret void
}

declare dso_local %struct.map* @machine__kernel_map(i32*) #1

declare dso_local %struct.kmap* @map__kmap(%struct.map*) #1

declare dso_local i64 @perf_evlist__exclude_kernel(i32) #1

declare dso_local i64 @map__has_symbols(%struct.map*) #1

declare dso_local i32 @ui__warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
