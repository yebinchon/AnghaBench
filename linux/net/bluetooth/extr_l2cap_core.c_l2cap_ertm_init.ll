; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_ertm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32*, i32*, i64, i64, i64, i64, i64, i64, i64 }

@AMP_ID_BREDR = common dso_local global i8* null, align 8
@L2CAP_MOVE_STABLE = common dso_local global i32 0, align 4
@L2CAP_MOVE_ROLE_NONE = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_RX_STATE_RECV = common dso_local global i32 0, align 4
@L2CAP_TX_STATE_XMIT = common dso_local global i32 0, align 4
@l2cap_retrans_timeout = common dso_local global i32 0, align 4
@l2cap_monitor_timeout = common dso_local global i32 0, align 4
@l2cap_ack_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_ertm_init(%struct.l2cap_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %6 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %5, i32 0, i32 25
  store i64 0, i64* %6, align 8
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 24
  store i64 0, i64* %8, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 23
  store i64 0, i64* %10, align 8
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 22
  store i64 0, i64* %12, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 21
  store i64 0, i64* %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 20
  store i64 0, i64* %16, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 19
  store i64 0, i64* %18, align 8
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 18
  store i32* null, i32** %20, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 17
  store i32* null, i32** %22, align 8
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 16
  store i64 0, i64* %24, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 15
  %27 = call i32 @skb_queue_head_init(i32* %26)
  %28 = load i8*, i8** @AMP_ID_BREDR, align 8
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 14
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @AMP_ID_BREDR, align 8
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 13
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @L2CAP_MOVE_STABLE, align 4
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @L2CAP_MOVE_ROLE_NONE, align 4
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

46:                                               ; preds = %1
  %47 = load i32, i32* @L2CAP_RX_STATE_RECV, align 4
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @L2CAP_TX_STATE_XMIT, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 8
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 8
  %55 = load i32, i32* @l2cap_retrans_timeout, align 4
  %56 = call i32 @INIT_DELAYED_WORK(i32* %54, i32 %55)
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 7
  %59 = load i32, i32* @l2cap_monitor_timeout, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %62 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %61, i32 0, i32 6
  %63 = load i32, i32* @l2cap_ack_timeout, align 4
  %64 = call i32 @INIT_DELAYED_WORK(i32* %62, i32 %63)
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 5
  %67 = call i32 @skb_queue_head_init(i32* %66)
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 1
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %71 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @l2cap_seq_list_init(i32* %69, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %46
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %93

78:                                               ; preds = %46
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %80 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %79, i32 0, i32 3
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %82 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @l2cap_seq_list_init(i32* %80, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 1
  %90 = call i32 @l2cap_seq_list_free(i32* %89)
  br label %91

91:                                               ; preds = %87, %78
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %76, %45
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @l2cap_seq_list_init(i32*, i32) #1

declare dso_local i32 @l2cap_seq_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
