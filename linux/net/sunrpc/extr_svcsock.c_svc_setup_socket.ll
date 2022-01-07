; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_setup_socket.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_setup_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_sock = type { %struct.TYPE_3__, %struct.sock*, i32, i32, i32, %struct.socket* }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { %struct.svc_sock*, i32, i32, i32, i32, i32 }
%struct.svc_serv = type { i32 }
%struct.socket = type { i64, %struct.sock* }
%struct.TYPE_4__ = type { i32 }

@SVC_SOCK_ANONYMOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"svc: svc_setup_socket %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"svc: svc_setup_socket created %p (inet %p), listen %d close %d\0A\00", align 1
@XPT_LISTENER = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_sock* (%struct.svc_serv*, %struct.socket*, i32)* @svc_setup_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_sock* @svc_setup_socket(%struct.svc_serv* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.svc_sock*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_sock*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SVC_SOCK_ANONYMOUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.socket* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.svc_sock* @kzalloc(i32 40, i32 %20)
  store %struct.svc_sock* %21, %struct.svc_sock** %8, align 8
  %22 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %23 = icmp ne %struct.svc_sock* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.svc_sock* @ERR_PTR(i32 %26)
  store %struct.svc_sock* %27, %struct.svc_sock** %4, align 8
  br label %116

28:                                               ; preds = %3
  %29 = load %struct.socket*, %struct.socket** %6, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  store %struct.sock* %31, %struct.sock** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 1
  %38 = load %struct.sock*, %struct.sock** %37, align 8
  %39 = call i32 @sock_net(%struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sock*, %struct.sock** %9, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sock*, %struct.sock** %9, align 8
  %47 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = call i32 @svc_register(%struct.svc_serv* %35, i32 %39, i32 %42, i32 %45, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %34, %28
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %57 = call i32 @kfree(%struct.svc_sock* %56)
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.svc_sock* @ERR_PTR(i32 %58)
  store %struct.svc_sock* %59, %struct.svc_sock** %4, align 8
  br label %116

60:                                               ; preds = %52
  %61 = load %struct.socket*, %struct.socket** %6, align 8
  %62 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %63 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %62, i32 0, i32 5
  store %struct.socket* %61, %struct.socket** %63, align 8
  %64 = load %struct.sock*, %struct.sock** %9, align 8
  %65 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %66 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %65, i32 0, i32 1
  store %struct.sock* %64, %struct.sock** %66, align 8
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %71 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.sock*, %struct.sock** %9, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %76 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %81 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = call i32 (...) @wmb()
  %83 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %84 = load %struct.sock*, %struct.sock** %9, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  store %struct.svc_sock* %83, %struct.svc_sock** %85, align 8
  %86 = load %struct.socket*, %struct.socket** %6, align 8
  %87 = getelementptr inbounds %struct.socket, %struct.socket* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SOCK_DGRAM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %60
  %92 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %93 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %94 = call i32 @svc_udp_init(%struct.svc_sock* %92, %struct.svc_serv* %93)
  br label %99

95:                                               ; preds = %60
  %96 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %97 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %98 = call i32 @svc_tcp_init(%struct.svc_sock* %96, %struct.svc_serv* %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %101 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %102 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %101, i32 0, i32 1
  %103 = load %struct.sock*, %struct.sock** %102, align 8
  %104 = load i32, i32* @XPT_LISTENER, align 4
  %105 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %106 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = call i32 @test_bit(i32 %104, i32* %107)
  %109 = load i32, i32* @XPT_CLOSE, align 4
  %110 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  %111 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = call i32 @test_bit(i32 %109, i32* %112)
  %114 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), %struct.svc_sock* %100, %struct.sock* %103, i32 %108, i32 %113)
  %115 = load %struct.svc_sock*, %struct.svc_sock** %8, align 8
  store %struct.svc_sock* %115, %struct.svc_sock** %4, align 8
  br label %116

116:                                              ; preds = %99, %55, %24
  %117 = load %struct.svc_sock*, %struct.svc_sock** %4, align 8
  ret %struct.svc_sock* %117
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.svc_sock* @kzalloc(i32, i32) #1

declare dso_local %struct.svc_sock* @ERR_PTR(i32) #1

declare dso_local i32 @svc_register(%struct.svc_serv*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.svc_sock*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @svc_udp_init(%struct.svc_sock*, %struct.svc_serv*) #1

declare dso_local i32 @svc_tcp_init(%struct.svc_sock*, %struct.svc_serv*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
