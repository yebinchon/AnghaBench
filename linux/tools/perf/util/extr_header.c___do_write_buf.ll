; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___do_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c___do_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feat_fd = type { i64, i64, i8* }

@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.feat_fd*, i8*, i64)* @__do_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_write_buf(%struct.feat_fd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.feat_fd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.feat_fd* %0, %struct.feat_fd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 65531, i64* %8, align 8
  %11 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %12 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %16 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %14, %17
  %19 = icmp ugt i64 %18, 65531
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @E2BIG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %28 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = icmp ugt i64 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %9, align 8
  %34 = shl i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %24

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @min(i64 65531, i64 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %39 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %45 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i8* @realloc(i8* %46, i64 %47)
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %77

54:                                               ; preds = %43
  %55 = load i8*, i8** %10, align 8
  %56 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %57 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %60 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %35
  %62 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %63 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %66 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr i8, i8* %64, i64 %67
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @memcpy(i8* %68, i8* %69, i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.feat_fd*, %struct.feat_fd** %5, align 8
  %74 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, %72
  store i64 %76, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %61, %51, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
