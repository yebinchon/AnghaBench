; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strlcpy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nla_strlcpy(i8* %0, %struct.nlattr* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = call i64 @nla_len(%struct.nlattr* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i8* @nla_data(%struct.nlattr* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 1
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %24, %16, %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  br label %39

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i64 [ %36, %34 ], [ %38, %37 ]
  store i64 %40, i64* %9, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @memset(i8* %41, i32 0, i64 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @memcpy(i8* %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %39, %27
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
