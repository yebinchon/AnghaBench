; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_suppress.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_fib6_rules.c_fib6_rule_suppress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32 }
%struct.fib_lookup_arg = type { i32, %struct.fib6_result* }
%struct.fib6_result = type { %struct.rt6_info* }
%struct.rt6_info = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i64 }

@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_lookup_arg*)* @fib6_rule_suppress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_suppress(%struct.fib_rule* %0, %struct.fib_lookup_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib_rule*, align 8
  %5 = alloca %struct.fib_lookup_arg*, align 8
  %6 = alloca %struct.fib6_result*, align 8
  %7 = alloca %struct.rt6_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %4, align 8
  store %struct.fib_lookup_arg* %1, %struct.fib_lookup_arg** %5, align 8
  %9 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %5, align 8
  %10 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %9, i32 0, i32 1
  %11 = load %struct.fib6_result*, %struct.fib6_result** %10, align 8
  store %struct.fib6_result* %11, %struct.fib6_result** %6, align 8
  %12 = load %struct.fib6_result*, %struct.fib6_result** %6, align 8
  %13 = getelementptr inbounds %struct.fib6_result, %struct.fib6_result* %12, i32 0, i32 0
  %14 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  store %struct.rt6_info* %14, %struct.rt6_info** %7, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %15 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %16 = icmp ne %struct.rt6_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %20 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %25 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %8, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %31 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %35 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %58

39:                                               ; preds = %29
  %40 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %41 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %8, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %52 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %58

57:                                               ; preds = %47, %44, %39
  store i32 0, i32* %3, align 4
  br label %69

58:                                               ; preds = %56, %38
  %59 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %5, align 8
  %60 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load %struct.rt6_info*, %struct.rt6_info** %7, align 8
  %67 = call i32 @ip6_rt_put(%struct.rt6_info* %66)
  br label %68

68:                                               ; preds = %65, %58
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %57, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
