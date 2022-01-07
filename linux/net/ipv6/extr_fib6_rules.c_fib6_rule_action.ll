; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.flowi = type { i32 }
%struct.fib_lookup_arg = type { i64 }

@fib6_table_lookup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @fib6_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_rule*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_lookup_arg*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %9, align 8
  %10 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %11 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @fib6_table_lookup, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %17 = load %struct.flowi*, %struct.flowi** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %20 = call i32 @fib6_rule_action_alt(%struct.fib_rule* %16, %struct.flowi* %17, i32 %18, %struct.fib_lookup_arg* %19)
  store i32 %20, i32* %5, align 4
  br label %27

21:                                               ; preds = %4
  %22 = load %struct.fib_rule*, %struct.fib_rule** %6, align 8
  %23 = load %struct.flowi*, %struct.flowi** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %9, align 8
  %26 = call i32 @__fib6_rule_action(%struct.fib_rule* %22, %struct.flowi* %23, i32 %24, %struct.fib_lookup_arg* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @fib6_rule_action_alt(%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*) #1

declare dso_local i32 @__fib6_rule_action(%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
