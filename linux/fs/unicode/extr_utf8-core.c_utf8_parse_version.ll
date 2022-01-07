; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_parse_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_parse_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_token = type { i32, i8* }

@utf8_parse_version.token = internal constant [2 x %struct.match_token] [%struct.match_token { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, %struct.match_token zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @utf8_parse_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_parse_version(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca [12 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strncpy(i8* %12, i8* %13, i32 12)
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %11, i64 0, i64 0
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %17 = call i32 @match_token(i8* %15, %struct.match_token* getelementptr inbounds ([2 x %struct.match_token], [2 x %struct.match_token]* @utf8_parse_version.token, i64 0, i64 0), i32* %16)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @match_int(i32* %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %29 = load i32*, i32** %8, align 8
  %30 = call i64 @match_int(i32* %28, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %34 = load i32*, i32** %9, align 8
  %35 = call i64 @match_int(i32* %33, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27, %22
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %37, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @match_token(i8*, %struct.match_token*, i32*) #1

declare dso_local i64 @match_int(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
