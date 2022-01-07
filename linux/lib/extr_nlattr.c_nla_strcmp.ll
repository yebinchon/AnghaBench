; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strcmp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_strcmp(%struct.nlattr* %0, i8* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %12 = call i8* @nla_data(%struct.nlattr* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %17, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %37 = call i8* @nla_data(%struct.nlattr* %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @memcmp(i8* %37, i8* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
