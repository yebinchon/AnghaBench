; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpuidle.c_cpuidle_state_get_one_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/lib/extr_cpuidle.c_cpuidle_state_get_one_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LINE_LEN = common dso_local global i32 0, align 4
@MAX_IDLESTATE_VALUE_FILES = common dso_local global i32 0, align 4
@idlestate_value_files = common dso_local global i32* null, align 8
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32)* @cpuidle_state_get_one_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpuidle_state_get_one_value(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_LINE_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAX_IDLESTATE_VALUE_FILES, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** @idlestate_value_files, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = trunc i64 %15 to i32
  %31 = call i32 @cpuidle_state_read_file(i32 %23, i32 %24, i32 %29, i8* %17, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i64 0, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %46

35:                                               ; preds = %22
  %36 = call i64 @strtoull(i8* %17, i8** %12, i32 0)
  store i64 %36, i64* %8, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp eq i8* %37, %17
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @ERANGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  store i64 0, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %4, align 8
  store i32 1, i32* %13, align 4
  br label %46

46:                                               ; preds = %44, %43, %34, %21
  %47 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpuidle_state_read_file(i32, i32, i32, i8*, i32) #2

declare dso_local i64 @strtoull(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
