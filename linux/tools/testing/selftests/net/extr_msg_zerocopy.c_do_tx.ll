; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_tx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i64, %struct.sockaddr_ll*, i8*, i32, i32 }
%struct.ethhdr = type { i8*, %struct.sockaddr_ll*, %struct.sockaddr_ll* }
%struct.iovec = type { i32, %struct.ethhdr*, i32 }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr_ll*, i32 }
%union.anon = type { %struct.ipv6hdr }
%struct.ipv6hdr = type { i32 }
%struct.iphdr = type { i32 }

@PF_PACKET = common dso_local global i32 0, align 4
@cfg_family = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AF_PACKET = common dso_local global i32 0, align 4
@cfg_ifindex = common dso_local global i32 0, align 4
@IPPROTO_RAW = common dso_local global i32 0, align 4
@cfg_payload_len = common dso_local global i32 0, align 4
@PF_RDS = common dso_local global i32 0, align 4
@cfg_dst_addr = common dso_local global %struct.sockaddr_ll zeroinitializer, align 8
@AF_INET = common dso_local global i64 0, align 8
@payload = common dso_local global %struct.ethhdr* null, align 8
@cfg_runtime_ms = common dso_local global i64 0, align 8
@cfg_cork = common dso_local global i64 0, align 8
@cfg_zerocopy = common dso_local global i64 0, align 8
@POLLOUT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"tx=%lu (%lu MB) txc=%lu zc=%c\0A\00", align 1
@packets = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@completions = common dso_local global i32 0, align 4
@zerocopied = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @do_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x %struct.iovec], align 16
  %8 = alloca %struct.sockaddr_ll, align 8
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca %struct.ethhdr, align 8
  %11 = alloca %union.anon, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = bitcast [3 x %struct.iovec]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 72, i1 false)
  %16 = bitcast %struct.msghdr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @do_setup_tx(i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PF_PACKET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %3
  %25 = load i64, i64* @cfg_family, align 8
  %26 = load i64, i64* @PF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ETH_P_IP, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @ETH_P_IPV6, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @SOCK_RAW, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 2
  %39 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %38, align 8
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @memset(%struct.sockaddr_ll* %39, i32 6, i32 %40)
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 1
  %43 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %42, align 8
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memset(%struct.sockaddr_ll* %43, i32 2, i32 %44)
  %46 = load i32, i32* %14, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %10, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 0, i32 1
  store %struct.ethhdr* %10, %struct.ethhdr** %50, align 8
  %51 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  store i32 24, i32* %52, align 16
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %37, %32
  %57 = call i32 @memset(%struct.sockaddr_ll* %8, i32 0, i32 40)
  %58 = load i32, i32* @AF_PACKET, align 4
  %59 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 5
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @cfg_ifindex, align 4
  %61 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i8* @htons(i32 %62)
  %64 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 2
  %68 = load %struct.sockaddr_ll*, %struct.sockaddr_ll** %67, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memset(%struct.sockaddr_ll* %68, i32 6, i32 %69)
  %71 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store %struct.sockaddr_ll* %8, %struct.sockaddr_ll** %71, align 8
  %72 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 40, i32* %72, align 4
  br label %73

73:                                               ; preds = %56, %3
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @PF_PACKET, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @IPPROTO_RAW, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %105

81:                                               ; preds = %77, %73
  %82 = load i64, i64* @cfg_family, align 8
  %83 = load i64, i64* @PF_INET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = bitcast %union.anon* %11 to %struct.iphdr*
  %87 = load i32, i32* @cfg_payload_len, align 4
  %88 = call i32 @setup_iph(%struct.iphdr* %86, i32 %87)
  %89 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %97

91:                                               ; preds = %81
  %92 = bitcast %union.anon* %11 to %struct.ipv6hdr*
  %93 = load i32, i32* @cfg_payload_len, align 4
  %94 = call i32 @setup_ip6h(%struct.ipv6hdr* %92, i32 %93)
  %95 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %96 = getelementptr inbounds %struct.iovec, %struct.iovec* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %85
  %98 = bitcast %union.anon* %11 to i8*
  %99 = bitcast i8* %98 to %struct.ethhdr*
  %100 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 1
  %101 = getelementptr inbounds %struct.iovec, %struct.iovec* %100, i32 0, i32 1
  store %struct.ethhdr* %99, %struct.ethhdr** %101, align 8
  %102 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %97, %77
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @PF_RDS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3
  store %struct.sockaddr_ll* @cfg_dst_addr, %struct.sockaddr_ll** %110, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.sockaddr_ll, %struct.sockaddr_ll* @cfg_dst_addr, i32 0, i32 1), align 8
  %112 = load i64, i64* @AF_INET, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i64 4, i64 4
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %105
  %119 = load %struct.ethhdr*, %struct.ethhdr** @payload, align 8
  %120 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 2
  %121 = getelementptr inbounds %struct.iovec, %struct.iovec* %120, i32 0, i32 1
  store %struct.ethhdr* %119, %struct.ethhdr** %121, align 8
  %122 = load i32, i32* @cfg_payload_len, align 4
  %123 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 2
  %124 = getelementptr inbounds %struct.iovec, %struct.iovec* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 16
  %125 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 3, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2
  store %struct.iovec* %132, %struct.iovec** %133, align 8
  %134 = call i64 (...) @gettimeofday_ms()
  %135 = load i64, i64* @cfg_runtime_ms, align 8
  %136 = add nsw i64 %134, %135
  store i64 %136, i64* %12, align 8
  br label %137

137:                                              ; preds = %164, %118
  %138 = load i64, i64* @cfg_cork, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @do_sendmsg_corked(i32 %141, %struct.msghdr* %9)
  br label %148

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = load i64, i64* @cfg_zerocopy, align 8
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @do_sendmsg(i32 %144, %struct.msghdr* %9, i64 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  br label %149

149:                                              ; preds = %162, %148
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @POLLOUT, align 4
  %152 = call i32 @do_poll(i32 %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = load i64, i64* @cfg_zerocopy, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @do_recv_completions(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %155
  br label %149

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163
  %165 = call i64 (...) @gettimeofday_ms()
  %166 = load i64, i64* %12, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %137, label %168

168:                                              ; preds = %164
  %169 = load i64, i64* @cfg_zerocopy, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @do_recv_remaining_completions(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %13, align 4
  %177 = call i64 @close(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32, i32* @errno, align 4
  %181 = call i32 @error(i32 1, i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32, i32* @stderr, align 4
  %184 = load i32, i32* @packets, align 4
  %185 = load i32, i32* @bytes, align 4
  %186 = ashr i32 %185, 20
  %187 = load i32, i32* @completions, align 4
  %188 = load i32, i32* @zerocopied, align 4
  %189 = icmp eq i32 %188, 1
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i32 121, i32 110
  %192 = trunc i32 %191 to i8
  %193 = call i32 @fprintf(i32 %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %184, i32 %186, i32 %187, i8 signext %192)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @do_setup_tx(i32, i32, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_ll*, i32, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @setup_iph(%struct.iphdr*, i32) #2

declare dso_local i32 @setup_ip6h(%struct.ipv6hdr*, i32) #2

declare dso_local i64 @gettimeofday_ms(...) #2

declare dso_local i32 @do_sendmsg_corked(i32, %struct.msghdr*) #2

declare dso_local i32 @do_sendmsg(i32, %struct.msghdr*, i64, i32) #2

declare dso_local i32 @do_poll(i32, i32) #2

declare dso_local i32 @do_recv_completions(i32, i32) #2

declare dso_local i32 @do_recv_remaining_completions(i32, i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @error(i32, i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
