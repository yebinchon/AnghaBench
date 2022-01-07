; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_endpointola.c_sctp_endpoint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.sock*, i32, i32, i32, i32 }
%struct.sock = type { i32, i32 }
%struct.net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.sctp_shared_key = type { i32 }

@SCTP_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@SCTP_CID_ASCONF = common dso_local global i32 0, align 4
@SCTP_CID_ASCONF_ACK = common dso_local global i32 0, align 4
@SCTP_EP_TYPE_SOCKET = common dso_local global i32 0, align 4
@sctp_endpoint_bh_rcv = common dso_local global i32 0, align 4
@sctp_data_ready = common dso_local global i32 0, align 4
@sctp_write_space = common dso_local global i32 0, align 4
@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_endpoint* (%struct.sctp_endpoint*, %struct.sock*, i32)* @sctp_endpoint_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_endpoint* @sctp_endpoint_init(%struct.sctp_endpoint* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sctp_shared_key*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %6, align 8
  %11 = call %struct.net* @sock_net(%struct.sock* %10)
  store %struct.net* %11, %struct.net** %8, align 8
  %12 = load i32, i32* @SCTP_SIGNATURE_SIZE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @kzalloc(i32 %12, i32 %13)
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %4, align 8
  br label %161

22:                                               ; preds = %3
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = getelementptr inbounds %struct.net, %struct.net* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %27, i32 0, i32 10
  store i64 %26, i64* %28, align 8
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %34 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %33, i32 0, i32 11
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %35, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %22
  %40 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @sctp_auth_init(%struct.sctp_endpoint* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %156

45:                                               ; preds = %39
  %46 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %47 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %46, i32 0, i32 10
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %52 = load i32, i32* @SCTP_CID_ASCONF, align 4
  %53 = call i32 @sctp_auth_ep_add_chunkid(%struct.sctp_endpoint* %51, i32 %52)
  %54 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %55 = load i32, i32* @SCTP_CID_ASCONF_ACK, align 4
  %56 = call i32 @sctp_auth_ep_add_chunkid(%struct.sctp_endpoint* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i32, i32* @SCTP_EP_TYPE_SOCKET, align 4
  %60 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %61 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %64 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = call i32 @refcount_set(i32* %65, i32 1)
  %67 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %68 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %71 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = call i32 @sctp_inq_init(i32* %72)
  %74 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  %77 = load i32, i32* @sctp_endpoint_bh_rcv, align 4
  %78 = call i32 @sctp_inq_set_th_handler(i32* %76, i32 %77)
  %79 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %80 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = call i32 @sctp_bind_addr_init(i32* %81, i32 0)
  %83 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %84 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %83, i32 0, i32 9
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.net*, %struct.net** %8, align 8
  %87 = getelementptr inbounds %struct.net, %struct.net* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %91 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %90, i32 0, i32 8
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @sctp_data_ready, align 4
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @sctp_write_space, align 4
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %100 = call i32 @sock_set_flag(%struct.sock* %98, i32 %99)
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = getelementptr inbounds %struct.net, %struct.net* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %106 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %108 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @get_random_bytes(i32 %109, i32 4)
  %111 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %112 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %111, i32 0, i32 5
  %113 = call i32 @INIT_LIST_HEAD(i32* %112)
  %114 = load i32, i32* %7, align 4
  %115 = call %struct.sctp_shared_key* @sctp_auth_shkey_create(i32 0, i32 %114)
  store %struct.sctp_shared_key* %115, %struct.sctp_shared_key** %9, align 8
  %116 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %9, align 8
  %117 = icmp ne %struct.sctp_shared_key* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %58
  br label %153

119:                                              ; preds = %58
  %120 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %9, align 8
  %121 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %120, i32 0, i32 0
  %122 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %123 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %122, i32 0, i32 5
  %124 = call i32 @list_add(i32* %121, i32* %123)
  %125 = load %struct.net*, %struct.net** %8, align 8
  %126 = getelementptr inbounds %struct.net, %struct.net* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %130 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.net*, %struct.net** %8, align 8
  %132 = getelementptr inbounds %struct.net, %struct.net* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %136 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.net*, %struct.net** %8, align 8
  %138 = getelementptr inbounds %struct.net, %struct.net* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %142 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sock*, %struct.sock** %6, align 8
  %144 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %145 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store %struct.sock* %143, %struct.sock** %146, align 8
  %147 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %148 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.sock*, %struct.sock** %149, align 8
  %151 = call i32 @sock_hold(%struct.sock* %150)
  %152 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  store %struct.sctp_endpoint* %152, %struct.sctp_endpoint** %4, align 8
  br label %161

153:                                              ; preds = %118
  %154 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %155 = call i32 @sctp_auth_free(%struct.sctp_endpoint* %154)
  br label %156

156:                                              ; preds = %153, %44
  %157 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %158 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @kfree(i32 %159)
  store %struct.sctp_endpoint* null, %struct.sctp_endpoint** %4, align 8
  br label %161

161:                                              ; preds = %156, %119, %21
  %162 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  ret %struct.sctp_endpoint* %162
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @sctp_auth_init(%struct.sctp_endpoint*, i32) #1

declare dso_local i32 @sctp_auth_ep_add_chunkid(%struct.sctp_endpoint*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @sctp_inq_init(i32*) #1

declare dso_local i32 @sctp_inq_set_th_handler(i32*, i32) #1

declare dso_local i32 @sctp_bind_addr_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local %struct.sctp_shared_key* @sctp_auth_shkey_create(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sctp_auth_free(%struct.sctp_endpoint*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
