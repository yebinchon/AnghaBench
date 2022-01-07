; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_datagram.c___ip4_datagram_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_datagram.c___ip4_datagram_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (%struct.sock*)* }
%struct.sockaddr = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i64, i64, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32, i64 }
%struct.sockaddr_in = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.rtable = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@ENETUNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTNOROUTES = common dso_local global i32 0, align 4
@RTCF_BROADCAST = common dso_local global i32 0, align 4
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip4_datagram_connect(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.flowi4*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %8, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %193

25:                                               ; preds = %3
  %26 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EAFNOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %193

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @sk_dst_reset(%struct.sock* %35)
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %41 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ipv4_is_multicast(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %34
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call i32 @sock_net(%struct.sock* %53)
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @netif_index_is_l3_master(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52, %49
  %59 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %60 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %67 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %65, %62
  br label %70

70:                                               ; preds = %69, %34
  %71 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %72 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store %struct.flowi4* %75, %struct.flowi4** %10, align 8
  %76 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i64, i64* %12, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = call i32 @RT_CONN_FLAGS(%struct.sock* %82)
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %89 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = call %struct.rtable* @ip_route_connect(%struct.flowi4* %76, i32 %80, i64 %81, i32 %83, i32 %84, i32 %87, i32 %90, i32 %93, %struct.sock* %94)
  store %struct.rtable* %95, %struct.rtable** %11, align 8
  %96 = load %struct.rtable*, %struct.rtable** %11, align 8
  %97 = call i64 @IS_ERR(%struct.rtable* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %70
  %100 = load %struct.rtable*, %struct.rtable** %11, align 8
  %101 = call i32 @PTR_ERR(%struct.rtable* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @ENETUNREACH, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = call i32 @sock_net(%struct.sock* %107)
  %109 = load i32, i32* @IPSTATS_MIB_OUTNOROUTES, align 4
  %110 = call i32 @IP_INC_STATS(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %191

112:                                              ; preds = %70
  %113 = load %struct.rtable*, %struct.rtable** %11, align 8
  %114 = getelementptr inbounds %struct.rtable, %struct.rtable* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RTCF_BROADCAST, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = load %struct.sock*, %struct.sock** %5, align 8
  %121 = load i32, i32* @SOCK_BROADCAST, align 4
  %122 = call i32 @sock_flag(%struct.sock* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %119
  %125 = load %struct.rtable*, %struct.rtable** %11, align 8
  %126 = call i32 @ip_rt_put(%struct.rtable* %125)
  %127 = load i32, i32* @EACCES, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %14, align 4
  br label %191

129:                                              ; preds = %119, %112
  %130 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %131 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %136 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %139 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %138, i32 0, i32 5
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %142 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %140
  %146 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %147 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %150 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %149, i32 0, i32 4
  store i64 %148, i64* %150, align 8
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 2
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %154, align 8
  %156 = icmp ne i32 (%struct.sock*)* %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %145
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %161, align 8
  %163 = load %struct.sock*, %struct.sock** %5, align 8
  %164 = call i32 %162(%struct.sock* %163)
  br label %165

165:                                              ; preds = %157, %145
  br label %166

166:                                              ; preds = %165, %140
  %167 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %168 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %171 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %173 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %176 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.sock*, %struct.sock** %5, align 8
  %178 = call i32 @reuseport_has_conns(%struct.sock* %177, i32 1)
  %179 = load i32, i32* @TCP_ESTABLISHED, align 4
  %180 = load %struct.sock*, %struct.sock** %5, align 8
  %181 = getelementptr inbounds %struct.sock, %struct.sock* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.sock*, %struct.sock** %5, align 8
  %183 = call i32 @sk_set_txhash(%struct.sock* %182)
  %184 = call i32 (...) @prandom_u32()
  %185 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %186 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.sock*, %struct.sock** %5, align 8
  %188 = load %struct.rtable*, %struct.rtable** %11, align 8
  %189 = getelementptr inbounds %struct.rtable, %struct.rtable* %188, i32 0, i32 1
  %190 = call i32 @sk_dst_set(%struct.sock* %187, i32* %189)
  store i32 0, i32* %14, align 4
  br label %191

191:                                              ; preds = %166, %124, %111
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %31, %22
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sk_dst_reset(%struct.sock*) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

declare dso_local i64 @netif_index_is_l3_master(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_connect(%struct.flowi4*, i32, i64, i32, i32, i32, i32, i32, %struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @PTR_ERR(%struct.rtable*) #1

declare dso_local i32 @IP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @reuseport_has_conns(%struct.sock*, i32) #1

declare dso_local i32 @sk_set_txhash(%struct.sock*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @sk_dst_set(%struct.sock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
