; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_verify_sockopt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_inherit.c_verify_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOL_CUSTOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: failed to call getsockopt\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s %d: got=0x%x ? expected=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: unexpected getsockopt value %d != %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8)* @verify_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_sockopt(i32 %0, i32 %1, i8* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8 %3, i8* %9, align 1
  store i32 1, i32* %10, align 4
  store i8 0, i8* %11, align 1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SOL_CUSTOM, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @getsockopt(i32 %13, i32 %14, i32 %15, i8* %11, i32* %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %5, align 4
  br label %41

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8, i8* %11, align 1
  %26 = load i8, i8* %9, align 1
  %27 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %23, i32 %24, i8 signext %25, i8 signext %26)
  %28 = load i8, i8* %11, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %11, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %9, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 %36, i32 %38)
  store i32 1, i32* %5, align 4
  br label %41

40:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %33, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
