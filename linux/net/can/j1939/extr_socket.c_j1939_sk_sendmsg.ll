; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i64, %struct.sockaddr_can* }
%struct.sockaddr_can = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.j1939_sock = type { i32, i32, %struct.TYPE_6__, %struct.j1939_priv* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.j1939_priv = type { i32 }

@J1939_SOCK_BOUND = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4
@J1939_NO_ADDR = common dso_local global i64 0, align 8
@J1939_MIN_NAMELEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AF_CAN = common dso_local global i64 0, align 8
@SOCK_BROADCAST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @j1939_sk_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.j1939_sock*, align 8
  %10 = alloca %struct.j1939_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_can*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call %struct.j1939_sock* @j1939_sk(%struct.sock* %17)
  store %struct.j1939_sock* %18, %struct.j1939_sock** %9, align 8
  %19 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %20 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %19, i32 0, i32 3
  %21 = load %struct.j1939_priv*, %struct.j1939_priv** %20, align 8
  store %struct.j1939_priv* %21, %struct.j1939_priv** %10, align 8
  %22 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %23 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @J1939_SOCK_BOUND, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EBADFD, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %162

31:                                               ; preds = %3
  %32 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %33 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %36 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %31
  %41 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %42 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @J1939_NO_ADDR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @EBADFD, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %162

50:                                               ; preds = %40, %31
  %51 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %51, i32 0, i32 1
  %53 = load %struct.sockaddr_can*, %struct.sockaddr_can** %52, align 8
  %54 = icmp ne %struct.sockaddr_can* %53, null
  br i1 %54, label %55, label %133

55:                                               ; preds = %50
  %56 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %57 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %56, i32 0, i32 1
  %58 = load %struct.sockaddr_can*, %struct.sockaddr_can** %57, align 8
  store %struct.sockaddr_can* %58, %struct.sockaddr_can** %13, align 8
  %59 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %60 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @J1939_MIN_NAMELEN, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %162

67:                                               ; preds = %55
  %68 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %69 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AF_CAN, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %162

76:                                               ; preds = %67
  %77 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %78 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %83 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @EBADFD, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %162

90:                                               ; preds = %81, %76
  %91 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %92 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @j1939_pgn_is_valid(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %100 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @j1939_pgn_is_clean_pdu(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %162

109:                                              ; preds = %98, %90
  %110 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %111 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = load %struct.sockaddr_can*, %struct.sockaddr_can** %13, align 8
  %118 = getelementptr inbounds %struct.sockaddr_can, %struct.sockaddr_can* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @J1939_NO_ADDR, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load %struct.sock*, %struct.sock** %8, align 8
  %126 = load i32, i32* @SOCK_BROADCAST, align 4
  %127 = call i32 @sock_flag(%struct.sock* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @EACCES, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %4, align 4
  br label %162

132:                                              ; preds = %124, %116, %109
  br label %155

133:                                              ; preds = %50
  %134 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %135 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %133
  %140 = load %struct.j1939_sock*, %struct.j1939_sock** %9, align 8
  %141 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @J1939_NO_ADDR, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.sock*, %struct.sock** %8, align 8
  %148 = load i32, i32* @SOCK_BROADCAST, align 4
  %149 = call i32 @sock_flag(%struct.sock* %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* @EACCES, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %162

154:                                              ; preds = %146, %139, %133
  br label %155

155:                                              ; preds = %154, %132
  %156 = load %struct.j1939_priv*, %struct.j1939_priv** %10, align 8
  %157 = load %struct.sock*, %struct.sock** %8, align 8
  %158 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %159 = load i64, i64* %7, align 8
  %160 = call i32 @j1939_sk_send_loop(%struct.j1939_priv* %156, %struct.sock* %157, %struct.msghdr* %158, i64 %159)
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %4, align 4
  br label %162

162:                                              ; preds = %155, %151, %129, %106, %87, %73, %64, %47, %28
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.j1939_sock* @j1939_sk(%struct.sock*) #1

declare dso_local i64 @j1939_pgn_is_valid(i32) #1

declare dso_local i32 @j1939_pgn_is_clean_pdu(i32) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @j1939_sk_send_loop(%struct.j1939_priv*, %struct.sock*, %struct.msghdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
