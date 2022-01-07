; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_connect_rsp_defer.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c___l2cap_connect_rsp_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn_rsp = type { i8*, i8*, i8*, i8* }
%struct.l2cap_chan = type { i32, i32, i32, i64, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { i32 }

@L2CAP_CR_SUCCESS = common dso_local global i32 0, align 4
@L2CAP_CS_NO_INFO = common dso_local global i32 0, align 4
@L2CAP_CREATE_CHAN_RSP = common dso_local global %struct.l2cap_conn_rsp zeroinitializer, align 8
@L2CAP_CONN_RSP = common dso_local global %struct.l2cap_conn_rsp zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"chan %p rsp_code %u\00", align 1
@CONF_REQ_SENT = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global %struct.l2cap_conn_rsp zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__l2cap_connect_rsp_defer(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.l2cap_conn_rsp, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca [128 x %struct.l2cap_conn_rsp], align 16
  %6 = alloca %struct.l2cap_conn_rsp, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 6
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %4, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %3, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @cpu_to_le16(i32 %17)
  %19 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %3, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load i32, i32* @L2CAP_CR_SUCCESS, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %3, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* @L2CAP_CS_NO_INFO, align 4
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = getelementptr inbounds %struct.l2cap_conn_rsp, %struct.l2cap_conn_rsp* %3, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %27 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = bitcast %struct.l2cap_conn_rsp* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 bitcast (%struct.l2cap_conn_rsp* @L2CAP_CREATE_CHAN_RSP to i8*), i64 32, i1 false)
  br label %34

32:                                               ; preds = %1
  %33 = bitcast %struct.l2cap_conn_rsp* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.l2cap_conn_rsp* @L2CAP_CONN_RSP to i8*), i64 32, i1 false)
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %35, %struct.l2cap_conn_rsp* byval(%struct.l2cap_conn_rsp) align 8 %6)
  %37 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %37, i32 %40, %struct.l2cap_conn_rsp* byval(%struct.l2cap_conn_rsp) align 8 %6, i32 32, %struct.l2cap_conn_rsp* %3)
  %42 = load i32, i32* @CONF_REQ_SENT, align 4
  %43 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %44 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %43, i32 0, i32 1
  %45 = call i64 @test_and_set_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %61

48:                                               ; preds = %34
  %49 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %50 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %51 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %50)
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %53 = getelementptr inbounds [128 x %struct.l2cap_conn_rsp], [128 x %struct.l2cap_conn_rsp]* %5, i64 0, i64 0
  %54 = call i32 @l2cap_build_conf_req(%struct.l2cap_chan* %52, %struct.l2cap_conn_rsp* %53, i32 4096)
  %55 = getelementptr inbounds [128 x %struct.l2cap_conn_rsp], [128 x %struct.l2cap_conn_rsp]* %5, i64 0, i64 0
  %56 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %49, i32 %51, %struct.l2cap_conn_rsp* byval(%struct.l2cap_conn_rsp) align 8 @L2CAP_CONF_REQ, i32 %54, %struct.l2cap_conn_rsp* %55)
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %48, %47
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.l2cap_conn_rsp* byval(%struct.l2cap_conn_rsp) align 8) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, %struct.l2cap_conn_rsp* byval(%struct.l2cap_conn_rsp) align 8, i32, %struct.l2cap_conn_rsp*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_build_conf_req(%struct.l2cap_chan*, %struct.l2cap_conn_rsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
