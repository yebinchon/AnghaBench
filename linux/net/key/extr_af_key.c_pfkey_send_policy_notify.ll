; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_send_policy_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_send_policy_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i64 }
%struct.km_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"pfkey: Unknown policy event %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, i32, %struct.km_event*)* @pfkey_send_policy_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_send_policy_notify(%struct.xfrm_policy* %0, i32 %1, %struct.km_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.km_event*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.km_event* %2, %struct.km_event** %7, align 8
  %8 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %9 = icmp ne %struct.xfrm_policy* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %12 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XFRM_POLICY_TYPE_MAIN, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %47

17:                                               ; preds = %10, %3
  %18 = load %struct.km_event*, %struct.km_event** %7, align 8
  %19 = getelementptr inbounds %struct.km_event, %struct.km_event* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %41 [
    i32 129, label %21
    i32 132, label %25
    i32 130, label %25
    i32 128, label %25
    i32 131, label %30
  ]

21:                                               ; preds = %17
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %23 = load %struct.km_event*, %struct.km_event** %7, align 8
  %24 = call i32 @key_notify_policy_expire(%struct.xfrm_policy* %22, %struct.km_event* %23)
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %17, %17, %17
  %26 = load %struct.xfrm_policy*, %struct.xfrm_policy** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.km_event*, %struct.km_event** %7, align 8
  %29 = call i32 @key_notify_policy(%struct.xfrm_policy* %26, i32 %27, %struct.km_event* %28)
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %17
  %31 = load %struct.km_event*, %struct.km_event** %7, align 8
  %32 = getelementptr inbounds %struct.km_event, %struct.km_event* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @XFRM_POLICY_TYPE_MAIN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %46

38:                                               ; preds = %30
  %39 = load %struct.km_event*, %struct.km_event** %7, align 8
  %40 = call i32 @key_notify_policy_flush(%struct.km_event* %39)
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %17
  %42 = load %struct.km_event*, %struct.km_event** %7, align 8
  %43 = getelementptr inbounds %struct.km_event, %struct.km_event* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %41, %37
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %38, %25, %21, %16
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @key_notify_policy_expire(%struct.xfrm_policy*, %struct.km_event*) #1

declare dso_local i32 @key_notify_policy(%struct.xfrm_policy*, i32, %struct.km_event*) #1

declare dso_local i32 @key_notify_policy_flush(%struct.km_event*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
