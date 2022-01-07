; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_add_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_core.c_cmtp_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_connadd_req = type { i32 }
%struct.socket = type { i32 }
%struct.cmtp_session = type { i64, i32, %struct.socket*, i32, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBADFD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmtp_session_sem = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"mtu %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pMR\00", align 1
@BT_CONFIG = common dso_local global i64 0, align 8
@CMTP_INITIAL_MSGNUM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@cmtp_session = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"kcmtpd_ctr_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmtp_add_connection(%struct.cmtp_connadd_req* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmtp_connadd_req*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmtp_session*, align 8
  %8 = alloca %struct.cmtp_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cmtp_connadd_req* %0, %struct.cmtp_connadd_req** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %11 = load i32, i32* @CMTP_LOOPBACK, align 4
  %12 = call i32 @BIT(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = call i32 @l2cap_is_socket(%struct.socket* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EBADFD, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %199

20:                                               ; preds = %2
  %21 = load %struct.cmtp_connadd_req*, %struct.cmtp_connadd_req** %4, align 8
  %22 = getelementptr inbounds %struct.cmtp_connadd_req, %struct.cmtp_connadd_req* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %199

31:                                               ; preds = %20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.cmtp_session* @kzalloc(i32 80, i32 %32)
  store %struct.cmtp_session* %33, %struct.cmtp_session** %7, align 8
  %34 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %35 = icmp ne %struct.cmtp_session* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %199

39:                                               ; preds = %31
  %40 = call i32 @down_write(i32* @cmtp_session_sem)
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_4__* @l2cap_pi(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call %struct.cmtp_session* @__cmtp_get_session(i32* %47)
  store %struct.cmtp_session* %48, %struct.cmtp_session** %8, align 8
  %49 = load %struct.cmtp_session*, %struct.cmtp_session** %8, align 8
  %50 = icmp ne %struct.cmtp_session* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %39
  %52 = load %struct.cmtp_session*, %struct.cmtp_session** %8, align 8
  %53 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BT_CONNECTED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @EEXIST, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %194

60:                                               ; preds = %51, %39
  %61 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %62 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %61, i32 0, i32 12
  %63 = load %struct.socket*, %struct.socket** %5, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_4__* @l2cap_pi(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = call i32 @bacpy(i32* %62, i32* %69)
  %71 = load i32, i32* @uint, align 4
  %72 = load %struct.socket*, %struct.socket** %5, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_4__* @l2cap_pi(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.socket*, %struct.socket** %5, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_4__* @l2cap_pi(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @min_t(i32 %71, i32 %79, i32 %87)
  %89 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %90 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %89, i32 0, i32 13
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %92 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %91, i32 0, i32 13
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %96 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %99 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %98, i32 0, i32 12
  %100 = call i32 @sprintf(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %99)
  %101 = load %struct.socket*, %struct.socket** %5, align 8
  %102 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %103 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %102, i32 0, i32 2
  store %struct.socket* %101, %struct.socket** %103, align 8
  %104 = load i64, i64* @BT_CONFIG, align 8
  %105 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %106 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %108 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %107, i32 0, i32 10
  %109 = call i32 @init_waitqueue_head(i32* %108)
  %110 = load i32, i32* @CMTP_INITIAL_MSGNUM, align 4
  %111 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %112 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 8
  %113 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %114 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %113, i32 0, i32 8
  %115 = call i32 @INIT_LIST_HEAD(i32* %114)
  %116 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %117 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %116, i32 0, i32 7
  %118 = call i32 @skb_queue_head_init(i32* %117)
  store i32 0, i32* %9, align 4
  br label %119

119:                                              ; preds = %129, %60
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %124 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %123, i32 0, i32 6
  %125 = load i32**, i32*** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %119

132:                                              ; preds = %119
  %133 = load %struct.cmtp_connadd_req*, %struct.cmtp_connadd_req** %4, align 8
  %134 = getelementptr inbounds %struct.cmtp_connadd_req, %struct.cmtp_connadd_req* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %137 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 8
  %138 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %139 = call i32 @__cmtp_link_session(%struct.cmtp_session* %138)
  %140 = load i32, i32* @THIS_MODULE, align 4
  %141 = call i32 @__module_get(i32 %140)
  %142 = load i32, i32* @cmtp_session, align 4
  %143 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %144 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %145 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @kthread_run(i32 %142, %struct.cmtp_session* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %149 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  %150 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %151 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @IS_ERR(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %132
  %156 = load i32, i32* @THIS_MODULE, align 4
  %157 = call i32 @module_put(i32 %156)
  %158 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %159 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %10, align 4
  br label %191

162:                                              ; preds = %132
  %163 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %164 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CMTP_LOOPBACK, align 4
  %167 = call i32 @BIT(i32 %166)
  %168 = and i32 %165, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %189, label %170

170:                                              ; preds = %162
  %171 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %172 = call i32 @cmtp_attach_device(%struct.cmtp_session* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %188

175:                                              ; preds = %170
  %176 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %177 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %176, i32 0, i32 3
  %178 = call i32 @atomic_inc(i32* %177)
  %179 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %180 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %179, i32 0, i32 2
  %181 = load %struct.socket*, %struct.socket** %180, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @sk_sleep(i32 %183)
  %185 = call i32 @wake_up_interruptible(i32 %184)
  %186 = call i32 @up_write(i32* @cmtp_session_sem)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %3, align 4
  br label %199

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %162
  %190 = call i32 @up_write(i32* @cmtp_session_sem)
  store i32 0, i32* %3, align 4
  br label %199

191:                                              ; preds = %155
  %192 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %193 = call i32 @__cmtp_unlink_session(%struct.cmtp_session* %192)
  br label %194

194:                                              ; preds = %191, %57
  %195 = call i32 @up_write(i32* @cmtp_session_sem)
  %196 = load %struct.cmtp_session*, %struct.cmtp_session** %7, align 8
  %197 = call i32 @kfree(%struct.cmtp_session* %196)
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %194, %189, %175, %36, %28, %17
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @l2cap_is_socket(%struct.socket*) #1

declare dso_local %struct.cmtp_session* @kzalloc(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.cmtp_session* @__cmtp_get_session(i32*) #1

declare dso_local %struct.TYPE_4__* @l2cap_pi(i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @__cmtp_link_session(%struct.cmtp_session*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.cmtp_session*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cmtp_attach_device(%struct.cmtp_session*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @sk_sleep(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @__cmtp_unlink_session(%struct.cmtp_session*) #1

declare dso_local i32 @kfree(%struct.cmtp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
