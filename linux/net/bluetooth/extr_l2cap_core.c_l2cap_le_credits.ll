; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_credits.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_le_credits = type { i32, i32 }
%struct.l2cap_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*)* }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cid 0x%4.4x credits 0x%4.4x\00", align 1
@EBADSLT = common dso_local global i32 0, align 4
@LE_FLOWCTL_MAX_CREDITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"LE credits overflow\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_le_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_le_credits(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_le_credits*, align 8
  %11 = alloca %struct.l2cap_chan*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 8
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EPROTO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %82

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to %struct.l2cap_le_credits*
  store %struct.l2cap_le_credits* %23, %struct.l2cap_le_credits** %10, align 8
  %24 = load %struct.l2cap_le_credits*, %struct.l2cap_le_credits** %10, align 8
  %25 = getelementptr inbounds %struct.l2cap_le_credits, %struct.l2cap_le_credits* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le16_to_cpu(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.l2cap_le_credits*, %struct.l2cap_le_credits** %10, align 8
  %29 = getelementptr inbounds %struct.l2cap_le_credits, %struct.l2cap_le_credits* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @__le16_to_cpu(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn* %35, i32 %36)
  store %struct.l2cap_chan* %37, %struct.l2cap_chan** %11, align 8
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %39 = icmp ne %struct.l2cap_chan* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @EBADSLT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %82

43:                                               ; preds = %21
  %44 = load i32, i32* @LE_FLOWCTL_MAX_CREDITS, align 4
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = call i32 @BT_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %54, i32 %55)
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %58 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %57)
  store i32 0, i32* %5, align 4
  br label %82

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %62 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %66 = call i32 @l2cap_le_flowctl_send(%struct.l2cap_chan* %65)
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %59
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %73 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %75, align 8
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %78 = call i32 %76(%struct.l2cap_chan* %77)
  br label %79

79:                                               ; preds = %71, %59
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %11, align 8
  %81 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %52, %40, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_dcid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_le_flowctl_send(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
