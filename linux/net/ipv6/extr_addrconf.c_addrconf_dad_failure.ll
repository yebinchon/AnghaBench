; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_failure.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_addrconf_dad_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_ifaddr = type { i32, i32, i32, i32, %struct.inet6_dev*, %struct.in6_addr, i32, i32, i32, i32 }
%struct.inet6_dev = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.net = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ifa6_config = type { i32, i32, i32, i32, i32, %struct.in6_addr* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s: IPv6 duplicate address %pI6c used by %pM detected!\0A\00", align 1
@IFA_F_STABLE_PRIVACY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"%s: privacy stable address generation failed because of DAD conflicts!\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"%s: generating new stable privacy address because of DAD conflict\0A\00", align 1
@INET6_IFADDR_STATE_PREDAD = common dso_local global i32 0, align 4
@INET6_IFADDR_STATE_ERRDAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addrconf_dad_failure(%struct.sk_buff* %0, %struct.inet6_ifaddr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_ifaddr*, align 8
  %5 = alloca %struct.inet6_dev*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca %struct.inet6_ifaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ifa6_config, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.inet6_ifaddr* %1, %struct.inet6_ifaddr** %4, align 8
  %11 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %12 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %11, i32 0, i32 4
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %12, align 8
  store %struct.inet6_dev* %13, %struct.inet6_dev** %5, align 8
  %14 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %15 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %14, i32 0, i32 4
  %16 = load %struct.inet6_dev*, %struct.inet6_dev** %15, align 8
  %17 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = call %struct.net* @dev_net(%struct.TYPE_10__* %18)
  store %struct.net* %19, %struct.net** %6, align 8
  %20 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %21 = call i64 @addrconf_dad_end(%struct.inet6_ifaddr* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %25 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %24)
  br label %173

26:                                               ; preds = %2
  %27 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %28 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %27, i32 0, i32 4
  %29 = load %struct.inet6_dev*, %struct.inet6_dev** %28, align 8
  %30 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %35 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %34, i32 0, i32 5
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call %struct.TYPE_9__* @eth_hdr(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @net_info_ratelimited(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %33, %struct.in6_addr* %35, i32 %39)
  %41 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %42 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %45 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IFA_F_STABLE_PRIVACY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %161

50:                                               ; preds = %26
  %51 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %52 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 0
  %56 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %57 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %55, align 8
  %59 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 1
  %60 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %61 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %59, align 4
  %63 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 2
  %64 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %65 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %63, align 8
  %67 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 3
  %68 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %69 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %67, align 4
  %71 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 4
  %72 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %73 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %71, align 8
  %75 = getelementptr inbounds %struct.ifa6_config, %struct.ifa6_config* %10, i32 0, i32 5
  store %struct.in6_addr* %7, %struct.in6_addr** %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.net*, %struct.net** %6, align 8
  %78 = getelementptr inbounds %struct.net, %struct.net* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %76, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %50
  %84 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %85 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %84, i32 0, i32 4
  %86 = load %struct.inet6_dev*, %struct.inet6_dev** %85, align 8
  %87 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @net_info_ratelimited(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %162

92:                                               ; preds = %50
  %93 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %94 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %93, i32 0, i32 5
  %95 = bitcast %struct.in6_addr* %7 to i8*
  %96 = bitcast %struct.in6_addr* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 8 %96, i64 4, i1 false)
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %99 = call i64 @ipv6_generate_stable_address(%struct.in6_addr* %7, i32 %97, %struct.inet6_dev* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %162

102:                                              ; preds = %92
  %103 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %104 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %107 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %113 = call i64 @ipv6_count_addresses(%struct.inet6_dev* %112)
  %114 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %115 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp sge i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %157

120:                                              ; preds = %111, %102
  %121 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %122 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %121, i32 0, i32 4
  %123 = load %struct.inet6_dev*, %struct.inet6_dev** %122, align 8
  %124 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, i32, ...) @net_info_ratelimited(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load %struct.inet6_dev*, %struct.inet6_dev** %5, align 8
  %130 = call %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev* %129, %struct.ifa6_config* %10, i32 0, i32* null)
  store %struct.inet6_ifaddr* %130, %struct.inet6_ifaddr** %8, align 8
  %131 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %132 = call i64 @IS_ERR(%struct.inet6_ifaddr* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %120
  br label %157

135:                                              ; preds = %120
  %136 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %137 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %136, i32 0, i32 2
  %138 = call i32 @spin_lock_bh(i32* %137)
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %141 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @INET6_IFADDR_STATE_PREDAD, align 4
  %143 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %144 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %146 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %145, i32 0, i32 2
  %147 = call i32 @spin_unlock_bh(i32* %146)
  %148 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %149 = load %struct.net*, %struct.net** %6, align 8
  %150 = getelementptr inbounds %struct.net, %struct.net* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr* %148, i32 %153)
  %155 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %8, align 8
  %156 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %155)
  br label %157

157:                                              ; preds = %135, %134, %119
  %158 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %159 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %158, i32 0, i32 2
  %160 = call i32 @spin_lock_bh(i32* %159)
  br label %161

161:                                              ; preds = %157, %26
  br label %162

162:                                              ; preds = %161, %101, %83
  %163 = load i32, i32* @INET6_IFADDR_STATE_ERRDAD, align 4
  %164 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %165 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %167 = getelementptr inbounds %struct.inet6_ifaddr, %struct.inet6_ifaddr* %166, i32 0, i32 2
  %168 = call i32 @spin_unlock_bh(i32* %167)
  %169 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %170 = call i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr* %169, i32 0)
  %171 = load %struct.inet6_ifaddr*, %struct.inet6_ifaddr** %4, align 8
  %172 = call i32 @in6_ifa_put(%struct.inet6_ifaddr* %171)
  br label %173

173:                                              ; preds = %162, %23
  ret void
}

declare dso_local %struct.net* @dev_net(%struct.TYPE_10__*) #1

declare dso_local i64 @addrconf_dad_end(%struct.inet6_ifaddr*) #1

declare dso_local i32 @in6_ifa_put(%struct.inet6_ifaddr*) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32, ...) #1

declare dso_local %struct.TYPE_9__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ipv6_generate_stable_address(%struct.in6_addr*, i32, %struct.inet6_dev*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @ipv6_count_addresses(%struct.inet6_dev*) #1

declare dso_local %struct.inet6_ifaddr* @ipv6_add_addr(%struct.inet6_dev*, %struct.ifa6_config*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inet6_ifaddr*) #1

declare dso_local i32 @addrconf_mod_dad_work(%struct.inet6_ifaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
