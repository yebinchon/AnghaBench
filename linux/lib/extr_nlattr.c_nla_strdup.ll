; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strdup.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nla_strdup(%struct.nlattr* %0, i32 %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %9 = call i64 @nla_len(%struct.nlattr* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %11 = call i8* @nla_data(%struct.nlattr* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = sub i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %22, %14, %2
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @kmalloc(i64 %27, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %32, %25
  %41 = load i8*, i8** %7, align 8
  ret i8* %41
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
