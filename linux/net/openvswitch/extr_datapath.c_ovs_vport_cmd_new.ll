; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_vport_cmd_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.ovs_header*, %struct.nlattr** }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i32 }
%struct.vport_parms = type { i32, %struct.nlattr*, %struct.datapath*, %struct.nlattr*, i8*, i32 }
%struct.datapath = type { i32 }
%struct.vport = type { i32 }

@OVS_VPORT_ATTR_NAME = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_TYPE = common dso_local global i64 0, align 8
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_PORT_NO = common dso_local global i64 0, align 8
@DP_MAX_PORTS = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_OPTIONS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@OVS_VPORT_CMD_NEW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dp_vport_genl_family = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_vport_cmd_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_vport_cmd_new(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.ovs_header*, align 8
  %8 = alloca %struct.vport_parms, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.vport*, align 8
  %11 = alloca %struct.datapath*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 3
  %17 = load %struct.nlattr**, %struct.nlattr*** %16, align 8
  store %struct.nlattr** %17, %struct.nlattr*** %6, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load %struct.ovs_header*, %struct.ovs_header** %19, align 8
  store %struct.ovs_header* %20, %struct.ovs_header** %7, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %22 = load i64, i64* @OVS_VPORT_ATTR_NAME, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %28 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %34 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26, %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %217

41:                                               ; preds = %32
  %42 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %43 = load i64, i64* @OVS_VPORT_ATTR_IFINDEX, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %217

50:                                               ; preds = %41
  %51 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %52 = load i64, i64* @OVS_VPORT_ATTR_PORT_NO, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %58 = load i64, i64* @OVS_VPORT_ATTR_PORT_NO, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i8* @nla_get_u32(%struct.nlattr* %60)
  br label %63

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i8* [ %61, %56 ], [ null, %62 ]
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @DP_MAX_PORTS, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EFBIG, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %217

72:                                               ; preds = %63
  %73 = call %struct.sk_buff* (...) @ovs_vport_cmd_alloc_info()
  store %struct.sk_buff* %73, %struct.sk_buff** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %217

79:                                               ; preds = %72
  %80 = call i32 (...) @ovs_lock()
  br label %81

81:                                               ; preds = %166, %79
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sock_net(i32 %84)
  %86 = load %struct.ovs_header*, %struct.ovs_header** %7, align 8
  %87 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.datapath* @get_dp(i32 %85, i32 %88)
  store %struct.datapath* %89, %struct.datapath** %11, align 8
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  %92 = load %struct.datapath*, %struct.datapath** %11, align 8
  %93 = icmp ne %struct.datapath* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %81
  br label %212

95:                                               ; preds = %81
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.datapath*, %struct.datapath** %11, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call %struct.vport* @ovs_vport_ovsl(%struct.datapath* %99, i32 %100)
  store %struct.vport* %101, %struct.vport** %10, align 8
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  %104 = load %struct.vport*, %struct.vport** %10, align 8
  %105 = icmp ne %struct.vport* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %212

107:                                              ; preds = %98
  br label %128

108:                                              ; preds = %95
  store i32 1, i32* %13, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @DP_MAX_PORTS, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @EFBIG, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %14, align 4
  br label %212

116:                                              ; preds = %109
  %117 = load %struct.datapath*, %struct.datapath** %11, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call %struct.vport* @ovs_vport_ovsl(%struct.datapath* %117, i32 %118)
  store %struct.vport* %119, %struct.vport** %10, align 8
  %120 = load %struct.vport*, %struct.vport** %10, align 8
  %121 = icmp ne %struct.vport* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  br label %127

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %109

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %107
  %129 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %130 = load i64, i64* @OVS_VPORT_ATTR_NAME, align 8
  %131 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %129, i64 %130
  %132 = load %struct.nlattr*, %struct.nlattr** %131, align 8
  %133 = call i32 @nla_data(%struct.nlattr* %132)
  %134 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 5
  store i32 %133, i32* %134, align 8
  %135 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %136 = load i64, i64* @OVS_VPORT_ATTR_TYPE, align 8
  %137 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %135, i64 %136
  %138 = load %struct.nlattr*, %struct.nlattr** %137, align 8
  %139 = call i8* @nla_get_u32(%struct.nlattr* %138)
  %140 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 4
  store i8* %139, i8** %140, align 8
  %141 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %142 = load i64, i64* @OVS_VPORT_ATTR_OPTIONS, align 8
  %143 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %141, i64 %142
  %144 = load %struct.nlattr*, %struct.nlattr** %143, align 8
  %145 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 3
  store %struct.nlattr* %144, %struct.nlattr** %145, align 8
  %146 = load %struct.datapath*, %struct.datapath** %11, align 8
  %147 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 2
  store %struct.datapath* %146, %struct.datapath** %147, align 8
  %148 = load i32, i32* %13, align 4
  %149 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 0
  store i32 %148, i32* %149, align 8
  %150 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %151 = load i64, i64* @OVS_VPORT_ATTR_UPCALL_PID, align 8
  %152 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %150, i64 %151
  %153 = load %struct.nlattr*, %struct.nlattr** %152, align 8
  %154 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 1
  store %struct.nlattr* %153, %struct.nlattr** %154, align 8
  %155 = call %struct.vport* @new_vport(%struct.vport_parms* %8)
  store %struct.vport* %155, %struct.vport** %10, align 8
  %156 = load %struct.vport*, %struct.vport** %10, align 8
  %157 = call i32 @PTR_ERR(%struct.vport* %156)
  store i32 %157, i32* %14, align 4
  %158 = load %struct.vport*, %struct.vport** %10, align 8
  %159 = call i64 @IS_ERR(%struct.vport* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %128
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %81

167:                                              ; preds = %161
  br label %212

168:                                              ; preds = %128
  %169 = load %struct.vport*, %struct.vport** %10, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %171 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %172 = call i32 @genl_info_net(%struct.genl_info* %171)
  %173 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %174 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %177 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @OVS_VPORT_CMD_NEW, align 4
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call i32 @ovs_vport_cmd_fill_info(%struct.vport* %169, %struct.sk_buff* %170, i32 %172, i32 %175, i32 %178, i32 0, i32 %179, i32 %180)
  store i32 %181, i32* %14, align 4
  %182 = load %struct.vport*, %struct.vport** %10, align 8
  %183 = getelementptr inbounds %struct.vport, %struct.vport* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @netdev_get_fwd_headroom(i32 %184)
  store i32 %185, i32* %12, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.datapath*, %struct.datapath** %11, align 8
  %188 = getelementptr inbounds %struct.datapath, %struct.datapath* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ugt i32 %186, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %168
  %192 = load %struct.datapath*, %struct.datapath** %11, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @ovs_update_headroom(%struct.datapath* %192, i32 %193)
  br label %203

195:                                              ; preds = %168
  %196 = load %struct.vport*, %struct.vport** %10, align 8
  %197 = getelementptr inbounds %struct.vport, %struct.vport* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.datapath*, %struct.datapath** %11, align 8
  %200 = getelementptr inbounds %struct.datapath, %struct.datapath* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @netdev_set_rx_headroom(i32 %198, i32 %201)
  br label %203

203:                                              ; preds = %195, %191
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @BUG_ON(i32 %206)
  %208 = call i32 (...) @ovs_unlock()
  %209 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %210 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %211 = call i32 @ovs_notify(i32* @dp_vport_genl_family, %struct.sk_buff* %209, %struct.genl_info* %210)
  store i32 0, i32* %3, align 4
  br label %217

212:                                              ; preds = %167, %113, %106, %94
  %213 = call i32 (...) @ovs_unlock()
  %214 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %215 = call i32 @kfree_skb(%struct.sk_buff* %214)
  %216 = load i32, i32* %14, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %212, %203, %76, %69, %47, %38
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @ovs_vport_cmd_alloc_info(...) #1

declare dso_local i32 @ovs_lock(...) #1

declare dso_local %struct.datapath* @get_dp(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local %struct.vport* @ovs_vport_ovsl(%struct.datapath*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.vport* @new_vport(%struct.vport_parms*) #1

declare dso_local i32 @PTR_ERR(%struct.vport*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @ovs_vport_cmd_fill_info(%struct.vport*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @netdev_get_fwd_headroom(i32) #1

declare dso_local i32 @ovs_update_headroom(%struct.datapath*, i32) #1

declare dso_local i32 @netdev_set_rx_headroom(i32, i32) #1

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
