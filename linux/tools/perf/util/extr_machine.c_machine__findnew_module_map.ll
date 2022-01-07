; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__findnew_module_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__findnew_module_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { i32 }
%struct.machine = type { i32 }
%struct.dso = type { i32 }
%struct.kmod_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @machine__findnew_module_map(%struct.machine* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.map*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.dso*, align 8
  %10 = alloca %struct.kmod_path, align 4
  store %struct.machine* %0, %struct.machine** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.map* null, %struct.map** %8, align 8
  store %struct.dso* null, %struct.dso** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @kmod_path__parse_name(%struct.kmod_path* %10, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.map* null, %struct.map** %4, align 8
  br label %56

15:                                               ; preds = %3
  %16 = load %struct.machine*, %struct.machine** %5, align 8
  %17 = getelementptr inbounds %struct.machine, %struct.machine* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %10, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.map* @map_groups__find_by_name(i32* %17, i32 %19)
  store %struct.map* %20, %struct.map** %8, align 8
  %21 = load %struct.map*, %struct.map** %8, align 8
  %22 = icmp ne %struct.map* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.map*, %struct.map** %8, align 8
  %25 = getelementptr inbounds %struct.map, %struct.map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @dso__adjust_kmod_long_name(i32 %26, i8* %27)
  br label %50

29:                                               ; preds = %15
  %30 = load %struct.machine*, %struct.machine** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call %struct.dso* @machine__findnew_module_dso(%struct.machine* %30, %struct.kmod_path* %10, i8* %31)
  store %struct.dso* %32, %struct.dso** %9, align 8
  %33 = load %struct.dso*, %struct.dso** %9, align 8
  %34 = icmp eq %struct.dso* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %50

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.dso*, %struct.dso** %9, align 8
  %39 = call %struct.map* @map__new2(i32 %37, %struct.dso* %38)
  store %struct.map* %39, %struct.map** %8, align 8
  %40 = load %struct.map*, %struct.map** %8, align 8
  %41 = icmp eq %struct.map* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %50

43:                                               ; preds = %36
  %44 = load %struct.machine*, %struct.machine** %5, align 8
  %45 = getelementptr inbounds %struct.machine, %struct.machine* %44, i32 0, i32 0
  %46 = load %struct.map*, %struct.map** %8, align 8
  %47 = call i32 @map_groups__insert(i32* %45, %struct.map* %46)
  %48 = load %struct.map*, %struct.map** %8, align 8
  %49 = call i32 @map__put(%struct.map* %48)
  br label %50

50:                                               ; preds = %43, %42, %35, %23
  %51 = load %struct.dso*, %struct.dso** %9, align 8
  %52 = call i32 @dso__put(%struct.dso* %51)
  %53 = getelementptr inbounds %struct.kmod_path, %struct.kmod_path* %10, i32 0, i32 0
  %54 = call i32 @zfree(i32* %53)
  %55 = load %struct.map*, %struct.map** %8, align 8
  store %struct.map* %55, %struct.map** %4, align 8
  br label %56

56:                                               ; preds = %50, %14
  %57 = load %struct.map*, %struct.map** %4, align 8
  ret %struct.map* %57
}

declare dso_local i64 @kmod_path__parse_name(%struct.kmod_path*, i8*) #1

declare dso_local %struct.map* @map_groups__find_by_name(i32*, i32) #1

declare dso_local i32 @dso__adjust_kmod_long_name(i32, i8*) #1

declare dso_local %struct.dso* @machine__findnew_module_dso(%struct.machine*, %struct.kmod_path*, i8*) #1

declare dso_local %struct.map* @map__new2(i32, %struct.dso*) #1

declare dso_local i32 @map_groups__insert(i32*, %struct.map*) #1

declare dso_local i32 @map__put(%struct.map*) #1

declare dso_local i32 @dso__put(%struct.dso*) #1

declare dso_local i32 @zfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
