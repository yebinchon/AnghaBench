; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_..kselftest.h_ksft_print_cnts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_..kselftest.h_ksft_print_cnts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@ksft_plan = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"# Planned tests != run tests (%u != %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"# Pass %d Fail %d Xfail %d Xpass %d Skip %d Error %d\0A\00", align 1
@ksft_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ksft_print_cnts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksft_print_cnts() #0 {
  %1 = load i64, i64* @ksft_plan, align 8
  %2 = call i32 (...) @ksft_test_num()
  %3 = sext i32 %2 to i64
  %4 = icmp ne i64 %1, %3
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load i64, i64* @ksft_plan, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 (...) @ksft_test_num()
  %9 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %5, %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 1), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 2), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 3), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 4), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ksft_cnt, i32 0, i32 5), align 4
  %17 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @ksft_test_num(...) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
