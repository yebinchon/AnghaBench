; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_get_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdso_file = type { i32, i8*, i32 }

@VDSO__MAP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vdso_file*)* @get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_file(%struct.vdso_file* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vdso_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vdso_file* %0, %struct.vdso_file** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %10 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %11 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %16 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %20 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @VDSO__MAP_NAME, align 4
  %25 = call i64 @find_map(i8** %6, i8** %7, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %18
  store i8* null, i8** %2, align 8
  br label %79

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, i64* %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i8* @memdup(i8* %34, i64 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %28
  store i8* null, i8** %2, align 8
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %42 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @mkstemp(i8* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %62

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @write(i32 %50, i8* %51, i64 %52)
  %54 = icmp eq i64 %49, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %57 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @close(i32 %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %65, null
  %67 = zext i1 %66 to i32
  %68 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %69 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %71 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.vdso_file*, %struct.vdso_file** %3, align 8
  %77 = getelementptr inbounds %struct.vdso_file, %struct.vdso_file* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i8*, i8** %4, align 8
  store i8* %78, i8** %2, align 8
  br label %79

79:                                               ; preds = %62, %39, %27, %14
  %80 = load i8*, i8** %2, align 8
  ret i8* %80
}

declare dso_local i64 @find_map(i8**, i8**, i32) #1

declare dso_local i8* @memdup(i8*, i64) #1

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
