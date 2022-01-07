; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TPROXY.c_tproxy_tg4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TPROXY.c_tproxy_tg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.udphdr = type { i32, i32 }
%struct.sock = type { i64 }

@NF_DROP = common dso_local global i32 0, align 4
@NF_TPROXY_LOOKUP_ESTABLISHED = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i64 0, align 8
@NF_TPROXY_LOOKUP_LISTENER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i32, i32, i32, i32)* @tproxy_tg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tproxy_tg4(%struct.net* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iphdr*, align 8
  %15 = alloca %struct.udphdr, align 4
  %16 = alloca %struct.udphdr*, align 8
  %17 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %18)
  store %struct.iphdr* %19, %struct.iphdr** %14, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i32 @ip_hdrlen(%struct.sk_buff* %21)
  %23 = call %struct.udphdr* @skb_header_pointer(%struct.sk_buff* %20, i32 %22, i32 8, %struct.udphdr* %15)
  store %struct.udphdr* %23, %struct.udphdr** %16, align 8
  %24 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %25 = icmp eq %struct.udphdr* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @NF_DROP, align 4
  store i32 %27, i32* %7, align 4
  br label %160

28:                                               ; preds = %6
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %31 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %32 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %38 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %41 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %44 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NF_TPROXY_LOOKUP_ESTABLISHED, align 4
  %50 = call %struct.sock* @nf_tproxy_get_sock_v4(%struct.net* %29, %struct.sk_buff* %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %49)
  store %struct.sock* %50, %struct.sock** %17, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nf_tproxy_laddr4(%struct.sk_buff* %51, i32 %52, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %28
  %60 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %61 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %28
  %64 = load %struct.sock*, %struct.sock** %17, align 8
  %65 = icmp ne %struct.sock* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.sock*, %struct.sock** %17, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TCP_TIME_WAIT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.net*, %struct.net** %8, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.sock*, %struct.sock** %17, align 8
  %78 = call %struct.sock* @nf_tproxy_handle_time_wait4(%struct.net* %73, %struct.sk_buff* %74, i32 %75, i32 %76, %struct.sock* %77)
  store %struct.sock* %78, %struct.sock** %17, align 8
  br label %102

79:                                               ; preds = %66, %63
  %80 = load %struct.sock*, %struct.sock** %17, align 8
  %81 = icmp ne %struct.sock* %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %79
  %83 = load %struct.net*, %struct.net** %8, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %86 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %89 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %93 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NF_TPROXY_LOOKUP_LISTENER, align 4
  %100 = call %struct.sock* @nf_tproxy_get_sock_v4(%struct.net* %83, %struct.sk_buff* %84, i32 %87, i32 %90, i32 %91, i32 %94, i32 %95, i32 %98, i32 %99)
  store %struct.sock* %100, %struct.sock** %17, align 8
  br label %101

101:                                              ; preds = %82, %79
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.sock*, %struct.sock** %17, align 8
  %104 = icmp ne %struct.sock* %103, null
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load %struct.sock*, %struct.sock** %17, align 8
  %107 = call i64 @nf_tproxy_sk_is_transparent(%struct.sock* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  %110 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %12, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load i32, i32* %13, align 4
  %117 = xor i32 %115, %116
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %121 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %124 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %123, i32 0, i32 0
  %125 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %126 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ntohs(i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ntohs(i32 %129)
  %131 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %122, i32* %124, i32 %128, i32* %10, i32 %130, i32 %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %136 = load %struct.sock*, %struct.sock** %17, align 8
  %137 = call i32 @nf_tproxy_assign_sock(%struct.sk_buff* %135, %struct.sock* %136)
  %138 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %138, i32* %7, align 4
  br label %160

139:                                              ; preds = %105, %102
  %140 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %141 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %144 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %143, i32 0, i32 1
  %145 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %146 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ntohs(i32 %147)
  %149 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %150 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %149, i32 0, i32 0
  %151 = load %struct.udphdr*, %struct.udphdr** %16, align 8
  %152 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ntohs(i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @pr_debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32* %144, i32 %148, i32* %150, i32 %154, i32 %157)
  %159 = load i32, i32* @NF_DROP, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %139, %109, %26
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.udphdr*) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.sock* @nf_tproxy_get_sock_v4(%struct.net*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nf_tproxy_laddr4(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.sock* @nf_tproxy_handle_time_wait4(%struct.net*, %struct.sk_buff*, i32, i32, %struct.sock*) #1

declare dso_local i64 @nf_tproxy_sk_is_transparent(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @nf_tproxy_assign_sock(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
