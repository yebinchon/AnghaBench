; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_try_fastopen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_try_fastopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_fastopen_cookie = type { i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.request_sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@__const.tcp_try_fastopen.valid_foc = private unnamed_addr constant %struct.tcp_fastopen_cookie { i32 -1, i32 0 }, align 4
@LINUX_MIB_TCPFASTOPENCOOKIEREQD = common dso_local global i32 0, align 4
@TFO_SERVER_ENABLE = common dso_local global i32 0, align 4
@TFO_SERVER_COOKIE_NOT_REQD = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFASTOPENPASSIVEFAIL = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFASTOPENPASSIVEALTKEY = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFASTOPENPASSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @tcp_try_fastopen(%struct.sock* %0, %struct.sk_buff* %1, %struct.request_sock* %2, %struct.tcp_fastopen_cookie* %3, %struct.dst_entry* %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.request_sock*, align 8
  %10 = alloca %struct.tcp_fastopen_cookie*, align 8
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcp_fastopen_cookie, align 4
  %15 = alloca %struct.sock*, align 8
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.request_sock* %2, %struct.request_sock** %9, align 8
  store %struct.tcp_fastopen_cookie* %3, %struct.tcp_fastopen_cookie** %10, align 8
  store %struct.dst_entry* %4, %struct.dst_entry** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = icmp ne i64 %20, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sock*, %struct.sock** %7, align 8
  %29 = call %struct.TYPE_6__* @sock_net(%struct.sock* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = bitcast %struct.tcp_fastopen_cookie* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.tcp_fastopen_cookie* @__const.tcp_try_fastopen.valid_foc to i8*), i64 8, i1 false)
  store i32 0, i32* %16, align 4
  %34 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %35 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %5
  %39 = load %struct.sock*, %struct.sock** %7, align 8
  %40 = call %struct.TYPE_6__* @sock_net(%struct.sock* %39)
  %41 = load i32, i32* @LINUX_MIB_TCPFASTOPENCOOKIEREQD, align 4
  %42 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %5
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @TFO_SERVER_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %53 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51, %48
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = call i64 @tcp_fastopen_queue_check(%struct.sock* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %51, %43
  %61 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %62 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %61, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %148

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %69 = load i32, i32* @TFO_SERVER_COOKIE_NOT_REQD, align 4
  %70 = call i64 @tcp_fastopen_no_cookie(%struct.sock* %67, %struct.dst_entry* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %102

73:                                               ; preds = %66, %63
  %74 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %75 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.sock*, %struct.sock** %7, align 8
  %80 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @tcp_fastopen_cookie_gen(%struct.sock* %79, %struct.request_sock* %80, %struct.sk_buff* %81, %struct.tcp_fastopen_cookie* %14)
  br label %140

83:                                               ; preds = %73
  %84 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %85 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %139

88:                                               ; preds = %83
  %89 = load %struct.sock*, %struct.sock** %7, align 8
  %90 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %93 = call i32 @tcp_fastopen_cookie_gen_check(%struct.sock* %89, %struct.request_sock* %90, %struct.sk_buff* %91, %struct.tcp_fastopen_cookie* %92, %struct.tcp_fastopen_cookie* %14)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %88
  %97 = load %struct.sock*, %struct.sock** %7, align 8
  %98 = call %struct.TYPE_6__* @sock_net(%struct.sock* %97)
  %99 = load i32, i32* @LINUX_MIB_TCPFASTOPENPASSIVEFAIL, align 4
  %100 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %98, i32 %99)
  br label %138

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.sock*, %struct.sock** %7, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = load %struct.request_sock*, %struct.request_sock** %9, align 8
  %106 = call %struct.sock* @tcp_fastopen_create_child(%struct.sock* %103, %struct.sk_buff* %104, %struct.request_sock* %105)
  store %struct.sock* %106, %struct.sock** %15, align 8
  %107 = load %struct.sock*, %struct.sock** %15, align 8
  %108 = icmp ne %struct.sock* %107, null
  br i1 %108, label %109, label %133

109:                                              ; preds = %102
  %110 = load i32, i32* %16, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %114 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %14, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %118 = bitcast %struct.tcp_fastopen_cookie* %117 to i8*
  %119 = bitcast %struct.tcp_fastopen_cookie* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  %120 = load %struct.sock*, %struct.sock** %7, align 8
  %121 = call %struct.TYPE_6__* @sock_net(%struct.sock* %120)
  %122 = load i32, i32* @LINUX_MIB_TCPFASTOPENPASSIVEALTKEY, align 4
  %123 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %121, i32 %122)
  br label %127

124:                                              ; preds = %109
  %125 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %126 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %125, i32 0, i32 0
  store i32 -1, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %112
  %128 = load %struct.sock*, %struct.sock** %7, align 8
  %129 = call %struct.TYPE_6__* @sock_net(%struct.sock* %128)
  %130 = load i32, i32* @LINUX_MIB_TCPFASTOPENPASSIVE, align 4
  %131 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %129, i32 %130)
  %132 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %132, %struct.sock** %6, align 8
  br label %148

133:                                              ; preds = %102
  %134 = load %struct.sock*, %struct.sock** %7, align 8
  %135 = call %struct.TYPE_6__* @sock_net(%struct.sock* %134)
  %136 = load i32, i32* @LINUX_MIB_TCPFASTOPENPASSIVEFAIL, align 4
  %137 = call i32 @NET_INC_STATS(%struct.TYPE_6__* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %96
  br label %139

139:                                              ; preds = %138, %83
  br label %140

140:                                              ; preds = %139, %78
  %141 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %142 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.tcp_fastopen_cookie, %struct.tcp_fastopen_cookie* %14, i32 0, i32 1
  store i32 %143, i32* %144, align 4
  %145 = load %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie** %10, align 8
  %146 = bitcast %struct.tcp_fastopen_cookie* %145 to i8*
  %147 = bitcast %struct.tcp_fastopen_cookie* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 8, i1 false)
  store %struct.sock* null, %struct.sock** %6, align 8
  br label %148

148:                                              ; preds = %140, %127, %60
  %149 = load %struct.sock*, %struct.sock** %6, align 8
  ret %struct.sock* %149
}

declare dso_local %struct.TYPE_7__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @sock_net(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NET_INC_STATS(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @tcp_fastopen_queue_check(%struct.sock*) #1

declare dso_local i64 @tcp_fastopen_no_cookie(%struct.sock*, %struct.dst_entry*, i32) #1

declare dso_local i32 @tcp_fastopen_cookie_gen(%struct.sock*, %struct.request_sock*, %struct.sk_buff*, %struct.tcp_fastopen_cookie*) #1

declare dso_local i32 @tcp_fastopen_cookie_gen_check(%struct.sock*, %struct.request_sock*, %struct.sk_buff*, %struct.tcp_fastopen_cookie*, %struct.tcp_fastopen_cookie*) #1

declare dso_local %struct.sock* @tcp_fastopen_create_child(%struct.sock*, %struct.sk_buff*, %struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
