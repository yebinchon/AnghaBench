; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_expr.c_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_expr.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_ctx = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"parse test failed\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unexpected value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_ctx*, i8*, double)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(%struct.parse_ctx* %0, i8* %1, double %2) #0 {
  %4 = alloca %struct.parse_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.parse_ctx* %0, %struct.parse_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store double %2, double* %6, align 8
  %8 = load %struct.parse_ctx*, %struct.parse_ctx** %4, align 8
  %9 = call i64 @expr__parse(double* %7, %struct.parse_ctx* %8, i8** %5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %13

13:                                               ; preds = %11, %3
  %14 = load double, double* %7, align 8
  %15 = load double, double* %6, align 8
  %16 = fcmp oeq double %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @TEST_ASSERT_VAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  ret i32 0
}

declare dso_local i64 @expr__parse(double*, %struct.parse_ctx*, i8**) #1

declare dso_local i32 @TEST_ASSERT_VAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
