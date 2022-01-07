; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_copy_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_copy_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sw_flow_actions = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.sw_flow_actions**, i32)* @copy_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_action(%struct.nlattr* %0, %struct.sw_flow_actions** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sw_flow_actions**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.sw_flow_actions** %1, %struct.sw_flow_actions*** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NLA_ALIGN(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sw_flow_actions**, %struct.sw_flow_actions*** %6, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %16 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.nlattr* @reserve_sfa_size(%struct.sw_flow_actions** %14, i32 %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %9, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %21 = call i64 @IS_ERR(%struct.nlattr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.nlattr* %24)
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @memcpy(%struct.nlattr* %27, %struct.nlattr* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local %struct.nlattr* @reserve_sfa_size(%struct.sw_flow_actions**, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nlattr*) #1

declare dso_local i32 @memcpy(%struct.nlattr*, %struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
