; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c_fscache_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i64, i64, i64, i64, i64* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fscache_cookie*, i8*, i64)* @fscache_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscache_set_key(%struct.fscache_cookie* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_cookie*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @DIV_ROUND_UP(i64 %12, i32 8)
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 8
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64* @kcalloc(i32 %17, i32 8, i32 %18)
  store i64* %19, i64** %9, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %71

25:                                               ; preds = %16
  %26 = load i64*, i64** %9, align 8
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %28 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %27, i32 0, i32 4
  store i64* %26, i64** %28, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %9, align 8
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i64*, i64** %9, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i64* %35, i8* %36, i64 %37)
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %44 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %61, %34
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i64*, i64** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %49

64:                                               ; preds = %49
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = lshr i64 %66, 32
  %68 = xor i64 %65, %67
  %69 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %70 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %22
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
