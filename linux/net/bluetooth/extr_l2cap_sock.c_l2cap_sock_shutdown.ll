; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i64, i64 }
%struct.l2cap_chan = type { i64, i64, i64, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }
%struct.TYPE_3__ = type { %struct.l2cap_chan* }

@.str = private unnamed_addr constant [15 x i8] c"sock %p, sk %p\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Handling sock shutdown\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"chan %p state %s\00", align 1
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@SHUTDOWN_MASK = common dso_local global i64 0, align 8
@SOCK_LINGER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@BT_CLOSED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Sock shutdown complete err: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @l2cap_sock_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_shutdown(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.l2cap_conn*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.socket* %13, %struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = icmp ne %struct.sock* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %160

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = call i32 @lock_sock(%struct.sock* %20)
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %141

27:                                               ; preds = %19
  %28 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call i32 @sock_hold(%struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %33, align 8
  store %struct.l2cap_chan* %34, %struct.l2cap_chan** %7, align 8
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %36 = call i32 @l2cap_chan_hold(%struct.l2cap_chan* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @state_to_string(i64 %40)
  %42 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.l2cap_chan* %37, i32 %41)
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %27
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %50 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %55 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BT_CONNECTED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %62 = call i32 @__l2cap_wait_ack(%struct.sock* %60, %struct.l2cap_chan* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %136

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %53, %48, %27
  %70 = load i64, i64* @SHUTDOWN_MASK, align 8
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = call i32 @release_sock(%struct.sock* %73)
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %76 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %75)
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %78 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %77, i32 0, i32 3
  %79 = load %struct.l2cap_conn*, %struct.l2cap_conn** %78, align 8
  store %struct.l2cap_conn* %79, %struct.l2cap_conn** %8, align 8
  %80 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %81 = icmp ne %struct.l2cap_conn* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %84 = call i32 @l2cap_conn_get(%struct.l2cap_conn* %83)
  br label %85

85:                                               ; preds = %82, %69
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %87 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %86)
  %88 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %89 = icmp ne %struct.l2cap_conn* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %92 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %91, i32 0, i32 0
  %93 = call i32 @mutex_lock(i32* %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %96 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %95)
  %97 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %98 = call i32 @l2cap_chan_close(%struct.l2cap_chan* %97, i32 0)
  %99 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %100 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %99)
  %101 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %102 = icmp ne %struct.l2cap_conn* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %94
  %104 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %105 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  %108 = call i32 @l2cap_conn_put(%struct.l2cap_conn* %107)
  br label %109

109:                                              ; preds = %103, %94
  %110 = load %struct.sock*, %struct.sock** %6, align 8
  %111 = call i32 @lock_sock(%struct.sock* %110)
  %112 = load %struct.sock*, %struct.sock** %6, align 8
  %113 = load i32, i32* @SOCK_LINGER, align 4
  %114 = call i64 @sock_flag(%struct.sock* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %109
  %117 = load %struct.sock*, %struct.sock** %6, align 8
  %118 = getelementptr inbounds %struct.sock, %struct.sock* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %116
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PF_EXITING, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load %struct.sock*, %struct.sock** %6, align 8
  %130 = load i32, i32* @BT_CLOSED, align 4
  %131 = load %struct.sock*, %struct.sock** %6, align 8
  %132 = getelementptr inbounds %struct.sock, %struct.sock* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @bt_sock_wait_state(%struct.sock* %129, i32 %130, i64 %133)
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %128, %121, %116, %109
  br label %136

136:                                              ; preds = %135, %67
  %137 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %138 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %137)
  %139 = load %struct.sock*, %struct.sock** %6, align 8
  %140 = call i32 @sock_put(%struct.sock* %139)
  br label %141

141:                                              ; preds = %136, %26
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %141
  %145 = load %struct.sock*, %struct.sock** %6, align 8
  %146 = getelementptr inbounds %struct.sock, %struct.sock* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.sock*, %struct.sock** %6, align 8
  %151 = getelementptr inbounds %struct.sock, %struct.sock* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %149, %144, %141
  %155 = load %struct.sock*, %struct.sock** %6, align 8
  %156 = call i32 @release_sock(%struct.sock* %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %9, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %154, %18
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_hold(%struct.l2cap_chan*) #1

declare dso_local i32 @state_to_string(i64) #1

declare dso_local i32 @__l2cap_wait_ack(%struct.sock*, %struct.l2cap_chan*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_conn_get(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @l2cap_chan_close(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @l2cap_conn_put(%struct.l2cap_conn*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_sock_wait_state(%struct.sock*, i32, i64) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
