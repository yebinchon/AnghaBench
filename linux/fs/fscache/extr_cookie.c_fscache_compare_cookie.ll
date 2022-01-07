; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_compare_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_compare_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i64, i64, i32, i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fscache_cookie*, %struct.fscache_cookie*)* @fscache_compare_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fscache_compare_cookie(%struct.fscache_cookie* %0, %struct.fscache_cookie* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.fscache_cookie*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %4, align 8
  store %struct.fscache_cookie* %1, %struct.fscache_cookie** %5, align 8
  %8 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %9 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %12 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %17 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %20 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  store i64 %22, i64* %3, align 8
  br label %100

23:                                               ; preds = %2
  %24 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %25 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %28 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %33 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %36 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %3, align 8
  br label %100

39:                                               ; preds = %23
  %40 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %41 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %44 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %49 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %53 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %51, %55
  store i64 %56, i64* %3, align 8
  br label %100

57:                                               ; preds = %39
  %58 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %59 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %62 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %57
  %66 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %67 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %70 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  store i64 %72, i64* %3, align 8
  br label %100

73:                                               ; preds = %57
  %74 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %75 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ule i64 %77, 4
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %81 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %80, i32 0, i32 5
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %6, align 8
  %83 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %84 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %83, i32 0, i32 5
  %85 = bitcast i32* %84 to i8*
  store i8* %85, i8** %7, align 8
  br label %93

86:                                               ; preds = %73
  %87 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %88 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %6, align 8
  %90 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %91 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %86, %79
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.fscache_cookie*, %struct.fscache_cookie** %4, align 8
  %97 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @memcmp(i8* %94, i8* %95, i32 %98)
  store i64 %99, i64* %3, align 8
  br label %100

100:                                              ; preds = %93, %65, %47, %31, %15
  %101 = load i64, i64* %3, align 8
  ret i64 %101
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
