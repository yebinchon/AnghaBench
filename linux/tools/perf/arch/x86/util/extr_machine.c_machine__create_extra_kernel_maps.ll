; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_machine__create_extra_kernel_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/x86/util/extr_machine.c_machine__create_extra_kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.dso = type { i32 }
%struct.extra_kernel_map_info = type { i32, %struct.extra_kernel_map*, i64 }
%struct.extra_kernel_map = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@find_extra_kernel_maps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__create_extra_kernel_maps(%struct.machine* %0, %struct.dso* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca %struct.extra_kernel_map_info, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.extra_kernel_map*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %struct.dso* %1, %struct.dso** %5, align 8
  %13 = bitcast %struct.extra_kernel_map_info* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.machine*, %struct.machine** %4, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = call i32 @machine__get_kallsyms_filename(%struct.machine* %18, i8* %17, i32 %19)
  %21 = call i64 @symbol__restricted_filename(i8* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load i32, i32* @find_extra_kernel_maps, align 4
  %26 = call i32 @kallsyms__parse(i8* %17, %struct.extra_kernel_map_info* %6, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %67

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %67

35:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 1
  %43 = load %struct.extra_kernel_map*, %struct.extra_kernel_map** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %43, i64 %45
  store %struct.extra_kernel_map* %46, %struct.extra_kernel_map** %12, align 8
  %47 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.extra_kernel_map*, %struct.extra_kernel_map** %12, align 8
  %50 = getelementptr inbounds %struct.extra_kernel_map, %struct.extra_kernel_map* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.machine*, %struct.machine** %4, align 8
  %52 = load %struct.dso*, %struct.dso** %5, align 8
  %53 = load %struct.extra_kernel_map*, %struct.extra_kernel_map** %12, align 8
  %54 = call i32 @machine__create_extra_kernel_map(%struct.machine* %51, %struct.dso* %52, %struct.extra_kernel_map* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %67

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %36

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.machine*, %struct.machine** %4, align 8
  %66 = getelementptr inbounds %struct.machine, %struct.machine* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57, %34, %29
  %68 = getelementptr inbounds %struct.extra_kernel_map_info, %struct.extra_kernel_map_info* %6, i32 0, i32 1
  %69 = load %struct.extra_kernel_map*, %struct.extra_kernel_map** %68, align 8
  %70 = call i32 @free(%struct.extra_kernel_map* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %67, %23
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @machine__get_kallsyms_filename(%struct.machine*, i8*, i32) #3

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #3

declare dso_local i32 @kallsyms__parse(i8*, %struct.extra_kernel_map_info*, i32) #3

declare dso_local i32 @machine__create_extra_kernel_map(%struct.machine*, %struct.dso*, %struct.extra_kernel_map*) #3

declare dso_local i32 @free(%struct.extra_kernel_map*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
