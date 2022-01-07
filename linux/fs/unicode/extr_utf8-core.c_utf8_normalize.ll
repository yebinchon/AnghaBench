; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_normalize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_map = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.utf8data = type { i32 }
%struct.utf8cursor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_normalize(%struct.unicode_map* %0, %struct.qstr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.unicode_map*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.utf8data*, align 8
  %11 = alloca %struct.utf8cursor, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.unicode_map* %0, %struct.unicode_map** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.unicode_map*, %struct.unicode_map** %6, align 8
  %15 = getelementptr inbounds %struct.unicode_map, %struct.unicode_map* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.utf8data* @utf8nfdi(i32 %16)
  store %struct.utf8data* %17, %struct.utf8data** %10, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.utf8data*, %struct.utf8data** %10, align 8
  %19 = load %struct.qstr*, %struct.qstr** %7, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qstr*, %struct.qstr** %7, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @utf8ncursor(%struct.utf8cursor* %11, %struct.utf8data* %18, i32 %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %58

30:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = call i32 @utf8byte(%struct.utf8cursor* %11)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %41, align 1
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %58

47:                                               ; preds = %35
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %31

55:                                               ; preds = %50, %31
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %44, %27
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.utf8data* @utf8nfdi(i32) #1

declare dso_local i64 @utf8ncursor(%struct.utf8cursor*, %struct.utf8data*, i32, i32) #1

declare dso_local i32 @utf8byte(%struct.utf8cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
