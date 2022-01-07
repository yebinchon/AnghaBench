; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_send_interopmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_capi.c_cmtp_send_interopmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmtp_session = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"session %p subcmd 0x%02x appl %d msgnum %d\00", align 1
@CAPI_MSG_BASELEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Can't allocate memory for interoperability packet\00", align 1
@CAPI_INTEROPERABILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmtp_session*, i32, i32, i32, i32, i8*, i32)* @cmtp_send_interopmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmtp_send_interopmsg(%struct.cmtp_session* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.cmtp_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i8*, align 8
  store %struct.cmtp_session* %0, %struct.cmtp_session** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.cmtp_session*, %struct.cmtp_session** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @BT_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.cmtp_session* %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @CAPI_MSG_BASELEN, align 4
  %23 = add nsw i32 %22, 6
  %24 = load i32, i32* %14, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.sk_buff* @alloc_skb(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %15, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %7
  %31 = call i32 @BT_ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %81

32:                                               ; preds = %7
  %33 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %34 = load i32, i32* @CAPI_MSG_BASELEN, align 4
  %35 = add nsw i32 %34, 6
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i8* @skb_put(%struct.sk_buff* %33, i32 %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* @CAPI_MSG_BASELEN, align 4
  %41 = add nsw i32 %40, 6
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %41, %42
  %44 = call i32 @capimsg_setu16(i8* %39, i32 0, i32 %43)
  %45 = load i8*, i8** %16, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @capimsg_setu16(i8* %45, i32 2, i32 %46)
  %48 = load i8*, i8** %16, align 8
  %49 = load i32, i32* @CAPI_INTEROPERABILITY, align 4
  %50 = call i32 @capimsg_setu8(i8* %48, i32 4, i32 %49)
  %51 = load i8*, i8** %16, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @capimsg_setu8(i8* %51, i32 5, i32 %52)
  %54 = load i8*, i8** %16, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @capimsg_setu16(i8* %54, i32 6, i32 %55)
  %57 = load i8*, i8** %16, align 8
  %58 = call i32 @capimsg_setu16(i8* %57, i32 8, i32 1)
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 3, %60
  %62 = call i32 @capimsg_setu8(i8* %59, i32 10, i32 %61)
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @capimsg_setu16(i8* %63, i32 11, i32 %64)
  %66 = load i8*, i8** %16, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @capimsg_setu8(i8* %66, i32 13, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %32
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 14
  %74 = load i8*, i8** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %32
  %78 = load %struct.cmtp_session*, %struct.cmtp_session** %8, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %80 = call i32 @cmtp_send_capimsg(%struct.cmtp_session* %78, %struct.sk_buff* %79)
  br label %81

81:                                               ; preds = %77, %30
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.cmtp_session*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @capimsg_setu16(i8*, i32, i32) #1

declare dso_local i32 @capimsg_setu8(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cmtp_send_capimsg(%struct.cmtp_session*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
