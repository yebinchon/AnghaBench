; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c___open_dso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_dso.c___open_dso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32, i32 }
%struct.machine = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PATH_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KMOD_DECOMP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*)* @__open_dso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__open_dso(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dso*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %4, align 8
  store %struct.machine* %1, %struct.machine** %5, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %16 = load i32, i32* @PATH_MAX, align 4
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.machine*, %struct.machine** %5, align 8
  %25 = icmp ne %struct.machine* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.machine*, %struct.machine** %5, align 8
  %28 = getelementptr inbounds %struct.machine, %struct.machine* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.dso*, %struct.dso** %4, align 8
  %32 = load %struct.dso*, %struct.dso** %4, align 8
  %33 = getelementptr inbounds %struct.dso, %struct.dso* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* @PATH_MAX, align 4
  %38 = call i64 @dso__read_binary_type_filename(%struct.dso* %31, i32 %34, i8* %35, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %81

41:                                               ; preds = %30
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @is_regular_file(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %81

46:                                               ; preds = %41
  %47 = load %struct.dso*, %struct.dso** %4, align 8
  %48 = call i64 @dso__needs_decompress(%struct.dso* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* @KMOD_DECOMP_LEN, align 4
  %52 = zext i32 %51 to i64
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %10, align 8
  %54 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %11, align 8
  store i64 %52, i64* %12, align 8
  %55 = load %struct.dso*, %struct.dso** %4, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i64 @dso__decompress_kmodule_path(%struct.dso* %55, i8* %56, i8* %54, i64 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.dso*, %struct.dso** %4, align 8
  %62 = getelementptr inbounds %struct.dso, %struct.dso* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  store i32 2, i32* %13, align 4
  br label %68

65:                                               ; preds = %50
  store i32 1, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @strcpy(i8* %66, i8* %54)
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %60, %65
  %69 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %13, align 4
  switch i32 %70, label %87 [
    i32 0, label %71
    i32 2, label %81
  ]

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %46
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @do_open(i8* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @unlink(i8* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %68, %45, %40
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %81, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86

87:                                               ; preds = %68
  unreachable
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @dso__read_binary_type_filename(%struct.dso*, i32, i8*, i8*, i32) #1

declare dso_local i32 @is_regular_file(i8*) #1

declare dso_local i64 @dso__needs_decompress(%struct.dso*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @dso__decompress_kmodule_path(%struct.dso*, i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @do_open(i8*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
