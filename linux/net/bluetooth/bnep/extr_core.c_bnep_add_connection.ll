; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_add_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/bnep/extr_core.c_bnep_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_connadd_req = type { i32, i8*, i32 }
%struct.socket = type { i32 }
%struct.net_device = type { i32, i32** }
%struct.bnep_session = type { i64, i32, i64, i32, %struct.TYPE_7__, i32, %struct.socket*, %struct.net_device*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32**, i32** }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@BNEP_SETUP_RESPONSE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBADFD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bnep%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@bnep_net_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bnep_session_sem = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@bnep_type = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@bnep_session = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"kbnepd %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnep_add_connection(%struct.bnep_connadd_req* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnep_connadd_req*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.bnep_session*, align 8
  %9 = alloca %struct.bnep_session*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bnep_connadd_req* %0, %struct.bnep_connadd_req** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %15 = load i32, i32* @BNEP_SETUP_RESPONSE, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = call i32 @l2cap_is_socket(%struct.socket* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EBADFD, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %199

31:                                               ; preds = %2
  %32 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %33 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %199

42:                                               ; preds = %31
  %43 = bitcast i32* %20 to i8*
  %44 = load %struct.socket*, %struct.socket** %5, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_8__* @l2cap_pi(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = call i32 @baswap(i8* %43, i32* %50)
  %52 = bitcast i32* %23 to i8*
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_8__* @l2cap_pi(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @baswap(i8* %52, i32* %59)
  %61 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %62 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %42
  %68 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %69 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  br label %72

71:                                               ; preds = %42
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i8* [ %70, %67 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %71 ]
  %74 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %75 = load i32, i32* @bnep_net_setup, align 4
  %76 = call %struct.net_device* @alloc_netdev(i32 72, i8* %73, i32 %74, i32 %75)
  store %struct.net_device* %76, %struct.net_device** %7, align 8
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = icmp ne %struct.net_device* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %199

82:                                               ; preds = %72
  %83 = call i32 @down_write(i32* @bnep_session_sem)
  %84 = call %struct.bnep_session* @__bnep_get_session(i32* %20)
  store %struct.bnep_session* %84, %struct.bnep_session** %9, align 8
  %85 = load %struct.bnep_session*, %struct.bnep_session** %9, align 8
  %86 = icmp ne %struct.bnep_session* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.bnep_session*, %struct.bnep_session** %9, align 8
  %89 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BT_CONNECTED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EEXIST, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %194

96:                                               ; preds = %87, %82
  %97 = load %struct.net_device*, %struct.net_device** %7, align 8
  %98 = call %struct.bnep_session* @netdev_priv(%struct.net_device* %97)
  store %struct.bnep_session* %98, %struct.bnep_session** %8, align 8
  %99 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %100 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32**, i32*** %101, align 8
  %103 = bitcast i32* %23 to i32**
  %104 = load i32, i32* @ETH_ALEN, align 4
  %105 = call i32 @memcpy(i32** %102, i32** %103, i32 %104)
  %106 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %107 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %106, i32 0, i32 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = bitcast i32* %20 to i32**
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32** %109, i32** %110, i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %7, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32**, i32*** %114, align 8
  %116 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %117 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* @ETH_ALEN, align 4
  %121 = call i32 @memcpy(i32** %115, i32** %119, i32 %120)
  %122 = load %struct.net_device*, %struct.net_device** %7, align 8
  %123 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %124 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %123, i32 0, i32 7
  store %struct.net_device* %122, %struct.net_device** %124, align 8
  %125 = load %struct.socket*, %struct.socket** %5, align 8
  %126 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %127 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %126, i32 0, i32 6
  store %struct.socket* %125, %struct.socket** %127, align 8
  %128 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %129 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %132 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  %133 = load i64, i64* @BT_CONNECTED, align 8
  %134 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %135 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %137 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %140 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @MSG_NOSIGNAL, align 4
  %142 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %143 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  %145 = load %struct.net_device*, %struct.net_device** %7, align 8
  %146 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %147 = call i32 @bnep_get_device(%struct.bnep_session* %146)
  %148 = call i32 @SET_NETDEV_DEV(%struct.net_device* %145, i32 %147)
  %149 = load %struct.net_device*, %struct.net_device** %7, align 8
  %150 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %149, i32* @bnep_type)
  %151 = load %struct.net_device*, %struct.net_device** %7, align 8
  %152 = call i32 @register_netdev(%struct.net_device* %151)
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %96
  br label %194

156:                                              ; preds = %96
  %157 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %158 = call i32 @__bnep_link_session(%struct.bnep_session* %157)
  %159 = load i32, i32* @THIS_MODULE, align 4
  %160 = call i32 @__module_get(i32 %159)
  %161 = load i32, i32* @bnep_session, align 4
  %162 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %163 = load %struct.net_device*, %struct.net_device** %7, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @kthread_run(i32 %161, %struct.bnep_session* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %165)
  %167 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %168 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %170 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @IS_ERR(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %156
  %175 = load i32, i32* @THIS_MODULE, align 4
  %176 = call i32 @module_put(i32 %175)
  %177 = load %struct.net_device*, %struct.net_device** %7, align 8
  %178 = call i32 @unregister_netdev(%struct.net_device* %177)
  %179 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %180 = call i32 @__bnep_unlink_session(%struct.bnep_session* %179)
  %181 = load %struct.bnep_session*, %struct.bnep_session** %8, align 8
  %182 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @PTR_ERR(i32 %183)
  store i32 %184, i32* %13, align 4
  br label %194

185:                                              ; preds = %156
  %186 = call i32 @up_write(i32* @bnep_session_sem)
  %187 = load %struct.bnep_connadd_req*, %struct.bnep_connadd_req** %4, align 8
  %188 = getelementptr inbounds %struct.bnep_connadd_req, %struct.bnep_connadd_req* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.net_device*, %struct.net_device** %7, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @strcpy(i8* %189, i32 %192)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %199

194:                                              ; preds = %174, %155, %93
  %195 = call i32 @up_write(i32* @bnep_session_sem)
  %196 = load %struct.net_device*, %struct.net_device** %7, align 8
  %197 = call i32 @free_netdev(%struct.net_device* %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %199

199:                                              ; preds = %194, %185, %79, %39, %28
  %200 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @BIT(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @l2cap_is_socket(%struct.socket*) #1

declare dso_local i32 @baswap(i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @l2cap_pi(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.bnep_session* @__bnep_get_session(i32*) #1

declare dso_local %struct.bnep_session* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @bnep_get_device(%struct.bnep_session*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @__bnep_link_session(%struct.bnep_session*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @kthread_run(i32, %struct.bnep_session*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @__bnep_unlink_session(%struct.bnep_session*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
