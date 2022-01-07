; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32, %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_OPTIONS = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i64 0, align 8
@OVS_VPORT_CMD_SET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dp_vport_genl_family = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.vport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 3
  %13 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  store %struct.nlattr** %13, %struct.nlattr*** %6, align 8
  %14 = call %struct.sk_buff* (...) @ovs_vport_cmd_alloc_info()
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %120

20:                                               ; preds = %2
  %21 = call i32 (...) @ovs_lock()
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sock_net(i32 %24)
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = call %struct.vport* @lookup_vport(i32 %25, i32 %28, %struct.nlattr** %29)
  store %struct.vport* %30, %struct.vport** %8, align 8
  %31 = load %struct.vport*, %struct.vport** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.vport* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.vport*, %struct.vport** %8, align 8
  %34 = call i64 @IS_ERR(%struct.vport* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  br label %115

37:                                               ; preds = %20
  %38 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %39 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i64 @nla_get_u32(%struct.nlattr* %47)
  %49 = load %struct.vport*, %struct.vport** %8, align 8
  %50 = getelementptr inbounds %struct.vport, %struct.vport* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %115

58:                                               ; preds = %43, %37
  %59 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %60 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %58
  %65 = load %struct.vport*, %struct.vport** %8, align 8
  %66 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %67 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @ovs_vport_set_options(%struct.vport* %65, %struct.nlattr* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %115

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %58
  %76 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %77 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %83 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  store %struct.nlattr* %85, %struct.nlattr** %10, align 8
  %86 = load %struct.vport*, %struct.vport** %8, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i32 @ovs_vport_set_upcall_portids(%struct.vport* %86, %struct.nlattr* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %115

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.vport*, %struct.vport** %8, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %97 = call i32 @genl_info_net(%struct.genl_info* %96)
  %98 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %99 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %102 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @OVS_VPORT_CMD_SET, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i32 @ovs_vport_cmd_fill_info(%struct.vport* %94, %struct.sk_buff* %95, i32 %97, i32 %100, i32 %103, i32 0, i32 %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @BUG_ON(i32 %109)
  %111 = call i32 (...) @ovs_unlock()
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %114 = call i32 @ovs_notify(i32* @dp_vport_genl_family, %struct.sk_buff* %112, %struct.genl_info* %113)
  store i32 0, i32* %3, align 4
  br label %120

115:                                              ; preds = %91, %73, %55, %36
  %116 = call i32 (...) @ovs_unlock()
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = call i32 @kfree_skb(%struct.sk_buff* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %93, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.sk_buff* @ovs_vport_cmd_alloc_info(...) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.vport* @lookup_vport(i32, i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @ovs_vport_set_options(%struct.vport*, %struct.nlattr*) #1

declare dso_local i32 @ovs_vport_set_upcall_portids(%struct.vport*, %struct.nlattr*) #1

declare dso_local i32 @ovs_vport_cmd_fill_info(%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ovs_unlock(...) #1

declare dso_local i32 @ovs_notify(i32*, %struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
