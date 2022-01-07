; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_sframe.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_sframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32, i32 }
%struct.l2cap_ctrl = type { i32, i64, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"chan %p, control %p\00", align 1
@CONN_SEND_FBIT = common dso_local global i32 0, align 4
@L2CAP_SUPER_RR = common dso_local global i64 0, align 8
@CONN_RNR_SENT = common dso_local global i32 0, align 4
@L2CAP_SUPER_RNR = common dso_local global i64 0, align 8
@L2CAP_SUPER_SREJ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"reqseq %d, final %d, poll %d, super %d\00", align 1
@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, %struct.l2cap_ctrl*)* @l2cap_send_sframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_sframe(%struct.l2cap_chan* %0, %struct.l2cap_ctrl* %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.l2cap_ctrl*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store %struct.l2cap_ctrl* %1, %struct.l2cap_ctrl** %4, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %9 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7, %struct.l2cap_ctrl* %8)
  %10 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %11 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %17 = call i64 @__chan_is_moving(%struct.l2cap_chan* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %109

20:                                               ; preds = %15
  %21 = load i32, i32* @CONN_SEND_FBIT, align 4
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 2
  %24 = call i64 @test_and_clear_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %33 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %26, %20
  %35 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %36 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L2CAP_SUPER_RR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @CONN_RNR_SENT, align 4
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 2
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %57

45:                                               ; preds = %34
  %46 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @L2CAP_SUPER_RNR, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @CONN_RNR_SENT, align 4
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 2
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %51, %45
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %59 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @L2CAP_SUPER_SREJ, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %70 = call i32 @__clear_ack_timer(%struct.l2cap_chan* %69)
  br label %71

71:                                               ; preds = %63, %57
  %72 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %73 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to %struct.l2cap_chan*
  %77 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %78 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %81 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %84 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, %struct.l2cap_chan*, ...) @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.l2cap_chan* %76, i32 %79, i32 %82, i64 %85)
  %87 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %71
  %93 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %94 = call i32 @__pack_extended_control(%struct.l2cap_ctrl* %93)
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %71
  %96 = load %struct.l2cap_ctrl*, %struct.l2cap_ctrl** %4, align 8
  %97 = call i32 @__pack_enhanced_control(%struct.l2cap_ctrl* %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call %struct.sk_buff* @l2cap_create_sframe_pdu(%struct.l2cap_chan* %99, i32 %100)
  store %struct.sk_buff* %101, %struct.sk_buff** %5, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = call i32 @IS_ERR(%struct.sk_buff* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @l2cap_do_send(%struct.l2cap_chan* %106, %struct.sk_buff* %107)
  br label %109

109:                                              ; preds = %14, %19, %105, %98
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, ...) #1

declare dso_local i64 @__chan_is_moving(%struct.l2cap_chan*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__clear_ack_timer(%struct.l2cap_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__pack_extended_control(%struct.l2cap_ctrl*) #1

declare dso_local i32 @__pack_enhanced_control(%struct.l2cap_ctrl*) #1

declare dso_local %struct.sk_buff* @l2cap_create_sframe_pdu(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
