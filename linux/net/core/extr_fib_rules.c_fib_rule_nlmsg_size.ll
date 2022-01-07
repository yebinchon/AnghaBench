; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_nlmsg_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_rule_nlmsg_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rules_ops = type { i64 (%struct.fib_rule*)* }
%struct.fib_rule = type opaque
%struct.fib_rule.0 = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fib_rules_ops*, %struct.fib_rule.0*)* @fib_rule_nlmsg_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fib_rule_nlmsg_size(%struct.fib_rules_ops* %0, %struct.fib_rule.0* %1) #0 {
  %3 = alloca %struct.fib_rules_ops*, align 8
  %4 = alloca %struct.fib_rule.0*, align 8
  %5 = alloca i64, align 8
  store %struct.fib_rules_ops* %0, %struct.fib_rules_ops** %3, align 8
  store %struct.fib_rule.0* %1, %struct.fib_rule.0** %4, align 8
  %6 = call i64 @NLMSG_ALIGN(i32 4)
  %7 = load i32, i32* @IFNAMSIZ, align 4
  %8 = call i64 @nla_total_size(i32 %7)
  %9 = add i64 %6, %8
  %10 = load i32, i32* @IFNAMSIZ, align 4
  %11 = call i64 @nla_total_size(i32 %10)
  %12 = add i64 %9, %11
  %13 = call i64 @nla_total_size(i32 4)
  %14 = add i64 %12, %13
  %15 = call i64 @nla_total_size(i32 4)
  %16 = add i64 %14, %15
  %17 = call i64 @nla_total_size(i32 4)
  %18 = add i64 %16, %17
  %19 = call i64 @nla_total_size(i32 4)
  %20 = add i64 %18, %19
  %21 = call i64 @nla_total_size(i32 4)
  %22 = add i64 %20, %21
  %23 = call i64 @nla_total_size(i32 4)
  %24 = add i64 %22, %23
  %25 = call i64 @nla_total_size_64bit(i32 8)
  %26 = add i64 %24, %25
  %27 = call i64 @nla_total_size(i32 4)
  %28 = add i64 %26, %27
  %29 = call i64 @nla_total_size(i32 1)
  %30 = add i64 %28, %29
  %31 = call i64 @nla_total_size(i32 1)
  %32 = add i64 %30, %31
  %33 = call i64 @nla_total_size(i32 4)
  %34 = add i64 %32, %33
  %35 = call i64 @nla_total_size(i32 4)
  %36 = add i64 %34, %35
  store i64 %36, i64* %5, align 8
  %37 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %3, align 8
  %38 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %37, i32 0, i32 0
  %39 = load i64 (%struct.fib_rule*)*, i64 (%struct.fib_rule*)** %38, align 8
  %40 = icmp ne i64 (%struct.fib_rule*)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %3, align 8
  %43 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %42, i32 0, i32 0
  %44 = load i64 (%struct.fib_rule*)*, i64 (%struct.fib_rule*)** %43, align 8
  %45 = load %struct.fib_rule.0*, %struct.fib_rule.0** %4, align 8
  %46 = bitcast %struct.fib_rule.0* %45 to %struct.fib_rule*
  %47 = call i64 %44(%struct.fib_rule* %46)
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %41, %2
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i64 @NLMSG_ALIGN(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i64 @nla_total_size_64bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
