; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_secpath_reject.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_secpath_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flowi = type { i32 }
%struct.sec_path = type { i32, %struct.xfrm_state** }
%struct.xfrm_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.flowi*)* @xfrm_secpath_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_secpath_reject(i32 %0, %struct.sk_buff* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.sec_path*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.sec_path* @skb_sec_path(%struct.sk_buff* %10)
  store %struct.sec_path* %11, %struct.sec_path** %8, align 8
  %12 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %13 = icmp ne %struct.sec_path* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %20 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %14, %3
  store i32 0, i32* %4, align 4
  br label %49

24:                                               ; preds = %17
  %25 = load %struct.sec_path*, %struct.sec_path** %8, align 8
  %26 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %25, i32 0, i32 1
  %27 = load %struct.xfrm_state**, %struct.xfrm_state*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %27, i64 %29
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %30, align 8
  store %struct.xfrm_state* %31, %struct.xfrm_state** %9, align 8
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)** %35, align 8
  %37 = icmp ne i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %41 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)*, i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)** %43, align 8
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.flowi*, %struct.flowi** %7, align 8
  %48 = call i32 %44(%struct.xfrm_state* %45, %struct.sk_buff* %46, %struct.flowi* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %39, %38, %23
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.sec_path* @skb_sec_path(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
