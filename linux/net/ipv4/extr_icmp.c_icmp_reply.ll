; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_icmp.c_icmp_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icmp_bxm = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.sk_buff = type { i32, i32 }
%struct.ipcm_cookie = type { %struct.TYPE_11__*, i8* }
%struct.rtable = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i8*, i8*, i8* }
%struct.sock = type { i8* }
%struct.inet_sock = type { i32 }
%struct.TYPE_14__ = type { i32, i8* }

@IPPROTO_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icmp_bxm*, %struct.sk_buff*)* @icmp_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp_reply(%struct.icmp_bxm* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.icmp_bxm*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipcm_cookie, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.flowi4, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.inet_sock*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.icmp_bxm* %0, %struct.icmp_bxm** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %16)
  store %struct.rtable* %17, %struct.rtable** %6, align 8
  %18 = load %struct.rtable*, %struct.rtable** %6, align 8
  %19 = getelementptr inbounds %struct.rtable, %struct.rtable* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @dev_net(i32 %21)
  store %struct.net* %22, %struct.net** %7, align 8
  %23 = load %struct.net*, %struct.net** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @IP4_REPLY_MARK(%struct.net* %23, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %29 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %34 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load %struct.net*, %struct.net** %7, align 8
  %39 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %40 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @ip_options_echo(%struct.net* %38, %struct.TYPE_13__* %42, %struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %162

47:                                               ; preds = %2
  %48 = call i32 (...) @local_bh_disable()
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @icmpv4_global_allow(%struct.net* %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %160

55:                                               ; preds = %47
  %56 = load %struct.net*, %struct.net** %7, align 8
  %57 = call %struct.sock* @icmp_xmit_lock(%struct.net* %56)
  store %struct.sock* %57, %struct.sock** %9, align 8
  %58 = load %struct.sock*, %struct.sock** %9, align 8
  %59 = icmp ne %struct.sock* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %160

61:                                               ; preds = %55
  %62 = load %struct.sock*, %struct.sock** %9, align 8
  %63 = call %struct.inet_sock* @inet_sk(%struct.sock* %62)
  store %struct.inet_sock* %63, %struct.inet_sock** %10, align 8
  %64 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %65 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = call i32 @ipcm_init(%struct.ipcm_cookie* %5)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inet_sock*, %struct.inet_sock** %10, align 8
  %74 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** %13, align 8
  %76 = load %struct.sock*, %struct.sock** %9, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %5, i32 0, i32 1
  store i8* %81, i8** %82, align 8
  store i8* %81, i8** %11, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i8* @fib_compute_spec_dst(%struct.sk_buff* %83)
  store i8* %84, i8** %12, align 8
  %85 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %86 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %61
  %93 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %94 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %5, i32 0, i32 0
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %96, align 8
  %97 = getelementptr inbounds %struct.ipcm_cookie, %struct.ipcm_cookie* %5, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %105 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %11, align 8
  br label %110

110:                                              ; preds = %103, %92
  br label %111

111:                                              ; preds = %110, %61
  %112 = call i32 @memset(%struct.flowi4* %8, i32 0, i32 40)
  %113 = load i8*, i8** %11, align 8
  %114 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 6
  store i8* %113, i8** %114, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 5
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 4
  store i8* %117, i8** %118, align 8
  %119 = load %struct.net*, %struct.net** %7, align 8
  %120 = call i32 @sock_net_uid(%struct.net* %119, i32* null)
  %121 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 3
  store i32 %120, i32* %121, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %122)
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @RT_TOS(i32 %125)
  %127 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 2
  store i32 %126, i32* %127, align 8
  %128 = load i32, i32* @IPPROTO_ICMP, align 4
  %129 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 1
  store i32 %128, i32* %129, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @l3mdev_master_ifindex(i32 %132)
  %134 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %8, i32 0, i32 0
  store i32 %133, i32* %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %136 = call i32 @flowi4_to_flowi(%struct.flowi4* %8)
  %137 = call i32 @security_skb_classify_flow(%struct.sk_buff* %135, i32 %136)
  %138 = load %struct.net*, %struct.net** %7, align 8
  %139 = call %struct.rtable* @ip_route_output_key(%struct.net* %138, %struct.flowi4* %8)
  store %struct.rtable* %139, %struct.rtable** %6, align 8
  %140 = load %struct.rtable*, %struct.rtable** %6, align 8
  %141 = call i64 @IS_ERR(%struct.rtable* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %111
  br label %157

144:                                              ; preds = %111
  %145 = load %struct.net*, %struct.net** %7, align 8
  %146 = load %struct.rtable*, %struct.rtable** %6, align 8
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = call i64 @icmpv4_xrlim_allow(%struct.net* %145, %struct.rtable* %146, %struct.flowi4* %8, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.icmp_bxm*, %struct.icmp_bxm** %3, align 8
  %153 = call i32 @icmp_push_reply(%struct.icmp_bxm* %152, %struct.flowi4* %8, %struct.ipcm_cookie* %5, %struct.rtable** %6)
  br label %154

154:                                              ; preds = %151, %144
  %155 = load %struct.rtable*, %struct.rtable** %6, align 8
  %156 = call i32 @ip_rt_put(%struct.rtable* %155)
  br label %157

157:                                              ; preds = %154, %143
  %158 = load %struct.sock*, %struct.sock** %9, align 8
  %159 = call i32 @icmp_xmit_unlock(%struct.sock* %158)
  br label %160

160:                                              ; preds = %157, %60, %54
  %161 = call i32 (...) @local_bh_enable()
  br label %162

162:                                              ; preds = %160, %46
  ret void
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i8* @IP4_REPLY_MARK(%struct.net*, i32) #1

declare dso_local i64 @ip_options_echo(%struct.net*, %struct.TYPE_13__*, %struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @icmpv4_global_allow(%struct.net*, i32, i32) #1

declare dso_local %struct.sock* @icmp_xmit_lock(%struct.net*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ipcm_init(%struct.ipcm_cookie*) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @fib_compute_spec_dst(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.flowi4*, i32, i32) #1

declare dso_local i32 @sock_net_uid(%struct.net*, i32*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @l3mdev_master_ifindex(i32) #1

declare dso_local i32 @security_skb_classify_flow(%struct.sk_buff*, i32) #1

declare dso_local i32 @flowi4_to_flowi(%struct.flowi4*) #1

declare dso_local %struct.rtable* @ip_route_output_key(%struct.net*, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i64 @icmpv4_xrlim_allow(%struct.net*, %struct.rtable*, %struct.flowi4*, i32, i32) #1

declare dso_local i32 @icmp_push_reply(%struct.icmp_bxm*, %struct.flowi4*, %struct.ipcm_cookie*, %struct.rtable**) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @icmp_xmit_unlock(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
