; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @nfdi_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfdi_equal(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.unicode_data*, align 8
  %7 = alloca %struct.unicode_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.unicode_data*
  store %struct.unicode_data* %9, %struct.unicode_data** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.unicode_data*
  store %struct.unicode_data* %11, %struct.unicode_data** %7, align 8
  %12 = load %struct.unicode_data*, %struct.unicode_data** %6, align 8
  %13 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.unicode_data*, %struct.unicode_data** %7, align 8
  %16 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.unicode_data*, %struct.unicode_data** %6, align 8
  %22 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.unicode_data*, %struct.unicode_data** %7, align 8
  %25 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %61

29:                                               ; preds = %20
  %30 = load %struct.unicode_data*, %struct.unicode_data** %6, align 8
  %31 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.unicode_data*, %struct.unicode_data** %7, align 8
  %36 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.unicode_data*, %struct.unicode_data** %6, align 8
  %41 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.unicode_data*, %struct.unicode_data** %7, align 8
  %44 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strcmp(i64 %42, i64 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %61

49:                                               ; preds = %39, %34, %29
  %50 = load %struct.unicode_data*, %struct.unicode_data** %6, align 8
  %51 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.unicode_data*, %struct.unicode_data** %7, align 8
  %56 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  store i32 0, i32* %3, align 4
  br label %61

60:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %48, %28, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
