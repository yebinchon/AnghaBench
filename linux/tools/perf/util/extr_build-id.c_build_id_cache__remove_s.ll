; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__remove_s.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_build-id.c_build_id_cache__remove_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i64 0, align 8
@F_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_id_cache__remove_s(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i64, i64* @PATH_MAX, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i8* @zalloc(i64 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i8* @zalloc(i64 %11)
  store i8* %12, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  br label %65

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @build_id_cache__linkname(i8* %20, i8* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %65

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @F_OK, align 4
  %29 = call i64 @access(i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %65

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %35, 1
  %37 = call i64 @readlink(i8* %33, i8* %34, i64 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %65

40:                                               ; preds = %32
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @unlink(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %65

45:                                               ; preds = %40
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strrchr(i8* %46, i8 signext 47)
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sub i64 %50, %55
  %57 = trunc i64 %56 to i32
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @snprintf(i8* %49, i32 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @rm_rf(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  br label %65

64:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %63, %44, %39, %31, %25, %18
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @build_id_cache__linkname(i8*, i8*, i64) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @readlink(i8*, i8*, i64) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @rm_rf(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
