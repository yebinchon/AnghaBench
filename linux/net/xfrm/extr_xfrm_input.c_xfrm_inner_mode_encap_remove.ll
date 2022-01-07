; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_inner_mode_encap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_input.c_xfrm_inner_mode_encap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.xfrm_mode = type { i32, i32 }
%struct.sk_buff = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.xfrm_mode*, %struct.sk_buff*)* @xfrm_inner_mode_encap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_inner_mode_encap_remove(%struct.xfrm_state* %0, %struct.xfrm_mode* %1, %struct.sk_buff* %2) #0 {
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
  switch i32 %10, label %53 [
    i32 129, label %11
    i32 128, label %32
  ]

11:                                               ; preds = %3
  %12 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %13 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AF_INET, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @xfrm4_remove_beet_encap(%struct.xfrm_state* %18, %struct.sk_buff* %19)
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %11
  %22 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %23 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AF_INET6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @xfrm6_remove_beet_encap(%struct.xfrm_state* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %21
  br label %53

32:                                               ; preds = %3
  %33 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %34 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AF_INET, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @xfrm4_remove_tunnel_encap(%struct.xfrm_state* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %32
  %43 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %44 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AF_INET6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @xfrm6_remove_tunnel_encap(%struct.xfrm_state* %49, %struct.sk_buff* %50)
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %3, %52, %31
  %54 = call i32 @WARN_ON_ONCE(i32 1)
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %48, %38, %27, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @xfrm4_remove_beet_encap(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_remove_beet_encap(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm4_remove_tunnel_encap(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @xfrm6_remove_tunnel_encap(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
