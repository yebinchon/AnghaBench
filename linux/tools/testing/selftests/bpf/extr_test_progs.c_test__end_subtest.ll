; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_test__end_subtest.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_test__end_subtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, %struct.prog_test_def* }
%struct.prog_test_def = type { i32, i32, i32, i32, i8* }

@env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"#%d/%d %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test__end_subtest() #0 {
  %1 = alloca %struct.prog_test_def*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.prog_test_def*, %struct.prog_test_def** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 3), align 8
  store %struct.prog_test_def* %3, %struct.prog_test_def** %1, align 8
  %4 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %5 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %8 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 2), align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 2), align 8
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 1), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 1), align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i32 (...) @skip_account()
  %21 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @dump_test_log(%struct.prog_test_def* %21, i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %25 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %26 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %29 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.prog_test_def*, %struct.prog_test_def** %1, align 8
  %32 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i8* %33, i8* %37)
  ret void
}

declare dso_local i32 @skip_account(...) #1

declare dso_local i32 @dump_test_log(%struct.prog_test_def*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
