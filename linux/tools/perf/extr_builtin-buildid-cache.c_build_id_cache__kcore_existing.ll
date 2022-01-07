; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__kcore_existing.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__kcore_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/modules\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s/%s/modules\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @build_id_cache__kcore_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_id_cache__kcore_existing(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* @PATH_MAX, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i32 -1, i32* %13, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @opendir(i8* %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

31:                                               ; preds = %3
  %32 = trunc i64 %17 to i32
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %19, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %72, %48, %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %14, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %12, align 8
  %39 = load %struct.dirent*, %struct.dirent** %12, align 8
  %40 = icmp ne %struct.dirent* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %73

42:                                               ; preds = %36
  %43 = load %struct.dirent*, %struct.dirent** %12, align 8
  %44 = getelementptr inbounds %struct.dirent, %struct.dirent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DT_DIR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %35

49:                                               ; preds = %42
  %50 = trunc i64 %21 to i32
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.dirent*, %struct.dirent** %12, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %22, i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %54)
  %56 = trunc i64 %24 to i32
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.dirent*, %struct.dirent** %12, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @scnprintf(i8* %25, i32 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %60)
  %62 = call i32 @compare_proc_modules(i8* %19, i8* %22)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %49
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @same_kallsyms_reloc(i8* %65, i8* %25)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @strlcpy(i8* %69, i8* %25, i64 %70)
  store i32 0, i32* %13, align 4
  br label %73

72:                                               ; preds = %64, %49
  br label %35

73:                                               ; preds = %68, %41
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @closedir(i32* %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %30
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @compare_proc_modules(i8*, i8*) #2

declare dso_local i64 @same_kallsyms_reloc(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
