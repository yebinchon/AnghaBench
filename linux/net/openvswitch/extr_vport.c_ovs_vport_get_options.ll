; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_get_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@OVS_VPORT_ATTR_OPTIONS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_get_options(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.vport*, %struct.vport** %4, align 8
  %9 = getelementptr inbounds %struct.vport, %struct.vport* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.vport*, %struct.sk_buff*)**
  %13 = load i32 (%struct.vport*, %struct.sk_buff*)*, i32 (%struct.vport*, %struct.sk_buff*)** %12, align 8
  %14 = icmp ne i32 (%struct.vport*, %struct.sk_buff*)* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @OVS_VPORT_ATTR_OPTIONS, align 4
  %19 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %17, i32 %18)
  store %struct.nlattr* %19, %struct.nlattr** %6, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @EMSGSIZE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %16
  %26 = load %struct.vport*, %struct.vport** %4, align 8
  %27 = getelementptr inbounds %struct.vport, %struct.vport* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.vport*, %struct.sk_buff*)**
  %31 = load i32 (%struct.vport*, %struct.sk_buff*)*, i32 (%struct.vport*, %struct.sk_buff*)** %30, align 8
  %32 = load %struct.vport*, %struct.vport** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 %31(%struct.vport* %32, %struct.sk_buff* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %40 = call i32 @nla_nest_cancel(%struct.sk_buff* %38, %struct.nlattr* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %45 = call i32 @nla_nest_end(%struct.sk_buff* %43, %struct.nlattr* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %37, %22, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
