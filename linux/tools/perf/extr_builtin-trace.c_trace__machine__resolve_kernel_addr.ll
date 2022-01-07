; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__machine__resolve_kernel_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-trace.c_trace__machine__resolve_kernel_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.machine = type { i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [182 x i8] c"Kernel address maps (/proc/{kallsyms,modules}) are restricted.\0A\0ACheck /proc/sys/kernel/kptr_restrict and /proc/sys/kernel/perf_event_paranoid.\0A\0AKernel samples will not be resolved.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i8**)* @trace__machine__resolve_kernel_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @trace__machine__resolve_kernel_addr(i8* %0, i64* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.machine*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.machine*
  store %struct.machine* %10, %struct.machine** %8, align 8
  %11 = load %struct.machine*, %struct.machine** %8, align 8
  %12 = getelementptr inbounds %struct.machine, %struct.machine* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %28

16:                                               ; preds = %3
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @pr_warning(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.machine*, %struct.machine** %8, align 8
  %22 = getelementptr inbounds %struct.machine, %struct.machine* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  store i8* null, i8** %4, align 8
  br label %28

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = load i8**, i8*** %7, align 8
  %27 = call i8* @machine__resolve_kernel_addr(i8* %24, i64* %25, i8** %26)
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %23, %19, %15
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i8* @machine__resolve_kernel_addr(i8*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
