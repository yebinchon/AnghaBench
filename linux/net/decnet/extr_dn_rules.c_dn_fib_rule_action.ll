; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dn_fib_rule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32, i32 }
%struct.flowi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowidn }
%struct.flowidn = type { i32 }
%struct.fib_lookup_arg = type { i64 }
%struct.dn_fib_table = type { i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res*)* }
%struct.dn_fib_res = type opaque
%struct.dn_fib_res.0 = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32, %struct.fib_lookup_arg*)* @dn_fib_rule_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_action(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2, %struct.fib_lookup_arg* %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_lookup_arg*, align 8
  %9 = alloca %struct.flowidn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dn_fib_table*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fib_lookup_arg* %3, %struct.fib_lookup_arg** %8, align 8
  %12 = load %struct.flowi*, %struct.flowi** %6, align 8
  %13 = getelementptr inbounds %struct.flowi, %struct.flowi* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.flowidn* %14, %struct.flowidn** %9, align 8
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %18 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %28 [
    i32 129, label %20
    i32 128, label %21
    i32 130, label %24
    i32 131, label %27
  ]

20:                                               ; preds = %4
  br label %31

21:                                               ; preds = %4
  %22 = load i32, i32* @ENETUNREACH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %10, align 4
  br label %57

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %4, %27
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %57

31:                                               ; preds = %20
  %32 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %33 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.dn_fib_table* @dn_fib_get_table(i32 %34, i32 0)
  store %struct.dn_fib_table* %35, %struct.dn_fib_table** %11, align 8
  %36 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %37 = icmp eq %struct.dn_fib_table* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %41 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %40, i32 0, i32 0
  %42 = load i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res*)*, i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res*)** %41, align 8
  %43 = load %struct.dn_fib_table*, %struct.dn_fib_table** %11, align 8
  %44 = load %struct.flowidn*, %struct.flowidn** %9, align 8
  %45 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %8, align 8
  %46 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.dn_fib_res.0*
  %49 = bitcast %struct.dn_fib_res.0* %48 to %struct.dn_fib_res*
  %50 = call i32 %42(%struct.dn_fib_table* %43, %struct.flowidn* %44, %struct.dn_fib_res* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %39
  br label %57

57:                                               ; preds = %56, %38, %28, %24, %21
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local %struct.dn_fib_table* @dn_fib_get_table(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
