; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_utils.c_inet_pton_with_scope.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_utils.c_inet_pton_with_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected address family %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_pton_with_scope(%struct.net* %0, i32 %1, i8* %2, i8* %3, %struct.sockaddr_storage* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr_storage*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.sockaddr_storage* %4, %struct.sockaddr_storage** %11, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @kstrtou16(i8* %19, i32 0, i64* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %59

25:                                               ; preds = %18
  br label %27

26:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %54 [
    i32 130, label %29
    i32 129, label %34
    i32 128, label %40
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %33 = call i32 @inet4_pton(i8* %30, i64 %31, %struct.sockaddr_storage* %32)
  store i32 %33, i32* %13, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.net*, %struct.net** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %39 = call i32 @inet6_pton(%struct.net* %35, i8* %36, i64 %37, %struct.sockaddr_storage* %38)
  store i32 %39, i32* %13, align 4
  br label %57

40:                                               ; preds = %27
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %44 = call i32 @inet4_pton(i8* %41, i64 %42, %struct.sockaddr_storage* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.net*, %struct.net** %7, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %11, align 8
  %52 = call i32 @inet6_pton(%struct.net* %48, i8* %49, i64 %50, %struct.sockaddr_storage* %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %47, %40
  br label %57

54:                                               ; preds = %27
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %53, %34, %29
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %22
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i64 @kstrtou16(i8*, i32, i64*) #1

declare dso_local i32 @inet4_pton(i8*, i64, %struct.sockaddr_storage*) #1

declare dso_local i32 @inet6_pton(%struct.net*, i8*, i64, %struct.sockaddr_storage*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
