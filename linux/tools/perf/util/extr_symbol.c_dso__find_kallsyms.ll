; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__find_kallsyms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_dso__find_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }
%struct.map = type { i32 }

@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/sys/kernel/notes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/proc/kcore\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@buildid_dir = common dso_local global i32 0, align 4
@DSO__NAME_KCORE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"No kallsyms or vmlinux with build-id %s was found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dso*, %struct.map*)* @dso__find_kallsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dso__find_kallsyms(%struct.dso* %0, %struct.map* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.map* %1, %struct.map** %5, align 8
  %12 = load i32, i32* @BUILD_ID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load %struct.dso*, %struct.dso** %4, align 8
  %23 = getelementptr inbounds %struct.dso, %struct.dso* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %66

27:                                               ; preds = %2
  %28 = mul nuw i64 4, %13
  %29 = trunc i64 %28 to i32
  %30 = call i64 @sysfs__read_build_id(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %15, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.dso*, %struct.dso** %4, align 8
  %34 = call i32 @dso__build_id_equal(%struct.dso* %33, i32* %15)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = call i64 @filename__readable(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.map*, %struct.map** %5, align 8
  %43 = call i32 @validate_kcore_addresses(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.map* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %66

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %35
  %48 = load %struct.dso*, %struct.dso** %4, align 8
  %49 = getelementptr inbounds %struct.dso, %struct.dso* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @build_id__sprintf(i32 %50, i32 4, i8* %18)
  %52 = trunc i64 %20 to i32
  %53 = load i32, i32* @buildid_dir, align 4
  %54 = load i32, i32* @DSO__NAME_KCORE, align 4
  %55 = call i32 @scnprintf(i8* %21, i32 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %54, i8* %18)
  %56 = load %struct.map*, %struct.map** %5, align 8
  %57 = trunc i64 %20 to i32
  %58 = call i32 @find_matching_kcore(%struct.map* %56, i8* %21, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %47
  %61 = call i8* @strdup(i8* %21)
  store i8* %61, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %45, %26
  %67 = call i8* @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i8* %67, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

68:                                               ; preds = %62
  %69 = trunc i64 %20 to i32
  %70 = call i32 @build_id_cache__kallsyms_path(i8* %18, i8* %21, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %18)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

74:                                               ; preds = %68
  %75 = call i8* @strdup(i8* %21)
  store i8* %75, i8** %3, align 8
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %72, %66, %60
  %77 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i8*, i8** %3, align 8
  ret i8* %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysfs__read_build_id(i8*, i32*, i32) #2

declare dso_local i32 @dso__build_id_equal(%struct.dso*, i32*) #2

declare dso_local i64 @filename__readable(i8*) #2

declare dso_local i32 @validate_kcore_addresses(i8*, %struct.map*) #2

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @find_matching_kcore(%struct.map*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @build_id_cache__kallsyms_path(i8*, i8*, i32) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
