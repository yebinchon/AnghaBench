; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__cachedir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__cachedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@buildid_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DSO__NAME_VDSO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_id_cache__cachedir(i8* %0, i8* %1, %struct.nsinfo* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nsinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.nsinfo* %2, %struct.nsinfo** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ true, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.nsinfo*, %struct.nsinfo** %9, align 8
  %29 = call i8* @nsinfo__realpath(i8* %27, %struct.nsinfo* %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i8* null, i8** %6, align 8
  br label %69

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* @buildid_dir, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i8*, i8** @DSO__NAME_VDSO, align 8
  br label %46

44:                                               ; preds = %34
  %45 = load i8*, i8** %12, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i8* [ %43, %42 ], [ %45, %44 ]
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %54
  %57 = phi i8* [ %52, %54 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %55 ]
  %58 = call i64 @asprintf(i8** %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %39, i8* %47, i8* %51, i8* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8* null, i8** %13, align 8
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @free(i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %13, align 8
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %67, %32
  %70 = load i8*, i8** %6, align 8
  ret i8* %70
}

declare dso_local i8* @nsinfo__realpath(i8*, %struct.nsinfo*) #1

declare dso_local i64 @asprintf(i8**, i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
