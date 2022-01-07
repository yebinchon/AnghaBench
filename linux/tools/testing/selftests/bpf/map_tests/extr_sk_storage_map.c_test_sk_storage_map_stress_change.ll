; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_test_sk_storage_map_stress_change.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/map_tests/extr_sk_storage_map.c_test_sk_storage_map_stress_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGTERM = common dso_local global i32 0, align 4
@stop_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@runtime_s = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"test_sk_storage_map_stress_change\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sk_storage_map_stress_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sk_storage_map_stress_change() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SIGTERM, align 4
  %3 = load i32, i32* @stop_handler, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  %5 = load i32, i32* @SIGINT, align 4
  %6 = load i32, i32* @stop_handler, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i64, i64* @runtime_s, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i32, i32* @SIGALRM, align 4
  %12 = load i32, i32* @stop_handler, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  %14 = load i64, i64* @runtime_s, align 8
  %15 = call i32 @alarm(i64 %14)
  br label %16

16:                                               ; preds = %10, %0
  %17 = call i32 (...) @do_sk_storage_map_stress_change()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @SIGTERM, align 4
  %19 = load i32, i32* @SIG_DFL, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  %21 = load i32, i32* @SIGINT, align 4
  %22 = load i32, i32* @SIG_DFL, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = load i64, i64* @runtime_s, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* @SIGALRM, align 4
  %28 = load i32, i32* @SIG_DFL, align 4
  %29 = call i32 @signal(i32 %27, i32 %28)
  %30 = call i32 @alarm(i64 0)
  br label %31

31:                                               ; preds = %26, %16
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @CHECK(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i64) #1

declare dso_local i32 @do_sk_storage_map_stress_change(...) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
