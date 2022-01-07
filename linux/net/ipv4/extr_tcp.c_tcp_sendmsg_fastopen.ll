; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_sendmsg_fastopen.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_sendmsg_fastopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32 }
%struct.msghdr = type { i32, i32, %struct.sockaddr* }
%struct.sockaddr = type { i64 }
%struct.ubuf_info = type { i32 }
%struct.tcp_sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, %struct.ubuf_info*, %struct.msghdr* }
%struct.inet_sock = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TFO_CLIENT_ENABLE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32*, i64, %struct.ubuf_info*)* @tcp_sendmsg_fastopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_sendmsg_fastopen(%struct.sock* %0, %struct.msghdr* %1, i32* %2, i64 %3, %struct.ubuf_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ubuf_info*, align 8
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca %struct.inet_sock*, align 8
  %14 = alloca %struct.sockaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.msghdr* %1, %struct.msghdr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ubuf_info* %4, %struct.ubuf_info** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %17)
  store %struct.tcp_sock* %18, %struct.tcp_sock** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %13, align 8
  %21 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %21, i32 0, i32 2
  %23 = load %struct.sockaddr*, %struct.sockaddr** %22, align 8
  store %struct.sockaddr* %23, %struct.sockaddr** %14, align 8
  %24 = load %struct.sock*, %struct.sock** %7, align 8
  %25 = call %struct.TYPE_5__* @sock_net(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TFO_CLIENT_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %5
  %33 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %34 = icmp ne %struct.sockaddr* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %37 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 8
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_UNSPEC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %5
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %148

50:                                               ; preds = %41, %35, %32
  %51 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %52 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EALREADY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %148

58:                                               ; preds = %50
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %61)
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %58
  %74 = load i32, i32* @ENOBUFS, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %148

76:                                               ; preds = %58
  %77 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store %struct.msghdr* %77, %struct.msghdr** %81, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  %87 = load %struct.ubuf_info*, %struct.ubuf_info** %11, align 8
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store %struct.ubuf_info* %87, %struct.ubuf_info** %91, align 8
  %92 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %93 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %76
  %97 = load %struct.sock*, %struct.sock** %7, align 8
  %98 = call i32 @tcp_connect(%struct.sock* %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.sock*, %struct.sock** %7, align 8
  %103 = load i32, i32* @TCP_CLOSE, align 4
  %104 = call i32 @tcp_set_state(%struct.sock* %102, i32 %103)
  %105 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %106 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.sock*, %struct.sock** %7, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %96
  br label %110

110:                                              ; preds = %109, %76
  %111 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %112 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MSG_DONTWAIT, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @O_NONBLOCK, align 4
  br label %120

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  store i32 %121, i32* %16, align 4
  %122 = load %struct.sock*, %struct.sock** %7, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sockaddr*, %struct.sockaddr** %14, align 8
  %126 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %127 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @__inet_stream_connect(i32 %124, %struct.sockaddr* %125, i32 %128, i32 %129, i32 1)
  store i32 %130, i32* %15, align 4
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %132 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  br i1 %134, label %135, label %146

135:                                              ; preds = %120
  %136 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %137 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %142 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %143 = call i32 @tcp_free_fastopen_req(%struct.tcp_sock* %142)
  %144 = load %struct.inet_sock*, %struct.inet_sock** %13, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %135, %120
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %73, %55, %47
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tcp_connect(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @__inet_stream_connect(i32, %struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @tcp_free_fastopen_req(%struct.tcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
