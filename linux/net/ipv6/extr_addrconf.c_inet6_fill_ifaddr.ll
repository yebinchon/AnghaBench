; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_ifaddr = type { i32, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inet6_fill_args = type { i64, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_RT_PRIORITY = common dso_local global i32 0, align 4
@IFA_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_ifaddr*, %struct.inet6_fill_args*)* @inet6_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifaddr(%struct.sk_buff* %0, %struct.inet6_ifaddr* %1, %struct.inet6_fill_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet6_ifaddr*, align 8
  %7 = alloca %struct.inet6_fill_args*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %6, align 8
  store %struct.inet6_fill_args* %2, %struct.inet6_fill_args** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %14 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %17 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %20 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %23 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %12, i32 %15, i32 %18, i32 %21, i32 4, i32 %24)
  store %struct.nlmsghdr* %25, %struct.nlmsghdr** %8, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %27 = icmp ne %struct.nlmsghdr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %198

31:                                               ; preds = %3
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %33 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %34 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %37 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %40 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rt_scope(i32 %41)
  %43 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %44 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %43, i32 0, i32 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @put_ifaddrmsg(%struct.nlmsghdr* %32, i32 %35, i32 %38, i32 %42, i32 %49)
  %51 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %52 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %31
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = load i32, i32* @IFA_TARGET_NETNSID, align 4
  %58 = load %struct.inet6_fill_args*, %struct.inet6_fill_args** %7, align 8
  %59 = getelementptr inbounds %struct.inet6_fill_args, %struct.inet6_fill_args* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @nla_put_s32(%struct.sk_buff* %56, i32 %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %192

64:                                               ; preds = %55, %31
  %65 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %66 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IFA_F_PERMANENT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %119, label %77

77:                                               ; preds = %71, %64
  %78 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %79 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %9, align 8
  %81 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %82 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %118

87:                                               ; preds = %77
  %88 = load i64, i64* @jiffies, align 8
  %89 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %90 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = load i64, i64* @HZ, align 8
  %94 = sdiv i64 %92, %93
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %103

102:                                              ; preds = %87
  store i64 0, i64* %9, align 8
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = icmp sgt i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %10, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %10, align 8
  br label %116

115:                                              ; preds = %107
  store i64 0, i64* %10, align 8
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116, %103
  br label %118

118:                                              ; preds = %117, %77
  br label %122

119:                                              ; preds = %71
  %120 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %119, %118
  %123 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %124 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %123, i32 0, i32 7
  %125 = call i32 @ipv6_addr_any(i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %122
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load i32, i32* @IFA_LOCAL, align 4
  %130 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %131 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %130, i32 0, i32 6
  %132 = call i64 @nla_put_in6_addr(%struct.sk_buff* %128, i32 %129, i32* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %127
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = load i32, i32* @IFA_ADDRESS, align 4
  %137 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %138 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %137, i32 0, i32 7
  %139 = call i64 @nla_put_in6_addr(%struct.sk_buff* %135, i32 %136, i32* %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134, %127
  br label %192

142:                                              ; preds = %134
  br label %152

143:                                              ; preds = %122
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load i32, i32* @IFA_ADDRESS, align 4
  %146 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %147 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %146, i32 0, i32 6
  %148 = call i64 @nla_put_in6_addr(%struct.sk_buff* %144, i32 %145, i32* %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %192

151:                                              ; preds = %143
  br label %152

152:                                              ; preds = %151, %142
  %153 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %154 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load i32, i32* @IFA_RT_PRIORITY, align 4
  %160 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %161 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @nla_put_u32(%struct.sk_buff* %158, i32 %159, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  br label %192

166:                                              ; preds = %157, %152
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %169 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %172 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i64 @put_cacheinfo(%struct.sk_buff* %167, i32 %170, i64 %173, i64 %174, i64 %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  br label %192

179:                                              ; preds = %166
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = load i32, i32* @IFA_FLAGS, align 4
  %182 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %6, align 8
  %183 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i64 @nla_put_u32(%struct.sk_buff* %180, i32 %181, i32 %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %192

188:                                              ; preds = %179
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %191 = call i32 @nlmsg_end(%struct.sk_buff* %189, %struct.nlmsghdr* %190)
  store i32 0, i32* %4, align 4
  br label %198

192:                                              ; preds = %187, %178, %165, %150, %141, %63
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %195 = call i32 @nlmsg_cancel(%struct.sk_buff* %193, %struct.nlmsghdr* %194)
  %196 = load i32, i32* @EMSGSIZE, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %198

198:                                              ; preds = %192, %188, %28
  %199 = load i32, i32* %4, align 4
  ret i32 %199
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_ifaddrmsg(%struct.nlmsghdr*, i32, i32, i32, i32) #1

declare dso_local i32 @rt_scope(i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i64 @nla_put_in6_addr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @put_cacheinfo(%struct.sk_buff*, i32, i64, i64, i64) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
