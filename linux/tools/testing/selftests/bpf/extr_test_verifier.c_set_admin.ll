; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_set_admin.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_set_admin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cap_get_proc\00", align 1
@CAP_EFFECTIVE = common dso_local global i32 0, align 4
@CAP_SET = common dso_local global i32 0, align 4
@CAP_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"cap_set_flag\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cap_set_proc\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cap_free\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_admin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_admin(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  store i32 %7, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = call i32 (...) @cap_get_proc()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CAP_EFFECTIVE, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @CAP_SET, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @CAP_CLEAR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = call i64 @cap_set_flag(i32 %14, i32 %15, i32 1, i32* %5, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @cap_set_proc(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %32, %26
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @cap_free(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @cap_get_proc(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @cap_set_flag(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @cap_set_proc(i32) #1

declare dso_local i64 @cap_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
