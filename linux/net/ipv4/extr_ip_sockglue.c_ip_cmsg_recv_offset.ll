; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_offset.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_cmsg_recv_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_sock = type { i32 }

@IP_CMSG_PKTINFO = common dso_local global i32 0, align 4
@IP_CMSG_TTL = common dso_local global i32 0, align 4
@IP_CMSG_TOS = common dso_local global i32 0, align 4
@IP_CMSG_RECVOPTS = common dso_local global i32 0, align 4
@IP_CMSG_RETOPTS = common dso_local global i32 0, align 4
@IP_CMSG_PASSSEC = common dso_local global i32 0, align 4
@IP_CMSG_ORIGDSTADDR = common dso_local global i32 0, align 4
@IP_CMSG_CHECKSUM = common dso_local global i32 0, align 4
@IP_CMSG_RECVFRAGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_cmsg_recv_offset(%struct.msghdr* %0, %struct.sock* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sock*, %struct.sock** %7, align 8
  %14 = call %struct.inet_sock* @inet_sk(%struct.sock* %13)
  store %struct.inet_sock* %14, %struct.inet_sock** %11, align 8
  %15 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %16 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @IP_CMSG_PKTINFO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i32 @ip_cmsg_recv_pktinfo(%struct.msghdr* %23, %struct.sk_buff* %24)
  %26 = load i32, i32* @IP_CMSG_PKTINFO, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %158

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IP_CMSG_TTL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = call i32 @ip_cmsg_recv_ttl(%struct.msghdr* %40, %struct.sk_buff* %41)
  %43 = load i32, i32* @IP_CMSG_TTL, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %12, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %158

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @IP_CMSG_TOS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call i32 @ip_cmsg_recv_tos(%struct.msghdr* %57, %struct.sk_buff* %58)
  %60 = load i32, i32* @IP_CMSG_TOS, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %158

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @IP_CMSG_RECVOPTS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call i32 @ip_cmsg_recv_opts(%struct.msghdr* %74, %struct.sk_buff* %75)
  %77 = load i32, i32* @IP_CMSG_RECVOPTS, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %158

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %68
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @IP_CMSG_RETOPTS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load %struct.sock*, %struct.sock** %7, align 8
  %92 = call i32 @sock_net(%struct.sock* %91)
  %93 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call i32 @ip_cmsg_recv_retopts(i32 %92, %struct.msghdr* %93, %struct.sk_buff* %94)
  %96 = load i32, i32* @IP_CMSG_RETOPTS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %12, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %158

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @IP_CMSG_PASSSEC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %104
  %110 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = call i32 @ip_cmsg_recv_security(%struct.msghdr* %110, %struct.sk_buff* %111)
  %113 = load i32, i32* @IP_CMSG_PASSSEC, align 4
  %114 = xor i32 %113, -1
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, %114
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %109
  br label %158

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %104
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @IP_CMSG_ORIGDSTADDR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %129 = call i32 @ip_cmsg_recv_dstaddr(%struct.msghdr* %127, %struct.sk_buff* %128)
  %130 = load i32, i32* @IP_CMSG_ORIGDSTADDR, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %126
  br label %158

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %121
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @IP_CMSG_CHECKSUM, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @ip_cmsg_recv_checksum(%struct.msghdr* %144, %struct.sk_buff* %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %138
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @IP_CMSG_RECVFRAGSIZE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %157 = call i32 @ip_cmsg_recv_fragsize(%struct.msghdr* %155, %struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %32, %49, %66, %83, %102, %119, %136, %154, %149
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @ip_cmsg_recv_pktinfo(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_ttl(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_tos(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_opts(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_retopts(i32, %struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ip_cmsg_recv_security(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_dstaddr(%struct.msghdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip_cmsg_recv_checksum(%struct.msghdr*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ip_cmsg_recv_fragsize(%struct.msghdr*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
