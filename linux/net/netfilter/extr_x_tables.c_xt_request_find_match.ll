; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_request_find_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_x_tables.c_xt_request_find_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_match = type { i32 }

@XT_EXTENSION_MAXNAMELEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%st_%s\00", align 1
@xt_prefix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xt_match* @xt_request_find_match(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.xt_match*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xt_match*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* @XT_EXTENSION_MAXNAMELEN, align 8
  %11 = call i64 @strnlen(i8* %9, i64 %10)
  %12 = load i64, i64* @XT_EXTENSION_MAXNAMELEN, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.xt_match* @ERR_PTR(i32 %16)
  store %struct.xt_match* %17, %struct.xt_match** %4, align 8
  br label %39

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call %struct.xt_match* @xt_find_match(i64 %19, i8* %20, i64 %21)
  store %struct.xt_match* %22, %struct.xt_match** %8, align 8
  %23 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  %24 = call i64 @IS_ERR(%struct.xt_match* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %18
  %27 = load i32*, i32** @xt_prefix, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call %struct.xt_match* @xt_find_match(i64 %33, i8* %34, i64 %35)
  store %struct.xt_match* %36, %struct.xt_match** %8, align 8
  br label %37

37:                                               ; preds = %26, %18
  %38 = load %struct.xt_match*, %struct.xt_match** %8, align 8
  store %struct.xt_match* %38, %struct.xt_match** %4, align 8
  br label %39

39:                                               ; preds = %37, %14
  %40 = load %struct.xt_match*, %struct.xt_match** %4, align 8
  ret %struct.xt_match* %40
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local %struct.xt_match* @ERR_PTR(i32) #1

declare dso_local %struct.xt_match* @xt_find_match(i64, i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.xt_match*) #1

declare dso_local i32 @request_module(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
