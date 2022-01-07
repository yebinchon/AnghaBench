; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_recv_capimsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_recv_capimsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32, i32, %struct.capi_ctr }
%struct.capi_ctr = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.cmtp_application = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"session %p skb %p len %d\00", align 1
@CAPI_MSG_BASELEN = common dso_local global i64 0, align 8
@CAPI_INTEROPERABILITY = common dso_local global i64 0, align 8
@CMTP_LOOPBACK = common dso_local global i32 0, align 4
@CMTP_MAPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't find application with id %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmtp_recv_capimsg(%struct.cmtp_session* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.cmtp_session*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.capi_ctr*, align 8
  %6 = alloca %struct.cmtp_application*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmtp_session* %0, %struct.cmtp_session** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %10 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %9, i32 0, i32 2
  store %struct.capi_ctr* %10, %struct.capi_ctr** %5, align 8
  %11 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %11, %struct.sk_buff* %12, i64 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CAPI_MSG_BASELEN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %95

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @CAPIMSG_COMMAND(i32 %26)
  %28 = load i64, i64* @CAPI_INTEROPERABILITY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @cmtp_recv_interopmsg(%struct.cmtp_session* %31, %struct.sk_buff* %32)
  br label %95

34:                                               ; preds = %23
  %35 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %36 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CMTP_LOOPBACK, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  br label %95

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @CAPIMSG_APPID(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @CAPIMSG_CONTROL(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %55 = load i32, i32* @CMTP_MAPPING, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session* %54, i32 %55, i32 %56)
  store %struct.cmtp_application* %57, %struct.cmtp_application** %6, align 8
  %58 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %59 = icmp ne %struct.cmtp_application* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %45
  %61 = load %struct.cmtp_application*, %struct.cmtp_application** %6, align 8
  %62 = getelementptr inbounds %struct.cmtp_application, %struct.cmtp_application* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @CAPIMSG_SETAPPID(i32 %66, i32 %67)
  br label %74

69:                                               ; preds = %45
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @kfree_skb(%struct.sk_buff* %72)
  br label %95

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 127
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, -128
  %81 = load %struct.cmtp_session*, %struct.cmtp_session** %3, align 8
  %82 = getelementptr inbounds %struct.cmtp_session, %struct.cmtp_session* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %80, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @CAPIMSG_SETCONTROL(i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %78, %74
  %91 = load %struct.capi_ctr*, %struct.capi_ctr** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @capi_ctr_handle_message(%struct.capi_ctr* %91, i32 %92, %struct.sk_buff* %93)
  br label %95

95:                                               ; preds = %90, %69, %42, %30, %22
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, %struct.sk_buff*, i64) #1

declare dso_local i64 @CAPIMSG_COMMAND(i32) #1

declare dso_local i32 @cmtp_recv_interopmsg(%struct.cmtp_session*, %struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @CAPIMSG_APPID(i32) #1

declare dso_local i32 @CAPIMSG_CONTROL(i32) #1

declare dso_local %struct.cmtp_application* @cmtp_application_get(%struct.cmtp_session*, i32, i32) #1

declare dso_local i32 @CAPIMSG_SETAPPID(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @CAPIMSG_SETCONTROL(i32, i32) #1

declare dso_local i32 @capi_ctr_handle_message(%struct.capi_ctr*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
