; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_nla_get_port_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_nla_get_port_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.fib_rule_port_range = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.fib_rule_port_range*)* @nla_get_port_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_get_port_range(%struct.nlattr* %0, %struct.fib_rule_port_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.fib_rule_port_range*, align 8
  %6 = alloca %struct.fib_rule_port_range*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.fib_rule_port_range* %1, %struct.fib_rule_port_range** %5, align 8
  %7 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %8 = call %struct.fib_rule_port_range* @nla_data(%struct.nlattr* %7)
  store %struct.fib_rule_port_range* %8, %struct.fib_rule_port_range** %6, align 8
  %9 = load %struct.fib_rule_port_range*, %struct.fib_rule_port_range** %6, align 8
  %10 = call i32 @fib_rule_port_range_valid(%struct.fib_rule_port_range* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.fib_rule_port_range*, %struct.fib_rule_port_range** %6, align 8
  %17 = getelementptr inbounds %struct.fib_rule_port_range, %struct.fib_rule_port_range* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fib_rule_port_range*, %struct.fib_rule_port_range** %5, align 8
  %20 = getelementptr inbounds %struct.fib_rule_port_range, %struct.fib_rule_port_range* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.fib_rule_port_range*, %struct.fib_rule_port_range** %6, align 8
  %22 = getelementptr inbounds %struct.fib_rule_port_range, %struct.fib_rule_port_range* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fib_rule_port_range*, %struct.fib_rule_port_range** %5, align 8
  %25 = getelementptr inbounds %struct.fib_rule_port_range, %struct.fib_rule_port_range* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.fib_rule_port_range* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @fib_rule_port_range_valid(%struct.fib_rule_port_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
