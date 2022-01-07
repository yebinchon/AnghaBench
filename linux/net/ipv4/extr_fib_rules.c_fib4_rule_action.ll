; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fib_lookup_arg = type { i32, i64 }
%struct.fib_table = type { i32 }
%struct.fib_result = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @fib4_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_lookup_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib_table*, align 8
  %12 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %9, align 8
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %16 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %26 [
    i32 129, label %18
    i32 128, label %19
    i32 130, label %22
    i32 131, label %25
  ]

18:                                               ; preds = %4
  br label %29

19:                                               ; preds = %4
  %20 = load i32, i32* @ENETUNREACH, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %57

22:                                               ; preds = %4
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %4, %25
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %57

29:                                               ; preds = %18
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %32 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %33 = call i32 @fib_rule_get_table(%struct.fib_rule* %31, %struct.fib_lookup_arg* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %35 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.fib_table* @fib_get_table(i32 %36, i32 %37)
  store %struct.fib_table* %38, %struct.fib_table** %11, align 8
  %39 = load %struct.fib_table*, %struct.fib_table** %11, align 8
  %40 = icmp ne %struct.fib_table* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load %struct.fib_table*, %struct.fib_table** %11, align 8
  %43 = load %struct.flowi*, %struct.flowi** %7, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %47 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.fib_result*
  %50 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %51 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @fib_table_lookup(%struct.fib_table* %42, i32* %45, %struct.fib_result* %49, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %41, %29
  %55 = call i32 (...) @rcu_read_unlock()
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %26, %22, %19
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @fib_rule_get_table(%struct.fib_rule*, %struct.fib_lookup_arg*) #1

declare dso_local %struct.fib_table* @fib_get_table(i32, i32) #1

declare dso_local i32 @fib_table_lookup(%struct.fib_table*, i32*, %struct.fib_result*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
