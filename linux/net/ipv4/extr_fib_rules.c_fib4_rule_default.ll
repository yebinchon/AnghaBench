; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i64, i64 }

@FR_ACT_TO_TBL = common dso_local global i64 0, align 8
@RT_TABLE_LOCAL = common dso_local global i64 0, align 8
@RT_TABLE_MAIN = common dso_local global i64 0, align 8
@RT_TABLE_DEFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib4_rule_default(%struct.fib_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %3, align 8
  %4 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %5 = call i32 @fib4_rule_matchall(%struct.fib_rule* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %9 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @FR_ACT_TO_TBL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %15 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %7, %1
  store i32 0, i32* %2, align 4
  br label %39

19:                                               ; preds = %13
  %20 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %21 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RT_TABLE_LOCAL, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RT_TABLE_MAIN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %33 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RT_TABLE_DEFAULT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %39

38:                                               ; preds = %31, %25, %19
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %37, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @fib4_rule_matchall(%struct.fib_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
