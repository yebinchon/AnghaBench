; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_connect.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.tipc_sock = type { i64, i32, i64 }
%struct.sockaddr_tipc = type { i64, i64 }
%struct.msghdr = type { i32, i32, %struct.sockaddr*, i32* }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i64 0, align 8
@TIPC_SERVICE_RANGE = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @tipc_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.tipc_sock*, align 8
  %12 = alloca %struct.sockaddr_tipc*, align 8
  %13 = alloca %struct.msghdr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sock*, %struct.sock** %10, align 8
  %21 = call %struct.tipc_sock* @tipc_sk(%struct.sock* %20)
  store %struct.tipc_sock* %21, %struct.tipc_sock** %11, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_tipc*
  store %struct.sockaddr_tipc* %23, %struct.sockaddr_tipc** %12, align 8
  %24 = bitcast %struct.msghdr* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @O_NONBLOCK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %34

30:                                               ; preds = %4
  %31 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %32 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i64 [ 0, %29 ], [ %33, %30 ]
  store i64 %35, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 16
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %153

42:                                               ; preds = %34
  %43 = load %struct.sock*, %struct.sock** %10, align 8
  %44 = call i32 @lock_sock(%struct.sock* %43)
  %45 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %46 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %16, align 4
  br label %149

52:                                               ; preds = %42
  %53 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %54 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @AF_UNSPEC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %60 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %59, i32 0, i32 1
  %61 = call i32 @memset(i32* %60, i32 0, i32 16)
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = call i64 @tipc_sk_type_connectionless(%struct.sock* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %65, %58
  br label %149

69:                                               ; preds = %52
  %70 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %71 = call i32 @tipc_sockaddr_is_sane(%struct.sockaddr_tipc* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  br label %149

76:                                               ; preds = %69
  %77 = load %struct.sock*, %struct.sock** %10, align 8
  %78 = call i64 @tipc_sk_type_connectionless(%struct.sock* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.tipc_sock*, %struct.tipc_sock** %11, align 8
  %82 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %81, i32 0, i32 1
  %83 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @memcpy(i32* %82, %struct.sockaddr* %83, i32 %84)
  br label %149

86:                                               ; preds = %76
  %87 = load %struct.sockaddr_tipc*, %struct.sockaddr_tipc** %12, align 8
  %88 = getelementptr inbounds %struct.sockaddr_tipc, %struct.sockaddr_tipc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TIPC_SERVICE_RANGE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %149

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.sock*, %struct.sock** %10, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %15, align 4
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %145 [
    i32 128, label %103
    i32 130, label %127
    i32 129, label %142
  ]

103:                                              ; preds = %96
  %104 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %105 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 2
  store %struct.sockaddr* %104, %struct.sockaddr** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @MSG_DONTWAIT, align 4
  %112 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %13, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.socket*, %struct.socket** %6, align 8
  %115 = call i32 @__tipc_sendmsg(%struct.socket* %114, %struct.msghdr* %13, i32 0)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* @EWOULDBLOCK, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp ne i32 %119, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %149

124:                                              ; preds = %118, %113
  %125 = load i32, i32* @EINPROGRESS, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %96, %124
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = icmp eq i32 %131, 130
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* @EALREADY, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %149

137:                                              ; preds = %127
  %138 = load i64, i64* %14, align 8
  %139 = call i64 @msecs_to_jiffies(i64 %138)
  store i64 %139, i64* %14, align 8
  %140 = load %struct.socket*, %struct.socket** %6, align 8
  %141 = call i32 @tipc_wait_for_connect(%struct.socket* %140, i64* %14)
  store i32 %141, i32* %16, align 4
  br label %148

142:                                              ; preds = %96
  %143 = load i32, i32* @EISCONN, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %16, align 4
  br label %148

145:                                              ; preds = %96
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %145, %142, %137
  br label %149

149:                                              ; preds = %148, %136, %123, %92, %80, %73, %68, %49
  %150 = load %struct.sock*, %struct.sock** %10, align 8
  %151 = call i32 @release_sock(%struct.sock* %150)
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %149, %39
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.tipc_sock* @tipc_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @tipc_sk_type_connectionless(%struct.sock*) #1

declare dso_local i32 @tipc_sockaddr_is_sane(%struct.sockaddr_tipc*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

declare dso_local i32 @__tipc_sendmsg(%struct.socket*, %struct.msghdr*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @tipc_wait_for_connect(%struct.socket*, i64*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
