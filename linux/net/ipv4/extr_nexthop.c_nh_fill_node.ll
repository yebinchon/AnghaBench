; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_fill_node.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_nh_fill_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nexthop = type { i32, i32, i64, i32, i32, i32 }
%struct.fib6_nh = type { i32, i32 }
%struct.fib_nh = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nh_info = type { i32, %struct.TYPE_2__, %struct.fib6_nh, %struct.fib_nh, i64 }
%struct.TYPE_2__ = type { i64, i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nhmsg = type { i32, i64, i64, i32, i32 }
%struct.nh_group = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NHA_ID = common dso_local global i32 0, align 4
@NHA_BLACKHOLE = common dso_local global i32 0, align 4
@NHA_OIF = common dso_local global i32 0, align 4
@NHA_GATEWAY = common dso_local global i32 0, align 4
@NHA_ENCAP = common dso_local global i32 0, align 4
@NHA_ENCAP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nexthop*, i32, i32, i32, i32)* @nh_fill_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nh_fill_node(%struct.sk_buff* %0, %struct.nexthop* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nexthop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.fib6_nh*, align 8
  %15 = alloca %struct.fib_nh*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca %struct.nh_info*, align 8
  %18 = alloca %struct.nhmsg*, align 8
  %19 = alloca %struct.nh_group*, align 8
  %20 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nexthop* %1, %struct.nexthop** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 32, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %184

32:                                               ; preds = %6
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %34 = call %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.nhmsg* %34, %struct.nhmsg** %18, align 8
  %35 = load i32, i32* @AF_UNSPEC, align 4
  %36 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %37 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %39 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %42 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %44 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %47 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %49 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %51 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* @NHA_ID, align 4
  %54 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %55 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @nla_put_u32(%struct.sk_buff* %52, i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %32
  br label %181

60:                                               ; preds = %32
  %61 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %62 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %67 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @rtnl_dereference(i32 %68)
  %70 = bitcast i8* %69 to %struct.nh_group*
  store %struct.nh_group* %70, %struct.nh_group** %19, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load %struct.nh_group*, %struct.nh_group** %19, align 8
  %73 = call i64 @nla_put_nh_group(%struct.sk_buff* %71, %struct.nh_group* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %181

76:                                               ; preds = %65
  br label %177

77:                                               ; preds = %60
  %78 = load %struct.nexthop*, %struct.nexthop** %9, align 8
  %79 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @rtnl_dereference(i32 %80)
  %82 = bitcast i8* %81 to %struct.nh_info*
  store %struct.nh_info* %82, %struct.nh_info** %17, align 8
  %83 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %84 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %87 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %89 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %77
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load i32, i32* @NHA_BLACKHOLE, align 4
  %95 = call i64 @nla_put_flag(%struct.sk_buff* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %181

98:                                               ; preds = %92
  br label %177

99:                                               ; preds = %77
  %100 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %101 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  store %struct.net_device* %103, %struct.net_device** %20, align 8
  %104 = load %struct.net_device*, %struct.net_device** %20, align 8
  %105 = icmp ne %struct.net_device* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %108 = load i32, i32* @NHA_OIF, align 4
  %109 = load %struct.net_device*, %struct.net_device** %20, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @nla_put_u32(%struct.sk_buff* %107, i32 %108, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %181

115:                                              ; preds = %106, %99
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %118 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.nhmsg*, %struct.nhmsg** %18, align 8
  %122 = getelementptr inbounds %struct.nhmsg, %struct.nhmsg* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %124 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %159 [
    i32 129, label %126
    i32 128, label %143
  ]

126:                                              ; preds = %116
  %127 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %128 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %127, i32 0, i32 3
  store %struct.fib_nh* %128, %struct.fib_nh** %15, align 8
  %129 = load %struct.fib_nh*, %struct.fib_nh** %15, align 8
  %130 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %135 = load i32, i32* @NHA_GATEWAY, align 4
  %136 = load %struct.fib_nh*, %struct.fib_nh** %15, align 8
  %137 = getelementptr inbounds %struct.fib_nh, %struct.fib_nh* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @nla_put_u32(%struct.sk_buff* %134, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %181

142:                                              ; preds = %133, %126
  br label %159

143:                                              ; preds = %116
  %144 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %145 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %144, i32 0, i32 2
  store %struct.fib6_nh* %145, %struct.fib6_nh** %14, align 8
  %146 = load %struct.fib6_nh*, %struct.fib6_nh** %14, align 8
  %147 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %152 = load i32, i32* @NHA_GATEWAY, align 4
  %153 = load %struct.fib6_nh*, %struct.fib6_nh** %14, align 8
  %154 = getelementptr inbounds %struct.fib6_nh, %struct.fib6_nh* %153, i32 0, i32 0
  %155 = call i32 @nla_put_in6_addr(%struct.sk_buff* %151, i32 %152, i32* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %181

158:                                              ; preds = %150, %143
  br label %159

159:                                              ; preds = %116, %158, %142
  %160 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %161 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %159
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = load %struct.nh_info*, %struct.nh_info** %17, align 8
  %168 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* @NHA_ENCAP, align 4
  %172 = load i32, i32* @NHA_ENCAP_TYPE, align 4
  %173 = call i64 @lwtunnel_fill_encap(%struct.sk_buff* %166, i64 %170, i32 %171, i32 %172)
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %181

176:                                              ; preds = %165, %159
  br label %177

177:                                              ; preds = %176, %98, %76
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %180 = call i32 @nlmsg_end(%struct.sk_buff* %178, %struct.nlmsghdr* %179)
  store i32 0, i32* %7, align 4
  br label %184

181:                                              ; preds = %175, %157, %141, %114, %97, %75, %59
  %182 = load i32, i32* @EMSGSIZE, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %181, %177, %29
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nhmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i64 @nla_put_nh_group(%struct.sk_buff*, %struct.nh_group*) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @lwtunnel_fill_encap(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
