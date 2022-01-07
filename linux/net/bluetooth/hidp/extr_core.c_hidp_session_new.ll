; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, %struct.socket*, %struct.socket*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.socket = type { i32, i32 }
%struct.hidp_connadd_req = type { i32, i32 }
%struct.l2cap_conn = type { i32 }
%struct.bt_sock = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIDP_SESSION_IDLING = common dso_local global i32 0, align 4
@HIDP_BLUETOOTH_VENDOR_ID = common dso_local global i32 0, align 4
@hidp_session_probe = common dso_local global i32 0, align 4
@hidp_session_remove = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@hidp_session_dev_work = common dso_local global i32 0, align 4
@hidp_idle_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidp_session**, i32*, %struct.socket*, %struct.socket*, %struct.hidp_connadd_req*, %struct.l2cap_conn*)* @hidp_session_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session_new(%struct.hidp_session** %0, i32* %1, %struct.socket* %2, %struct.socket* %3, %struct.hidp_connadd_req* %4, %struct.l2cap_conn* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hidp_session**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.socket*, align 8
  %12 = alloca %struct.hidp_connadd_req*, align 8
  %13 = alloca %struct.l2cap_conn*, align 8
  %14 = alloca %struct.hidp_session*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bt_sock*, align 8
  %17 = alloca %struct.bt_sock*, align 8
  store %struct.hidp_session** %0, %struct.hidp_session*** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.socket* %2, %struct.socket** %10, align 8
  store %struct.socket* %3, %struct.socket** %11, align 8
  store %struct.hidp_connadd_req* %4, %struct.hidp_connadd_req** %12, align 8
  store %struct.l2cap_conn* %5, %struct.l2cap_conn** %13, align 8
  %18 = load %struct.socket*, %struct.socket** %10, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.bt_sock* @bt_sk(i32 %20)
  store %struct.bt_sock* %21, %struct.bt_sock** %16, align 8
  %22 = load %struct.socket*, %struct.socket** %11, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.bt_sock* @bt_sk(i32 %24)
  store %struct.bt_sock* %25, %struct.bt_sock** %17, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.hidp_session* @kzalloc(i32 104, i32 %26)
  store %struct.hidp_session* %27, %struct.hidp_session** %14, align 8
  %28 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %29 = icmp ne %struct.hidp_session* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %164

33:                                               ; preds = %6
  %34 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %35 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %34, i32 0, i32 17
  %36 = call i32 @kref_init(i32* %35)
  %37 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %38 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %37, i32 0, i32 16
  %39 = load i32, i32* @HIDP_SESSION_IDLING, align 4
  %40 = call i32 @atomic_set(i32* %38, i32 %39)
  %41 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %42 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %41, i32 0, i32 15
  %43 = call i32 @init_waitqueue_head(i32* %42)
  %44 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %12, align 8
  %45 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HIDP_BLUETOOTH_VENDOR_ID, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = and i32 %46, %48
  %50 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %51 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %53 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %52, i32 0, i32 14
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @bacpy(i32* %53, i32* %54)
  %56 = load %struct.l2cap_conn*, %struct.l2cap_conn** %13, align 8
  %57 = call i32 @l2cap_conn_get(%struct.l2cap_conn* %56)
  %58 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %59 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @hidp_session_probe, align 4
  %61 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %62 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %61, i32 0, i32 13
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @hidp_session_remove, align 4
  %65 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %66 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %65, i32 0, i32 13
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %69 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %68, i32 0, i32 13
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.socket*, %struct.socket** %10, align 8
  %73 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %74 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %73, i32 0, i32 2
  store %struct.socket* %72, %struct.socket** %74, align 8
  %75 = load %struct.socket*, %struct.socket** %11, align 8
  %76 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %77 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %76, i32 0, i32 3
  store %struct.socket* %75, %struct.socket** %77, align 8
  %78 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %79 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %78, i32 0, i32 12
  %80 = call i32 @skb_queue_head_init(i32* %79)
  %81 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %82 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %81, i32 0, i32 11
  %83 = call i32 @skb_queue_head_init(i32* %82)
  %84 = load i32, i32* @uint, align 4
  %85 = load %struct.bt_sock*, %struct.bt_sock** %16, align 8
  %86 = call %struct.TYPE_6__* @l2cap_pi(%struct.bt_sock* %85)
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.bt_sock*, %struct.bt_sock** %16, align 8
  %92 = call %struct.TYPE_6__* @l2cap_pi(%struct.bt_sock* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @min_t(i32 %84, i32 %90, i32 %96)
  %98 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %99 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %98, i32 0, i32 10
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @uint, align 4
  %101 = load %struct.bt_sock*, %struct.bt_sock** %17, align 8
  %102 = call %struct.TYPE_6__* @l2cap_pi(%struct.bt_sock* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bt_sock*, %struct.bt_sock** %17, align 8
  %108 = call %struct.TYPE_6__* @l2cap_pi(%struct.bt_sock* %107)
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @min_t(i32 %100, i32 %106, i32 %112)
  %114 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %115 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %114, i32 0, i32 9
  store i8* %113, i8** %115, align 8
  %116 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %12, align 8
  %117 = getelementptr inbounds %struct.hidp_connadd_req, %struct.hidp_connadd_req* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %120 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %119, i32 0, i32 8
  store i32 %118, i32* %120, align 8
  %121 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %122 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %121, i32 0, i32 7
  %123 = load i32, i32* @hidp_session_dev_work, align 4
  %124 = call i32 @INIT_WORK(i32* %122, i32 %123)
  %125 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %126 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %125, i32 0, i32 6
  %127 = load i32, i32* @hidp_idle_timeout, align 4
  %128 = call i32 @timer_setup(i32* %126, i32 %127, i32 0)
  %129 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %130 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %129, i32 0, i32 5
  %131 = call i32 @mutex_init(i32* %130)
  %132 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %133 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %132, i32 0, i32 4
  %134 = call i32 @init_waitqueue_head(i32* %133)
  %135 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %136 = load %struct.hidp_connadd_req*, %struct.hidp_connadd_req** %12, align 8
  %137 = call i32 @hidp_session_dev_init(%struct.hidp_session* %135, %struct.hidp_connadd_req* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %33
  br label %156

141:                                              ; preds = %33
  %142 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %143 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %142, i32 0, i32 3
  %144 = load %struct.socket*, %struct.socket** %143, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @get_file(i32 %146)
  %148 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %149 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %148, i32 0, i32 2
  %150 = load %struct.socket*, %struct.socket** %149, align 8
  %151 = getelementptr inbounds %struct.socket, %struct.socket* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @get_file(i32 %152)
  %154 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %155 = load %struct.hidp_session**, %struct.hidp_session*** %8, align 8
  store %struct.hidp_session* %154, %struct.hidp_session** %155, align 8
  store i32 0, i32* %7, align 4
  br label %164

156:                                              ; preds = %140
  %157 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %158 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @l2cap_conn_put(i32 %159)
  %161 = load %struct.hidp_session*, %struct.hidp_session** %14, align 8
  %162 = call i32 @kfree(%struct.hidp_session* %161)
  %163 = load i32, i32* %15, align 4
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %156, %141, %30
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local %struct.bt_sock* @bt_sk(i32) #1

declare dso_local %struct.hidp_session* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @l2cap_conn_get(%struct.l2cap_conn*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @l2cap_pi(%struct.bt_sock*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hidp_session_dev_init(%struct.hidp_session*, %struct.hidp_connadd_req*) #1

declare dso_local i32 @get_file(i32) #1

declare dso_local i32 @l2cap_conn_put(i32) #1

declare dso_local i32 @kfree(%struct.hidp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
