; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device.c_tls_device_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }

@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.iov_iter*)* @tls_device_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_device_copy_data(i8* %0, i64 %1, %struct.iov_iter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = sub i64 %11, 1
  %13 = xor i64 %12, -1
  %14 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = and i64 %13, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @min(i64 %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %27 = call i64 @copy_from_iter(i8* %24, i64 %25, %struct.iov_iter* %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EFAULT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %20
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, %34
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr i8, i8* %38, i64 %37
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %33, %3
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %43 = call i64 @round_down(i64 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %47 = call i64 @copy_from_iter_nocache(i8* %44, i64 %45, %struct.iov_iter* %46)
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %73

53:                                               ; preds = %40
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  store i8* %59, i8** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %66 = call i64 @copy_from_iter(i8* %63, i64 %64, %struct.iov_iter* %65)
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %62, %53
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %69, %50, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @copy_from_iter(i8*, i64, %struct.iov_iter*) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i64 @copy_from_iter_nocache(i8*, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
