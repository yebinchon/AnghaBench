; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.dso = type { i32 }
%struct.machine = type { i8* }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"[kernel]\00", align 1
@DSO_TYPE_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"[guest.kernel]\00", align 1
@DSO_TYPE_GUEST_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (%struct.machine*)* @machine__get_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @machine__get_kernel(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %2, align 8
  %5 = load %struct.machine*, %struct.machine** %2, align 8
  %6 = getelementptr inbounds %struct.machine, %struct.machine* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load %struct.machine*, %struct.machine** %2, align 8
  %9 = call i64 @machine__is_host(%struct.machine* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.machine*, %struct.machine** %2, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @DSO_TYPE_KERNEL, align 4
  %20 = call %struct.dso* @machine__findnew_kernel(%struct.machine* %17, i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.dso* %20, %struct.dso** %4, align 8
  br label %31

21:                                               ; preds = %1
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.machine*, %struct.machine** %2, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @DSO_TYPE_GUEST_KERNEL, align 4
  %30 = call %struct.dso* @machine__findnew_kernel(%struct.machine* %27, i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store %struct.dso* %30, %struct.dso** %4, align 8
  br label %31

31:                                               ; preds = %26, %16
  %32 = load %struct.dso*, %struct.dso** %4, align 8
  %33 = icmp ne %struct.dso* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.dso*, %struct.dso** %4, align 8
  %36 = getelementptr inbounds %struct.dso, %struct.dso* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.dso*, %struct.dso** %4, align 8
  %41 = load %struct.machine*, %struct.machine** %2, align 8
  %42 = call i32 @dso__read_running_kernel_build_id(%struct.dso* %40, %struct.machine* %41)
  br label %43

43:                                               ; preds = %39, %34, %31
  %44 = load %struct.dso*, %struct.dso** %4, align 8
  ret %struct.dso* %44
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local %struct.dso* @machine__findnew_kernel(%struct.machine*, i8*, i8*, i32) #1

declare dso_local i32 @dso__read_running_kernel_build_id(%struct.dso*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
