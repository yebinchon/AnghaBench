; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__set_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c_dso__set_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64, i32 }
%struct.kmod_path = type { i32, i64, i64 }
%struct.machine = type { i32 }

@DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE = common dso_local global i32 0, align 4
@DSO_BINARY_TYPE__GUEST_KMODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dso__set_module_info(%struct.dso* %0, %struct.kmod_path* %1, %struct.machine* %2) #0 {
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.kmod_path*, align 8
  %6 = alloca %struct.machine*, align 8
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.kmod_path* %1, %struct.kmod_path** %5, align 8
  store %struct.machine* %2, %struct.machine** %6, align 8
  %7 = load %struct.machine*, %struct.machine** %6, align 8
  %8 = call i64 @machine__is_host(%struct.machine* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @DSO_BINARY_TYPE__SYSTEM_PATH_KMODULE, align 4
  %12 = load %struct.dso*, %struct.dso** %4, align 8
  %13 = getelementptr inbounds %struct.dso, %struct.dso* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @DSO_BINARY_TYPE__GUEST_KMODULE, align 4
  %16 = load %struct.dso*, %struct.dso** %4, align 8
  %17 = getelementptr inbounds %struct.dso, %struct.dso* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %20 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %25 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.dso*, %struct.dso** %4, align 8
  %30 = getelementptr inbounds %struct.dso, %struct.dso* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %34 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dso*, %struct.dso** %4, align 8
  %37 = getelementptr inbounds %struct.dso, %struct.dso* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %28, %23, %18
  %39 = load %struct.dso*, %struct.dso** %4, align 8
  %40 = load %struct.kmod_path*, %struct.kmod_path** %5, align 8
  %41 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strdup(i32 %42)
  %44 = call i32 @dso__set_short_name(%struct.dso* %39, i32 %43, i32 1)
  ret void
}

declare dso_local i64 @machine__is_host(%struct.machine*) #1

declare dso_local i32 @dso__set_short_name(%struct.dso*, i32, i32) #1

declare dso_local i32 @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
