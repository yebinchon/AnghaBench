; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_uwrite.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_uwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_updated = common dso_local global i32 0, align 4
@file_ptr = common dso_local global i64 0, align 8
@file_end = common dso_local global i64 0, align 8
@file_append_size = common dso_local global i64 0, align 8
@file_append = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @uwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwrite(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* @file_updated, align 4
  %10 = load i64, i64* @file_ptr, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* @file_end, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %2
  %16 = load i64, i64* @file_ptr, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* @file_end, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @file_append_size, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i64, i64* @file_append, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @realloc(i64 %25, i64 %26)
  store i64 %27, i64* @file_append, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* @file_append_size, align 8
  br label %29

29:                                               ; preds = %24, %15
  %30 = load i64, i64* @file_append, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @file_append_cleanup()
  %35 = call i32 (...) @mmap_cleanup()
  store i32 -1, i32* %3, align 4
  br label %78

36:                                               ; preds = %29
  %37 = load i64, i64* @file_ptr, align 8
  %38 = load i64, i64* @file_end, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* @file_end, align 8
  %42 = load i64, i64* @file_ptr, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %6, align 8
  br label %48

44:                                               ; preds = %36
  store i64 0, i64* %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i64, i64* @file_ptr, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @memcpy(i64 %53, i8* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i64, i64* @file_append, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub i64 %68, %69
  %71 = call i32 @memcpy(i64 %64, i8* %67, i64 %70)
  br label %72

72:                                               ; preds = %61, %57
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* @file_ptr, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* @file_ptr, align 8
  %76 = load i64, i64* %5, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %72, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @realloc(i64, i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @file_append_cleanup(...) #1

declare dso_local i32 @mmap_cleanup(...) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
