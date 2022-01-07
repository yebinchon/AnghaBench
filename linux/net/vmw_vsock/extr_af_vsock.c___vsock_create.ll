; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c___vsock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.vsock_sock*, %struct.vsock_sock*)* }
%struct.vsock_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32*, i32, i32, i32, i32 }
%struct.net = type { i32 }
%struct.socket = type { i32 }
%struct.sock = type { i16, i32, i32 }

@AF_VSOCK = common dso_local global i32 0, align 4
@vsock_proto = common dso_local global i32 0, align 4
@VMADDR_CID_ANY = common dso_local global i32 0, align 4
@VMADDR_PORT_ANY = common dso_local global i32 0, align 4
@vsock_sk_destruct = common dso_local global i32 0, align 4
@vsock_queue_rcv_skb = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@vsock_connect_timeout = common dso_local global i32 0, align 4
@vsock_pending_work = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@VSOCK_DEFAULT_CONNECT_TIMEOUT = common dso_local global i32 0, align 4
@transport = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @__vsock_create(%struct.net* %0, %struct.socket* %1, %struct.sock* %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.sock*, align 8
  %15 = alloca %struct.vsock_sock*, align 8
  %16 = alloca %struct.vsock_sock*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.socket* %1, %struct.socket** %9, align 8
  store %struct.sock* %2, %struct.sock** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = load i32, i32* @AF_VSOCK, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.sock* @sk_alloc(%struct.net* %17, i32 %18, i32 %19, i32* @vsock_proto, i32 %20)
  store %struct.sock* %21, %struct.sock** %14, align 8
  %22 = load %struct.sock*, %struct.sock** %14, align 8
  %23 = icmp ne %struct.sock* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %144

25:                                               ; preds = %6
  %26 = load %struct.socket*, %struct.socket** %9, align 8
  %27 = load %struct.sock*, %struct.sock** %14, align 8
  %28 = call i32 @sock_init_data(%struct.socket* %26, %struct.sock* %27)
  %29 = load %struct.socket*, %struct.socket** %9, align 8
  %30 = icmp ne %struct.socket* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i16, i16* %12, align 2
  %33 = load %struct.sock*, %struct.sock** %14, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i16 %32, i16* %34, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.sock*, %struct.sock** %14, align 8
  %37 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %36)
  store %struct.vsock_sock* %37, %struct.vsock_sock** %16, align 8
  %38 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %39 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %38, i32 0, i32 15
  %40 = load i32, i32* @VMADDR_CID_ANY, align 4
  %41 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %42 = call i32 @vsock_addr_init(i32* %39, i32 %40, i32 %41)
  %43 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %44 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %43, i32 0, i32 14
  %45 = load i32, i32* @VMADDR_CID_ANY, align 4
  %46 = load i32, i32* @VMADDR_PORT_ANY, align 4
  %47 = call i32 @vsock_addr_init(i32* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @vsock_sk_destruct, align 4
  %49 = load %struct.sock*, %struct.sock** %14, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @vsock_queue_rcv_skb, align 4
  %52 = load %struct.sock*, %struct.sock** %14, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.sock*, %struct.sock** %14, align 8
  %55 = load i32, i32* @SOCK_DONE, align 4
  %56 = call i32 @sock_reset_flag(%struct.sock* %54, i32 %55)
  %57 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %58 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %57, i32 0, i32 13
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %61 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %60, i32 0, i32 12
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  %63 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %64 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %63, i32 0, i32 11
  store i32* null, i32** %64, align 8
  %65 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %66 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %65, i32 0, i32 10
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %69 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %68, i32 0, i32 9
  %70 = call i32 @INIT_LIST_HEAD(i32* %69)
  %71 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %72 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  %73 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %74 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %76 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %75, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %78 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %77, i32 0, i32 8
  store i64 0, i64* %78, align 8
  %79 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %80 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %79, i32 0, i32 7
  %81 = load i32, i32* @vsock_connect_timeout, align 4
  %82 = call i32 @INIT_DELAYED_WORK(i32* %80, i32 %81)
  %83 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %84 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %83, i32 0, i32 6
  %85 = load i32, i32* @vsock_pending_work, align 4
  %86 = call i32 @INIT_DELAYED_WORK(i32* %84, i32 %85)
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = icmp ne %struct.sock* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %35
  %90 = load %struct.sock*, %struct.sock** %10, align 8
  %91 = call %struct.vsock_sock* @vsock_sk(%struct.sock* %90)
  br label %93

92:                                               ; preds = %35
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi %struct.vsock_sock* [ %91, %89 ], [ null, %92 ]
  store %struct.vsock_sock* %94, %struct.vsock_sock** %15, align 8
  %95 = load %struct.sock*, %struct.sock** %10, align 8
  %96 = icmp ne %struct.sock* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.vsock_sock*, %struct.vsock_sock** %15, align 8
  %99 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %102 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load %struct.vsock_sock*, %struct.vsock_sock** %15, align 8
  %104 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @get_cred(i32 %105)
  %107 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %108 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vsock_sock*, %struct.vsock_sock** %15, align 8
  %110 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %113 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %125

114:                                              ; preds = %93
  %115 = load i32, i32* @CAP_NET_ADMIN, align 4
  %116 = call i32 @capable(i32 %115)
  %117 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %118 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = call i32 (...) @get_current_cred()
  %120 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %121 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @VSOCK_DEFAULT_CONNECT_TIMEOUT, align 4
  %123 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %124 = getelementptr inbounds %struct.vsock_sock, %struct.vsock_sock* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %114, %97
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transport, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64 (%struct.vsock_sock*, %struct.vsock_sock*)*, i64 (%struct.vsock_sock*, %struct.vsock_sock*)** %127, align 8
  %129 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %130 = load %struct.vsock_sock*, %struct.vsock_sock** %15, align 8
  %131 = call i64 %128(%struct.vsock_sock* %129, %struct.vsock_sock* %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load %struct.sock*, %struct.sock** %14, align 8
  %135 = call i32 @sk_free(%struct.sock* %134)
  store %struct.sock* null, %struct.sock** %7, align 8
  br label %144

136:                                              ; preds = %125
  %137 = load %struct.socket*, %struct.socket** %9, align 8
  %138 = icmp ne %struct.socket* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.vsock_sock*, %struct.vsock_sock** %16, align 8
  %141 = call i32 @vsock_insert_unbound(%struct.vsock_sock* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load %struct.sock*, %struct.sock** %14, align 8
  store %struct.sock* %143, %struct.sock** %7, align 8
  br label %144

144:                                              ; preds = %142, %133, %24
  %145 = load %struct.sock*, %struct.sock** %7, align 8
  ret %struct.sock* %145
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.vsock_sock* @vsock_sk(%struct.sock*) #1

declare dso_local i32 @vsock_addr_init(i32*, i32, i32) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @get_current_cred(...) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @vsock_insert_unbound(%struct.vsock_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
