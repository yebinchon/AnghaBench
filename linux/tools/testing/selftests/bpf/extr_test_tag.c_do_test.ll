; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, void (i32, i32)*)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test(i32* %0, i32 %1, i32 %2, void (i32, i32)* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i32)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [32 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store void (i32, i32)* %3, void (i32, i32)** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %46, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @BPF_MAXINSNS, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load void (i32, i32)*, void (i32, i32)** %8, align 8
  %22 = call i32 @bpf_try_load_prog(i32 %19, i32 %20, void (i32, i32)* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %25 = call i32 @tag_from_fdinfo(i32 %23, i32* %24, i32 32)
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %28 = call i32 @tag_from_alg(i32 %26, i32* %27, i32 128)
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %31 = call i64 @memcmp(i32* %29, i32* %30, i32 32)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 0
  %38 = call i32 @tag_exit_report(i32 %34, i32 %35, i32* %36, i32* %37, i32 32)
  br label %39

39:                                               ; preds = %33, %18
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @close(i32 %40)
  %42 = call i32 (...) @sched_yield()
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %14

49:                                               ; preds = %14
  ret void
}

declare dso_local i32 @bpf_try_load_prog(i32, i32, void (i32, i32)*) #1

declare dso_local i32 @tag_from_fdinfo(i32, i32*, i32) #1

declare dso_local i32 @tag_from_alg(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @tag_exit_report(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sched_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
