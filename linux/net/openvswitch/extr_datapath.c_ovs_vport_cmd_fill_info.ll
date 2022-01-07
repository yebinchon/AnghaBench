; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.ovs_header = type { i32 }
%struct.ovs_vport_stats = type { i32 }

@dp_vport_genl_family = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_PORT_NO = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_TYPE = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_NAME = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_IFINDEX = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_NETNSID = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_STATS = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32)* @ovs_vport_cmd_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_fill_info(%struct.vport* %0, %struct.sk_buff* %1, %struct.net* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.vport*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ovs_header*, align 8
  %19 = alloca %struct.ovs_vport_stats, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store %struct.net* %2, %struct.net** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %22, i32 %23, i32 %24, i32* @dp_vport_genl_family, i32 %25, i32 %26)
  store %struct.ovs_header* %27, %struct.ovs_header** %18, align 8
  %28 = load %struct.ovs_header*, %struct.ovs_header** %18, align 8
  %29 = icmp ne %struct.ovs_header* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %8
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %134

33:                                               ; preds = %8
  %34 = load %struct.vport*, %struct.vport** %10, align 8
  %35 = getelementptr inbounds %struct.vport, %struct.vport* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_dpifindex(i32 %36)
  %38 = load %struct.ovs_header*, %struct.ovs_header** %18, align 8
  %39 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %41 = load i32, i32* @OVS_VPORT_ATTR_PORT_NO, align 4
  %42 = load %struct.vport*, %struct.vport** %10, align 8
  %43 = getelementptr inbounds %struct.vport, %struct.vport* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @nla_put_u32(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %74, label %47

47:                                               ; preds = %33
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = load i32, i32* @OVS_VPORT_ATTR_TYPE, align 4
  %50 = load %struct.vport*, %struct.vport** %10, align 8
  %51 = getelementptr inbounds %struct.vport, %struct.vport* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @nla_put_u32(%struct.sk_buff* %48, i32 %49, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = load i32, i32* @OVS_VPORT_ATTR_NAME, align 4
  %60 = load %struct.vport*, %struct.vport** %10, align 8
  %61 = call i32 @ovs_vport_name(%struct.vport* %60)
  %62 = call i64 @nla_put_string(%struct.sk_buff* %58, i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %57
  %65 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %66 = load i32, i32* @OVS_VPORT_ATTR_IFINDEX, align 4
  %67 = load %struct.vport*, %struct.vport** %10, align 8
  %68 = getelementptr inbounds %struct.vport, %struct.vport* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_u32(%struct.sk_buff* %65, i32 %66, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64, %57, %47, %33
  br label %126

75:                                               ; preds = %64
  %76 = load %struct.net*, %struct.net** %12, align 8
  %77 = load %struct.vport*, %struct.vport** %10, align 8
  %78 = getelementptr inbounds %struct.vport, %struct.vport* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @dev_net(%struct.TYPE_4__* %79)
  %81 = call i32 @net_eq(%struct.net* %76, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %75
  %84 = load %struct.net*, %struct.net** %12, align 8
  %85 = load %struct.vport*, %struct.vport** %10, align 8
  %86 = getelementptr inbounds %struct.vport, %struct.vport* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = call i32 @dev_net(%struct.TYPE_4__* %87)
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @peernet2id_alloc(%struct.net* %84, i32 %88, i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %92 = load i32, i32* @OVS_VPORT_ATTR_NETNSID, align 4
  %93 = load i32, i32* %21, align 4
  %94 = call i64 @nla_put_s32(%struct.sk_buff* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %83
  br label %126

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %75
  %99 = load %struct.vport*, %struct.vport** %10, align 8
  %100 = call i32 @ovs_vport_get_stats(%struct.vport* %99, %struct.ovs_vport_stats* %19)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %102 = load i32, i32* @OVS_VPORT_ATTR_STATS, align 4
  %103 = load i32, i32* @OVS_VPORT_ATTR_PAD, align 4
  %104 = call i64 @nla_put_64bit(%struct.sk_buff* %101, i32 %102, i32 4, %struct.ovs_vport_stats* %19, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %126

107:                                              ; preds = %98
  %108 = load %struct.vport*, %struct.vport** %10, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %110 = call i64 @ovs_vport_get_upcall_portids(%struct.vport* %108, %struct.sk_buff* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %126

113:                                              ; preds = %107
  %114 = load %struct.vport*, %struct.vport** %10, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %116 = call i32 @ovs_vport_get_options(%struct.vport* %114, %struct.sk_buff* %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* @EMSGSIZE, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %129

122:                                              ; preds = %113
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = load %struct.ovs_header*, %struct.ovs_header** %18, align 8
  %125 = call i32 @genlmsg_end(%struct.sk_buff* %123, %struct.ovs_header* %124)
  store i32 0, i32* %9, align 4
  br label %134

126:                                              ; preds = %112, %106, %96, %74
  %127 = load i32, i32* @EMSGSIZE, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %131 = load %struct.ovs_header*, %struct.ovs_header** %18, align 8
  %132 = call i32 @genlmsg_cancel(%struct.sk_buff* %130, %struct.ovs_header* %131)
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %129, %122, %30
  %135 = load i32, i32* %9, align 4
  ret i32 %135
}

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @get_dpifindex(i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_vport_name(%struct.vport*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @peernet2id_alloc(%struct.net*, i32, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_vport_get_stats(%struct.vport*, %struct.ovs_vport_stats*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.ovs_vport_stats*, i32) #1

declare dso_local i64 @ovs_vport_get_upcall_portids(%struct.vport*, %struct.sk_buff*) #1

declare dso_local i32 @ovs_vport_get_options(%struct.vport*, %struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, %struct.ovs_header*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, %struct.ovs_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
