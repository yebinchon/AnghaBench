; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test_arm64.c_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@var = common dso_local global i32* null, align 8
@PTRACE_TRACEME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ptrace(PTRACE_TRACEME) failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"raise(SIGSTOP) failed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Wrong address write for the given size: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** @var, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 32, %7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @PTRACE_TRACEME, align 4
  %12 = call i64 @ptrace(i32 %11, i32 0, i32* null, i32* null)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @_exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* @SIGSTOP, align 4
  %21 = call i64 @raise(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @_exit(i32 1) #3
  unreachable

28:                                               ; preds = %19
  %29 = load i32*, i32** %5, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = urem i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @_exit(i32 1) #3
  unreachable

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  switch i32 %41, label %56 [
    i32 1, label %42
    i32 2, label %44
    i32 4, label %46
    i32 8, label %48
    i32 16, label %50
    i32 32, label %53
  ]

42:                                               ; preds = %40
  %43 = load i32*, i32** %5, align 8
  store volatile i32 47, i32* %43, align 4
  br label %56

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  store i32 47, i32* %45, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  store i32 47, i32* %47, align 4
  br label %56

48:                                               ; preds = %40
  %49 = load i32*, i32** %5, align 8
  store i32 47, i32* %49, align 4
  br label %56

50:                                               ; preds = %40
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  call void asm sideeffect "stp x29, x30, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %52) #4, !srcloc !2
  br label %56

53:                                               ; preds = %40
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  call void asm sideeffect "stp q29, q30, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %55) #4, !srcloc !3
  br label %56

56:                                               ; preds = %40, %53, %50, %48, %46, %44, %42
  %57 = call i32 @_exit(i32 0) #3
  unreachable
}

declare dso_local i64 @ptrace(i32, i32, i32*, i32*) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i64 @raise(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1171}
!3 = !{i32 1248}
