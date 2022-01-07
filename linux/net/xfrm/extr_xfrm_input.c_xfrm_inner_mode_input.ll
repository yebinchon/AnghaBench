; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_inner_mode_input.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_inner_mode_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.xfrm_mode = type { i32, i32 }
%struct.sk_buff = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_mode*, %struct.sk_buff*)* @xfrm_inner_mode_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_inner_mode_input(%struct.xfrm_state* %0, %struct.xfrm_mode* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_mode*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_mode* %1, %struct.xfrm_mode** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %9 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %38 [
    i32 131, label %11
    i32 128, label %11
    i32 129, label %15
    i32 130, label %36
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call i32 @xfrm_prepare_input(%struct.xfrm_state* %12, %struct.sk_buff* %13)
  store i32 %14, i32* %4, align 4
  br label %43

15:                                               ; preds = %3
  %16 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %17 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call i32 @xfrm4_transport_input(%struct.xfrm_state* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %4, align 4
  br label %43

25:                                               ; preds = %15
  %26 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %27 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = call i32 @xfrm6_transport_input(%struct.xfrm_state* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %3
  %37 = call i32 @WARN_ON_ONCE(i32 1)
  br label %40

38:                                               ; preds = %3
  %39 = call i32 @WARN_ON_ONCE(i32 1)
  br label %40

40:                                               ; preds = %38, %36, %35
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %31, %21, %11
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @xfrm_prepare_input(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm4_transport_input(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_transport_input(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
