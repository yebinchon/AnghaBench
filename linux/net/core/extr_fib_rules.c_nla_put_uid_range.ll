; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_nla_put_uid_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_nla_put_uid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.fib_kuid_range = type { i32, i32 }
%struct.fib_rule_uid_range = type { i32, i32 }

@FRA_UID_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.fib_kuid_range*)* @nla_put_uid_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nla_put_uid_range(%struct.sk_buff* %0, %struct.fib_kuid_range* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.fib_kuid_range*, align 8
  %5 = alloca %struct.fib_rule_uid_range, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.fib_kuid_range* %1, %struct.fib_kuid_range** %4, align 8
  %6 = getelementptr inbounds %struct.fib_rule_uid_range, %struct.fib_rule_uid_range* %5, i32 0, i32 0
  %7 = call i32 (...) @current_user_ns()
  %8 = load %struct.fib_kuid_range*, %struct.fib_kuid_range** %4, align 8
  %9 = getelementptr inbounds %struct.fib_kuid_range, %struct.fib_kuid_range* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @from_kuid_munged(i32 %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds %struct.fib_rule_uid_range, %struct.fib_rule_uid_range* %5, i32 0, i32 1
  %13 = call i32 (...) @current_user_ns()
  %14 = load %struct.fib_kuid_range*, %struct.fib_kuid_range** %4, align 8
  %15 = getelementptr inbounds %struct.fib_kuid_range, %struct.fib_kuid_range* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @from_kuid_munged(i32 %13, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load i32, i32* @FRA_UID_RANGE, align 4
  %20 = call i32 @nla_put(%struct.sk_buff* %18, i32 %19, i32 8, %struct.fib_rule_uid_range* %5)
  ret i32 %20
}

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, %struct.fib_rule_uid_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
