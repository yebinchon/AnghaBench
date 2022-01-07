; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_open.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, i32 }
%struct.l2cap_conn = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@L2CAP_CHAN_FIXED = common dso_local global i32 0, align 4
@L2CAP_CID_A2MP = common dso_local global i8* null, align 8
@L2CAP_A2MP_DEFAULT_MTU = common dso_local global i8* null, align 8
@L2CAP_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@a2mp_chan_ops = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_RETRANS_TO = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MONITOR_TO = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* (%struct.l2cap_conn*, i32)* @a2mp_chan_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @a2mp_chan_open(%struct.l2cap_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call %struct.l2cap_chan* (...) @l2cap_chan_create()
  store %struct.l2cap_chan* %8, %struct.l2cap_chan** %6, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %10 = icmp ne %struct.l2cap_chan* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %3, align 8
  br label %94

12:                                               ; preds = %2
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %13)
  %15 = load i32, i32* @L2CAP_CHAN_FIXED, align 4
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 18
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** @L2CAP_CID_A2MP, align 8
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 17
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** @L2CAP_CID_A2MP, align 8
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %23 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %22, i32 0, i32 16
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @L2CAP_A2MP_DEFAULT_MTU, align 8
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @L2CAP_A2MP_DEFAULT_MTU, align 8
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 15
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @L2CAP_DEFAULT_FLUSH_TO, align 4
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %32 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 8
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 13
  store i32* @a2mp_chan_ops, i32** %34, align 8
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %36 = call i32 @l2cap_chan_set_defaults(%struct.l2cap_chan* %35)
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @L2CAP_DEFAULT_RETRANS_TO, align 4
  %48 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %49 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @L2CAP_DEFAULT_MONITOR_TO, align 4
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %54 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %53, i32 0, i32 6
  %55 = call i32 @skb_queue_head_init(i32* %54)
  %56 = load i32, i32* @L2CAP_MODE_ERTM, align 4
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %60 = call i32 @l2cap_ertm_init(%struct.l2cap_chan* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %12
  %64 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %65 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %64, i32 0)
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %3, align 8
  br label %94

66:                                               ; preds = %12
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %74 = call i32 @__l2cap_chan_add(%struct.l2cap_conn* %72, %struct.l2cap_chan* %73)
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %78 = call i32 @l2cap_chan_add(%struct.l2cap_conn* %76, %struct.l2cap_chan* %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %81 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %84 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %89 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @BT_CONNECTED, align 4
  %91 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %92 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  store %struct.l2cap_chan* %93, %struct.l2cap_chan** %3, align 8
  br label %94

94:                                               ; preds = %79, %63, %11
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  ret %struct.l2cap_chan* %95
}

declare dso_local %struct.l2cap_chan* @l2cap_chan_create(...) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_set_defaults(%struct.l2cap_chan*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @l2cap_ertm_init(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__l2cap_chan_add(%struct.l2cap_conn*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_add(%struct.l2cap_conn*, %struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
