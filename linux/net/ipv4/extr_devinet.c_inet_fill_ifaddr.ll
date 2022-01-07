; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_fill_ifaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_fill_ifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.in_ifaddr = type { i32, i64, i64, i64, i32, i32, i64*, i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inet_fill_args = type { i64, i32, i32, i32, i32 }
%struct.ifaddrmsg = type { i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@IFA_TARGET_NETNSID = common dso_local global i32 0, align 4
@IFA_F_PERMANENT = common dso_local global i32 0, align 4
@INFINITY_LIFE_TIME = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IFA_ADDRESS = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i32 0, align 4
@IFA_BROADCAST = common dso_local global i32 0, align 4
@IFA_LABEL = common dso_local global i32 0, align 4
@IFA_FLAGS = common dso_local global i32 0, align 4
@IFA_RT_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.in_ifaddr*, %struct.inet_fill_args*)* @inet_fill_ifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_fill_ifaddr(%struct.sk_buff* %0, %struct.in_ifaddr* %1, %struct.inet_fill_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.in_ifaddr*, align 8
  %7 = alloca %struct.inet_fill_args*, align 8
  %8 = alloca %struct.ifaddrmsg*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.in_ifaddr* %1, %struct.in_ifaddr** %6, align 8
  store %struct.inet_fill_args* %2, %struct.inet_fill_args** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %15 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %18 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %21 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %24 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %13, i32 %16, i32 %19, i32 %22, i32 20, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %9, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %225

32:                                               ; preds = %3
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %34 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ifaddrmsg* %34, %struct.ifaddrmsg** %8, align 8
  %35 = load i32, i32* @AF_INET, align 4
  %36 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %37 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %39 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %42 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %44 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %47 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %49 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %52 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %54 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %53, i32 0, i32 10
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %61 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %63 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %32
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @IFA_TARGET_NETNSID, align 4
  %69 = load %struct.inet_fill_args*, %struct.inet_fill_args** %7, align 8
  %70 = getelementptr inbounds %struct.inet_fill_args, %struct.inet_fill_args* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @nla_put_s32(%struct.sk_buff* %67, i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %219

75:                                               ; preds = %66, %32
  %76 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %8, align 8
  %77 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFA_F_PERMANENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %124, label %82

82:                                               ; preds = %75
  %83 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %84 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  %86 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %87 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %82
  %93 = load i64, i64* @jiffies, align 8
  %94 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %95 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %93, %96
  %98 = load i64, i64* @HZ, align 8
  %99 = sdiv i64 %97, %98
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub nsw i64 %105, %104
  store i64 %106, i64* %10, align 8
  br label %108

107:                                              ; preds = %92
  store i64 0, i64* %10, align 8
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %11, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %11, align 8
  br label %121

120:                                              ; preds = %112
  store i64 0, i64* %11, align 8
  br label %121

121:                                              ; preds = %120, %116
  br label %122

122:                                              ; preds = %121, %108
  br label %123

123:                                              ; preds = %122, %82
  br label %127

124:                                              ; preds = %75
  %125 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64, i64* @INFINITY_LIFE_TIME, align 8
  store i64 %126, i64* %11, align 8
  br label %127

127:                                              ; preds = %124, %123
  %128 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %129 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %128, i32 0, i32 9
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = load i32, i32* @IFA_ADDRESS, align 4
  %135 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %136 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @nla_put_in_addr(%struct.sk_buff* %133, i32 %134, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %214, label %140

140:                                              ; preds = %132, %127
  %141 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %142 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = load i32, i32* @IFA_LOCAL, align 4
  %148 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %149 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @nla_put_in_addr(%struct.sk_buff* %146, i32 %147, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %214, label %153

153:                                              ; preds = %145, %140
  %154 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %155 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load i32, i32* @IFA_BROADCAST, align 4
  %161 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %162 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %161, i32 0, i32 7
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @nla_put_in_addr(%struct.sk_buff* %159, i32 %160, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %214, label %166

166:                                              ; preds = %158, %153
  %167 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %168 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %167, i32 0, i32 6
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = load i32, i32* @IFA_LABEL, align 4
  %176 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %177 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = call i64 @nla_put_string(%struct.sk_buff* %174, i32 %175, i64* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %214, label %181

181:                                              ; preds = %173, %166
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = load i32, i32* @IFA_FLAGS, align 4
  %184 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %185 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i64 @nla_put_u32(%struct.sk_buff* %182, i32 %183, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %214, label %189

189:                                              ; preds = %181
  %190 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %191 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %189
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = load i32, i32* @IFA_RT_PRIORITY, align 4
  %197 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %198 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @nla_put_u32(%struct.sk_buff* %195, i32 %196, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %214, label %202

202:                                              ; preds = %194, %189
  %203 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %204 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %205 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %204, i32 0, i32 5
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.in_ifaddr*, %struct.in_ifaddr** %6, align 8
  %208 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %11, align 8
  %212 = call i64 @put_cacheinfo(%struct.sk_buff* %203, i32 %206, i64 %209, i64 %210, i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %202, %194, %181, %173, %158, %145, %132
  br label %219

215:                                              ; preds = %202
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %218 = call i32 @nlmsg_end(%struct.sk_buff* %216, %struct.nlmsghdr* %217)
  store i32 0, i32* %4, align 4
  br label %225

219:                                              ; preds = %214, %74
  %220 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %221 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %222 = call i32 @nlmsg_cancel(%struct.sk_buff* %220, %struct.nlmsghdr* %221)
  %223 = load i32, i32* @EMSGSIZE, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %219, %215, %29
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64*) #1

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
