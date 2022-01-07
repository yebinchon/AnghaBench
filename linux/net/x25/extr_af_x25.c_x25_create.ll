; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32* }
%struct.sock = type { i32, i32 }
%struct.x25_sock = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i8*, i8*, i8*, i8* }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@x25_proto_ops = common dso_local global i32 0, align 4
@x25_backlog_rcv = common dso_local global i32 0, align 4
@sysctl_x25_call_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_reset_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_clear_request_timeout = common dso_local global i32 0, align 4
@sysctl_x25_ack_holdback_timeout = common dso_local global i32 0, align 4
@X25_STATE_0 = common dso_local global i32 0, align 4
@X25_ACCPT_APPRV_FLAG = common dso_local global i32 0, align 4
@X25_DEFAULT_WINDOW_SIZE = common dso_local global i8* null, align 8
@X25_DEFAULT_PACKET_SIZE = common dso_local global i8* null, align 8
@X25_DEFAULT_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @x25_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.x25_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @EAFNOSUPPORT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %5, align 8
  %15 = call i32 @net_eq(%struct.net* %14, i32* @init_net)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %117

18:                                               ; preds = %4
  %19 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.socket*, %struct.socket** %6, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCK_SEQPACKET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %117

27:                                               ; preds = %18
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %117

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOBUFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.net*, %struct.net** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.sock* @x25_alloc_socket(%struct.net* %36, i32 %37)
  store %struct.sock* %38, %struct.sock** %9, align 8
  %39 = icmp eq %struct.sock* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %117

41:                                               ; preds = %33
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = call %struct.x25_sock* @x25_sk(%struct.sock* %42)
  store %struct.x25_sock* %43, %struct.x25_sock** %10, align 8
  %44 = load %struct.socket*, %struct.socket** %6, align 8
  %45 = load %struct.sock*, %struct.sock** %9, align 8
  %46 = call i32 @sock_init_data(%struct.socket* %44, %struct.sock* %45)
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = call i32 @x25_init_timers(%struct.sock* %47)
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 1
  store i32* @x25_proto_ops, i32** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @x25_backlog_rcv, align 4
  %55 = load %struct.sock*, %struct.sock** %9, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @sysctl_x25_call_request_timeout, align 4
  %58 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %59 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @sysctl_x25_reset_request_timeout, align 4
  %61 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %62 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @sysctl_x25_clear_request_timeout, align 4
  %64 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %65 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @sysctl_x25_ack_holdback_timeout, align 4
  %67 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %68 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @X25_STATE_0, align 4
  %70 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %71 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %73 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @X25_ACCPT_APPRV_FLAG, align 4
  %75 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %76 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %75, i32 0, i32 2
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load i8*, i8** @X25_DEFAULT_WINDOW_SIZE, align 8
  %79 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %80 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  store i8* %78, i8** %81, align 8
  %82 = load i8*, i8** @X25_DEFAULT_WINDOW_SIZE, align 8
  %83 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %84 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  store i8* %82, i8** %85, align 8
  %86 = load i8*, i8** @X25_DEFAULT_PACKET_SIZE, align 8
  %87 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %88 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i8* %86, i8** %89, align 8
  %90 = load i8*, i8** @X25_DEFAULT_PACKET_SIZE, align 8
  %91 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %92 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %95 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @X25_DEFAULT_REVERSE, align 4
  %98 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %99 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %102 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %105 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %108 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @memset(i32 %110, i8 signext 0, i32 4)
  %112 = load %struct.x25_sock*, %struct.x25_sock** %10, align 8
  %113 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memset(i32 %115, i8 signext 0, i32 4)
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %41, %40, %32, %26, %17
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local %struct.sock* @x25_alloc_socket(%struct.net*, i32) #1

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @x25_init_timers(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
