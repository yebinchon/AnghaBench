; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__update_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-buildid-cache.c_build_id_cache__update_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32 }
%struct.nscookie = type { i32 }

@BUILD_ID_SIZE = common dso_local global i32 0, align 4
@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't read a build-id in %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Updating %s %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nsinfo*)* @build_id_cache__update_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_id_cache__update_file(i8* %0, %struct.nsinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nsinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nscookie, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nsinfo* %1, %struct.nsinfo** %5, align 8
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
  %19 = load %struct.nsinfo*, %struct.nsinfo** %5, align 8
  %20 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %19, %struct.nscookie* %9)
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i32* %15 to i32**
  %23 = mul nuw i64 4, %13
  %24 = trunc i64 %23 to i32
  %25 = call i32 @filename__read_build_id(i8* %21, i32** %22, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %9)
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %55

32:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  %33 = mul nuw i64 4, %13
  %34 = trunc i64 %33 to i32
  %35 = call i32 @build_id__sprintf(i32* %15, i32 %34, i8* %18)
  %36 = call i64 @build_id_cache__cached(i8* %18)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @build_id_cache__remove_s(i8* %18)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.nsinfo*, %struct.nsinfo** %5, align 8
  %46 = call i32 @build_id_cache__add_s(i8* %18, i8* %44, %struct.nsinfo* %45, i32 0, i32 0)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %53 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %48, i8* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %55

55:                                               ; preds = %47, %29
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nsinfo__mountns_enter(%struct.nsinfo*, %struct.nscookie*) #2

declare dso_local i32 @filename__read_build_id(i8*, i32**, i32) #2

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #2

declare dso_local i32 @pr_debug(i8*, i8*, ...) #2

declare dso_local i32 @build_id__sprintf(i32*, i32, i8*) #2

declare dso_local i64 @build_id_cache__cached(i8*) #2

declare dso_local i32 @build_id_cache__remove_s(i8*) #2

declare dso_local i32 @build_id_cache__add_s(i8*, i8*, %struct.nsinfo*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
