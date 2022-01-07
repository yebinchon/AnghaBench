; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_build_and_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_build_and_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.sock = type { i64, i32, i32 }
%struct.ip_options_rcu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.inet_sock = type { i32 }
%struct.rtable = type { i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32, i64, i64, i32, i8*, i8*, i32, i32 }

@IP_DF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_build_and_send_pkt(%struct.sk_buff* %0, %struct.sock* %1, i8* %2, i8* %3, %struct.ip_options_rcu* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ip_options_rcu*, align 8
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.rtable*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.ip_options_rcu* %4, %struct.ip_options_rcu** %10, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %17)
  store %struct.rtable* %18, %struct.rtable** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call %struct.net* @sock_net(%struct.sock* %19)
  store %struct.net* %20, %struct.net** %13, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %23 = icmp ne %struct.ip_options_rcu* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %26 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i32 [ %28, %24 ], [ 0, %29 ]
  %32 = sext i32 %31 to i64
  %33 = add i64 56, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @skb_push(%struct.sk_buff* %21, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @skb_reset_network_header(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %38)
  store %struct.iphdr* %39, %struct.iphdr** %14, align 8
  %40 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %41 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %40, i32 0, i32 0
  store i32 4, i32* %41, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 1
  store i32 5, i32* %43, align 4
  %44 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %48 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %50 = load %struct.rtable*, %struct.rtable** %12, align 8
  %51 = getelementptr inbounds %struct.rtable, %struct.rtable* %50, i32 0, i32 0
  %52 = call i32 @ip_select_ttl(%struct.inet_sock* %49, i32* %51)
  %53 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %54 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %56 = icmp ne %struct.ip_options_rcu* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %30
  %58 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %59 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %65 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  br label %70

68:                                               ; preds = %57, %30
  %69 = load i8*, i8** %9, align 8
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi i8* [ %67, %63 ], [ %69, %68 ]
  %72 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %73 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %72, i32 0, i32 6
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.sock*, %struct.sock** %7, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %81 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %7, align 8
  %83 = load %struct.rtable*, %struct.rtable** %12, align 8
  %84 = getelementptr inbounds %struct.rtable, %struct.rtable* %83, i32 0, i32 0
  %85 = call i64 @ip_dont_fragment(%struct.sock* %82, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %70
  %88 = load i32, i32* @IP_DF, align 4
  %89 = call i64 @htons(i32 %88)
  %90 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %91 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %93 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  br label %100

94:                                               ; preds = %70
  %95 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %96 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.net*, %struct.net** %13, align 8
  %98 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %99 = call i32 @__ip_select_ident(%struct.net* %97, %struct.iphdr* %98, i32 1)
  br label %100

100:                                              ; preds = %94, %87
  %101 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %102 = icmp ne %struct.ip_options_rcu* %101, null
  br i1 %102, label %103, label %125

103:                                              ; preds = %100
  %104 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %105 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %111 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 2
  %115 = load %struct.iphdr*, %struct.iphdr** %14, align 8
  %116 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load %struct.ip_options_rcu*, %struct.ip_options_rcu** %10, align 8
  %121 = getelementptr inbounds %struct.ip_options_rcu, %struct.ip_options_rcu* %120, i32 0, i32 0
  %122 = load i8*, i8** %9, align 8
  %123 = load %struct.rtable*, %struct.rtable** %12, align 8
  %124 = call i32 @ip_options_build(%struct.sk_buff* %119, %struct.TYPE_2__* %121, i8* %122, %struct.rtable* %123, i32 0)
  br label %125

125:                                              ; preds = %109, %103, %100
  %126 = load %struct.sock*, %struct.sock** %7, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %125
  %136 = load %struct.sock*, %struct.sock** %7, align 8
  %137 = getelementptr inbounds %struct.sock, %struct.sock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %135, %125
  %142 = load %struct.net*, %struct.net** %13, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %144 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = call i32 @ip_local_out(%struct.net* %142, i32 %145, %struct.sk_buff* %146)
  ret i32 %147
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip_select_ttl(%struct.inet_sock*, i32*) #1

declare dso_local i64 @ip_dont_fragment(%struct.sock*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @__ip_select_ident(%struct.net*, %struct.iphdr*, i32) #1

declare dso_local i32 @ip_options_build(%struct.sk_buff*, %struct.TYPE_2__*, i8*, %struct.rtable*, i32) #1

declare dso_local i32 @ip_local_out(%struct.net*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
