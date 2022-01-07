; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_alloc_defdata.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_alloc_defdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_defact = type { i32 }
%struct.nlattr = type { i32 }

@SIMP_MAX_DATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_defact*, %struct.nlattr*)* @alloc_defdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_defdata(%struct.tcf_defact* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_defact*, align 8
  %5 = alloca %struct.nlattr*, align 8
  store %struct.tcf_defact* %0, %struct.tcf_defact** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %6 = load i32, i32* @SIMP_MAX_DATA, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32 @kzalloc(i32 %6, i32 %7)
  %9 = load %struct.tcf_defact*, %struct.tcf_defact** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.tcf_defact*, %struct.tcf_defact** %4, align 8
  %12 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.tcf_defact*, %struct.tcf_defact** %4, align 8
  %24 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %27 = load i32, i32* @SIMP_MAX_DATA, align 4
  %28 = call i32 @nla_strlcpy(i32 %25, %struct.nlattr* %26, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %19
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
