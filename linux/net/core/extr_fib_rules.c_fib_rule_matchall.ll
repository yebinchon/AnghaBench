; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_matchall.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_matchall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.fib_rule = type { i32, i32, i32, i32, %struct.TYPE_3__, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@fib_kuid_range_unset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_rule_matchall(%struct.fib_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %3, align 8
  %4 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %5 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %10 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %15 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %20 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %25 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18, %13, %8, %1
  store i32 0, i32* %2, align 4
  br label %70

29:                                               ; preds = %23
  %30 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %31 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %36 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  store i32 0, i32* %2, align 4
  br label %70

40:                                               ; preds = %34
  %41 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %42 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fib_kuid_range_unset, i32 0, i32 1), align 4
  %46 = call i32 @uid_eq(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %50 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fib_kuid_range_unset, i32 0, i32 0), align 4
  %54 = call i32 @uid_eq(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48, %40
  store i32 0, i32* %2, align 4
  br label %70

57:                                               ; preds = %48
  %58 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %59 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %58, i32 0, i32 3
  %60 = call i64 @fib_rule_port_range_set(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %70

63:                                               ; preds = %57
  %64 = load %struct.fib_rule*, %struct.fib_rule** %3, align 8
  %65 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %64, i32 0, i32 2
  %66 = call i64 @fib_rule_port_range_set(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %70

69:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %68, %62, %56, %39, %28
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i64 @fib_rule_port_range_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
