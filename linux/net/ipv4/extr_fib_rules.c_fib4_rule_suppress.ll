; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_suppress.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_rules.c_fib4_rule_suppress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32 }
%struct.fib_lookup_arg = type { i32, i64 }
%struct.fib_result = type { i64, i64 }
%struct.net_device = type { i64 }
%struct.fib_nh_common = type { %struct.net_device* }

@FIB_LOOKUP_NOREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_lookup_arg*)* @fib4_rule_suppress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_suppress(%struct.fib_rule* %0, %struct.fib_lookup_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib_rule*, align 8
  %5 = alloca %struct.fib_lookup_arg*, align 8
  %6 = alloca %struct.fib_result*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.fib_nh_common*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %4, align 8
  store %struct.fib_lookup_arg* %1, %struct.fib_lookup_arg** %5, align 8
  %9 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %5, align 8
  %10 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.fib_result*
  store %struct.fib_result* %12, %struct.fib_result** %6, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %13 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %14 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %19 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.fib_nh_common* @fib_info_nhc(i64 %20, i32 0)
  store %struct.fib_nh_common* %21, %struct.fib_nh_common** %8, align 8
  %22 = load %struct.fib_nh_common*, %struct.fib_nh_common** %8, align 8
  %23 = getelementptr inbounds %struct.fib_nh_common, %struct.fib_nh_common* %22, i32 0, i32 0
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %27 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %30 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %53

34:                                               ; preds = %25
  %35 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %36 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.net_device*, %struct.net_device** %7, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fib_rule*, %struct.fib_rule** %4, align 8
  %47 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %53

52:                                               ; preds = %42, %39, %34
  store i32 0, i32* %3, align 4
  br label %66

53:                                               ; preds = %51, %33
  %54 = load %struct.fib_lookup_arg*, %struct.fib_lookup_arg** %5, align 8
  %55 = getelementptr inbounds %struct.fib_lookup_arg, %struct.fib_lookup_arg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FIB_LOOKUP_NOREF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load %struct.fib_result*, %struct.fib_result** %6, align 8
  %62 = getelementptr inbounds %struct.fib_result, %struct.fib_result* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @fib_info_put(i64 %63)
  br label %65

65:                                               ; preds = %60, %53
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.fib_nh_common* @fib_info_nhc(i64, i32) #1

declare dso_local i32 @fib_info_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
