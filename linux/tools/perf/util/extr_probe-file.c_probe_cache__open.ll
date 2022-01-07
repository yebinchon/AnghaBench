; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache = type { i32 }
%struct.nsinfo = type { i32 }
%struct.nscookie = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@DSO__NAME_KALLSYMS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to get build-id from %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to add build-id cache: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to get cache from %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/probes\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to open cache(%d): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_cache*, i8*, %struct.nsinfo*)* @probe_cache__open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_cache__open(%struct.probe_cache* %0, i8* %1, %struct.nsinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.probe_cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nsinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nscookie, align 4
  %16 = alloca i32, align 4
  store %struct.probe_cache* %0, %struct.probe_cache** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.nsinfo* %2, %struct.nsinfo** %7, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @build_id_cache__cached(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %33 = call i32 @strlcpy(i8* %23, i8* %31, i32 %32)
  %34 = call i8* @build_id_cache__linkname(i8* %23, i32* null, i32 0)
  store i8* %34, i8** %11, align 8
  br label %79

35:                                               ; preds = %26, %3
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** @DSO__NAME_KALLSYMS, align 8
  %41 = call i32 @strcmp(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %35
  %44 = load i8*, i8** @DSO__NAME_KALLSYMS, align 8
  store i8* %44, i8** %6, align 8
  store i32 1, i32* %12, align 4
  %45 = call i32 @sysfs__sprintf_build_id(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %45, i32* %13, align 4
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.nsinfo*, %struct.nsinfo** %7, align 8
  %48 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %47, %struct.nscookie* %15)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @filename__sprintf_build_id(i8* %49, i8* %23)
  store i32 %50, i32* %13, align 4
  %51 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %15)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %107

59:                                               ; preds = %52
  %60 = call i64 @build_id_cache__cached(i8* %23)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = load %struct.nsinfo*, %struct.nsinfo** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @build_id_cache__add_s(i8* %23, i8* %63, %struct.nsinfo* %64, i32 %65, i32* null)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %107

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %59
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.nsinfo*, %struct.nsinfo** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i8* @build_id_cache__cachedir(i8* %23, i8* %75, %struct.nsinfo* %76, i32 %77, i32 0)
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %74, %30
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load i32, i32* @PATH_MAX, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @snprintf(i8* %20, i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @O_CREAT, align 4
  %92 = load i32, i32* @O_RDWR, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @open(i8* %20, i32 %93, i32 420)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %98, i8* %20)
  br label %100

100:                                              ; preds = %97, %87
  %101 = load i8*, i8** %11, align 8
  %102 = call i32 @free(i8* %101)
  %103 = load i32, i32* %14, align 4
  %104 = load %struct.probe_cache*, %struct.probe_cache** %5, align 8
  %105 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %107

107:                                              ; preds = %100, %82, %69, %55
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @build_id_cache__cached(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @build_id_cache__linkname(i8*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @sysfs__sprintf_build_id(i8*, i8*) #2

declare dso_local i32 @nsinfo__mountns_enter(%struct.nsinfo*, %struct.nscookie*) #2

declare dso_local i32 @filename__sprintf_build_id(i8*, i8*) #2

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @build_id_cache__add_s(i8*, i8*, %struct.nsinfo*, i32, i32*) #2

declare dso_local i8* @build_id_cache__cachedir(i8*, i8*, %struct.nsinfo*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
