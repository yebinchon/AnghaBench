; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_param_get_pool_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_param_get_pool_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"percpu\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pernode\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_get_pool_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_get_pool_mode(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %7 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %8 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %25 [
    i32 131, label %13
    i32 130, label %16
    i32 129, label %19
    i32 128, label %22
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @strlcpy(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 20)
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlcpy(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 20)
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlcpy(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 20)
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlcpy(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 20)
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %22, %19, %16, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
