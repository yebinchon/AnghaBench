; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_dso__build_id_filename.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_dso__build_id_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }

@SBUILD_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dso__build_id_filename(%struct.dso* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dso*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.dso*, %struct.dso** %6, align 8
  %19 = call i32 @dso__is_kallsyms(%struct.dso* %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.dso*, %struct.dso** %6, align 8
  %21 = call i32 @dso__is_vdso(%struct.dso* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @SBUILD_ID_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.dso*, %struct.dso** %6, align 8
  %30 = getelementptr inbounds %struct.dso, %struct.dso* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %75

34:                                               ; preds = %4
  %35 = load %struct.dso*, %struct.dso** %6, align 8
  %36 = getelementptr inbounds %struct.dso, %struct.dso* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @build_id__sprintf(i32 %37, i32 4, i8* %25)
  %39 = call i8* @build_id_cache__linkname(i8* %25, i32* null, i32 0)
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %14, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i8* null, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %75

43:                                               ; preds = %34
  %44 = load i8*, i8** %14, align 8
  %45 = call i64 @is_regular_file(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 (i8**, i64, i8*, i8*, ...) @asnprintf(i8** %7, i64 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %49)
  store i32 %50, i32* %16, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load i64, i64* %8, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @build_id_cache__basename(i32 %54, i32 %55, i32 %56)
  %58 = call i32 (i8**, i64, i8*, i8*, ...) @asnprintf(i8** %7, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %53, i32 %57)
  store i32 %58, i32* %16, align 4
  br label %59

59:                                               ; preds = %51, %47
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %59
  store i8* null, i8** %7, align 8
  br label %71

71:                                               ; preds = %70, %65, %62
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %7, align 8
  store i8* %74, i8** %5, align 8
  store i32 1, i32* %17, align 4
  br label %75

75:                                               ; preds = %71, %42, %33
  %76 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i8*, i8** %5, align 8
  ret i8* %77
}

declare dso_local i32 @dso__is_kallsyms(%struct.dso*) #1

declare dso_local i32 @dso__is_vdso(%struct.dso*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @build_id__sprintf(i32, i32, i8*) #1

declare dso_local i8* @build_id_cache__linkname(i8*, i32*, i32) #1

declare dso_local i64 @is_regular_file(i8*) #1

declare dso_local i32 @asnprintf(i8**, i64, i8*, i8*, ...) #1

declare dso_local i32 @build_id_cache__basename(i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
