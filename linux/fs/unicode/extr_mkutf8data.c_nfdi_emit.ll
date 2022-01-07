; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_emit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i32, i64, i32, i32 }

@DECOMPOSE = common dso_local global i8* null, align 8
@HANGUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @nfdi_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfdi_emit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.unicode_data*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.unicode_data*
  store %struct.unicode_data* %8, %struct.unicode_data** %5, align 8
  %9 = load %struct.unicode_data*, %struct.unicode_data** %5, align 8
  %10 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %4, align 8
  store i8 %12, i8* %13, align 1
  %15 = load %struct.unicode_data*, %struct.unicode_data** %5, align 8
  %16 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @HANGUL_SYLLABLE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** @DECOMPOSE, align 8
  %22 = ptrtoint i8* %21 to i8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %4, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* @HANGUL, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 %26, i8* %27, align 1
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.unicode_data*, %struct.unicode_data** %5, align 8
  %31 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i8*, i8** @DECOMPOSE, align 8
  %36 = ptrtoint i8* %35 to i8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  store i8 %36, i8* %37, align 1
  %39 = load %struct.unicode_data*, %struct.unicode_data** %5, align 8
  %40 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %51, %34
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  %46 = load i8, i8* %44, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  store i8 %46, i8* %47, align 1
  %49 = zext i8 %46 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %43

52:                                               ; preds = %43
  br label %60

53:                                               ; preds = %29
  %54 = load %struct.unicode_data*, %struct.unicode_data** %5, align 8
  %55 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %4, align 8
  store i8 %57, i8* %58, align 1
  br label %60

60:                                               ; preds = %53, %52
  br label %61

61:                                               ; preds = %60, %20
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i64 @HANGUL_SYLLABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
