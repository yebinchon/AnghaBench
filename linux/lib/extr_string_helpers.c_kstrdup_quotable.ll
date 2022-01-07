; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_kstrdup_quotable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_HEX = common dso_local global i32 0, align 4
@__const.kstrdup_quotable.esc = private unnamed_addr constant [10 x i8] c"\0C\0A\0D\09\0B\07\1B\\\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kstrdup_quotable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @ESCAPE_HEX, align 4
  store i32 %11, i32* %9, align 4
  %12 = bitcast [10 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.kstrdup_quotable.esc, i32 0, i32 0), i64 10, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %23 = call i64 @string_escape_mem(i8* %19, i64 %20, i8* null, i64 0, i32 %21, i8* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %47

31:                                               ; preds = %16
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %38 = call i64 @string_escape_mem(i8* %32, i64 %33, i8* %34, i64 %35, i32 %36, i8* %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %8, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %31, %30, %15
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @string_escape_mem(i8*, i64, i8*, i64, i32, i8*) #2

declare dso_local i8* @kmalloc(i64, i32) #2

declare dso_local i32 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
