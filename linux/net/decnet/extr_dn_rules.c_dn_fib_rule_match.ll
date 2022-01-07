; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowidn }
%struct.flowidn = type { i32, i32 }
%struct.dn_fib_rule = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32)* @dn_fib_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_match(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_fib_rule*, align 8
  %9 = alloca %struct.flowidn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %13 = bitcast %struct.fib_rule* %12 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %13, %struct.dn_fib_rule** %8, align 8
  %14 = load %struct.flowi*, %struct.flowi** %6, align 8
  %15 = getelementptr inbounds %struct.flowi, %struct.flowi* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.flowidn* %16, %struct.flowidn** %9, align 8
  %17 = load %struct.flowidn*, %struct.flowidn** %9, align 8
  %18 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.flowidn*, %struct.flowidn** %9, align 8
  %21 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %25 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %23, %26
  %28 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %29 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %36 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  %39 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %40 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33, %3
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
