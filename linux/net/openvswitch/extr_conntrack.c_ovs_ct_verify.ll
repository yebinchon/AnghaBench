; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_verify.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ovs_net = type { i32 }

@OVS_KEY_ATTR_CT_STATE = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_ZONES = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_ZONE = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_MARK = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_MARK = common dso_local global i32 0, align 4
@CONFIG_NF_CONNTRACK_LABELS = common dso_local global i32 0, align 4
@OVS_KEY_ATTR_CT_LABELS = common dso_local global i32 0, align 4
@ovs_net_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_ct_verify(%struct.net* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ovs_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OVS_KEY_ATTR_CT_STATE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* @CONFIG_NF_CONNTRACK_ZONES, align 4
  %13 = call i64 @IS_ENABLED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @OVS_KEY_ATTR_CT_ZONE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %45

20:                                               ; preds = %15, %11
  %21 = load i32, i32* @CONFIG_NF_CONNTRACK_MARK, align 4
  %22 = call i64 @IS_ENABLED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @OVS_KEY_ATTR_CT_MARK, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %45

29:                                               ; preds = %24, %20
  %30 = load i32, i32* @CONFIG_NF_CONNTRACK_LABELS, align 4
  %31 = call i64 @IS_ENABLED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @OVS_KEY_ATTR_CT_LABELS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.net*, %struct.net** %4, align 8
  %39 = load i32, i32* @ovs_net_id, align 4
  %40 = call %struct.ovs_net* @net_generic(%struct.net* %38, i32 %39)
  store %struct.ovs_net* %40, %struct.ovs_net** %6, align 8
  %41 = load %struct.ovs_net*, %struct.ovs_net** %6, align 8
  %42 = getelementptr inbounds %struct.ovs_net, %struct.ovs_net* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %33, %29
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %37, %28, %19, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.ovs_net* @net_generic(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
