; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_nla_memdup_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_nla_memdup_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_cookie = type { i32, i32 }
%struct.nlattr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TCA_ACT_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_cookie* (%struct.nlattr**)* @nla_memdup_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_cookie* @nla_memdup_cookie(%struct.nlattr** %0) #0 {
  %2 = alloca %struct.tc_cookie*, align 8
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.tc_cookie*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.tc_cookie* @kzalloc(i32 8, i32 %5)
  store %struct.tc_cookie* %6, %struct.tc_cookie** %4, align 8
  %7 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  %8 = icmp ne %struct.tc_cookie* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.tc_cookie* null, %struct.tc_cookie** %2, align 8
  br label %35

10:                                               ; preds = %1
  %11 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %12 = load i64, i64* @TCA_ACT_COOKIE, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @nla_memdup(%struct.nlattr* %14, i32 %15)
  %17 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  %18 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  %20 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  %25 = call i32 @kfree(%struct.tc_cookie* %24)
  store %struct.tc_cookie* null, %struct.tc_cookie** %2, align 8
  br label %35

26:                                               ; preds = %10
  %27 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %28 = load i64, i64* @TCA_ACT_COOKIE, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_len(%struct.nlattr* %30)
  %32 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  %33 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tc_cookie*, %struct.tc_cookie** %4, align 8
  store %struct.tc_cookie* %34, %struct.tc_cookie** %2, align 8
  br label %35

35:                                               ; preds = %26, %23, %9
  %36 = load %struct.tc_cookie*, %struct.tc_cookie** %2, align 8
  ret %struct.tc_cookie* %36
}

declare dso_local %struct.tc_cookie* @kzalloc(i32, i32) #1

declare dso_local i32 @nla_memdup(%struct.nlattr*, i32) #1

declare dso_local i32 @kfree(%struct.tc_cookie*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
