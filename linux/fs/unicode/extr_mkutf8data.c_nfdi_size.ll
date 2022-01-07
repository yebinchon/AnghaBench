; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_nfdi_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nfdi_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfdi_size(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.unicode_data*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.unicode_data*
  store %struct.unicode_data* %6, %struct.unicode_data** %3, align 8
  store i32 2, i32* %4, align 4
  %7 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %8 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @HANGUL_SYLLABLE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %17 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.unicode_data*, %struct.unicode_data** %3, align 8
  %22 = getelementptr inbounds %struct.unicode_data, %struct.unicode_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @strlen(i64 %23)
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %15
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @HANGUL_SYLLABLE(i32) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
