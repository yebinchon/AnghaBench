; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_retransmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_outqueue.c_sctp_retransmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_outq = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.sctp_outq*, i32)* }
%struct.TYPE_7__ = type { i32 }
%struct.sctp_transport = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.sctp_transport* }
%struct.net = type { i32 }

@SCTP_MIB_T3_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_LOWER_CWND_T3_RTX = common dso_local global i32 0, align 4
@SCTP_MIB_FAST_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_LOWER_CWND_FAST_RTX = common dso_local global i32 0, align 4
@SCTP_MIB_PMTUD_RETRANSMITS = common dso_local global i32 0, align 4
@SCTP_MIB_T1_RETRANSMITS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_retransmit(%struct.sctp_outq* %0, %struct.sctp_transport* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_outq*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  store %struct.sctp_outq* %0, %struct.sctp_outq** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %8, i32 0, i32 1
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %71 [
    i32 128, label %16
    i32 131, label %48
    i32 130, label %57
    i32 129, label %61
  ]

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i32, i32* @SCTP_MIB_T3_RETRANSMITS, align 4
  %19 = call i32 @SCTP_INC_STATS(%struct.net* %17, i32 %18)
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %21 = load i32, i32* @SCTP_LOWER_CWND_T3_RTX, align 4
  %22 = call i32 @sctp_transport_lower_cwnd(%struct.sctp_transport* %20, i32 %21)
  %23 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %28, align 8
  %30 = icmp eq %struct.sctp_transport* %23, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = call i32 @sctp_assoc_update_retran_path(%struct.TYPE_12__* %34)
  br label %36

36:                                               ; preds = %31, %16
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %38 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %43 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, %41
  store i32 %47, i32* %45, align 8
  br label %73

48:                                               ; preds = %3
  %49 = load %struct.net*, %struct.net** %7, align 8
  %50 = load i32, i32* @SCTP_MIB_FAST_RETRANSMITS, align 4
  %51 = call i32 @SCTP_INC_STATS(%struct.net* %49, i32 %50)
  %52 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %53 = load i32, i32* @SCTP_LOWER_CWND_FAST_RTX, align 4
  %54 = call i32 @sctp_transport_lower_cwnd(%struct.sctp_transport* %52, i32 %53)
  %55 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %73

57:                                               ; preds = %3
  %58 = load %struct.net*, %struct.net** %7, align 8
  %59 = load i32, i32* @SCTP_MIB_PMTUD_RETRANSMITS, align 4
  %60 = call i32 @SCTP_INC_STATS(%struct.net* %58, i32 %59)
  br label %73

61:                                               ; preds = %3
  %62 = load %struct.net*, %struct.net** %7, align 8
  %63 = load i32, i32* @SCTP_MIB_T1_RETRANSMITS, align 4
  %64 = call i32 @SCTP_INC_STATS(%struct.net* %62, i32 %63)
  %65 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %66 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %73

71:                                               ; preds = %3
  %72 = call i32 (...) @BUG()
  br label %73

73:                                               ; preds = %71, %61, %57, %48, %36
  %74 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %75 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sctp_retransmit_mark(%struct.sctp_outq* %74, %struct.sctp_transport* %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 128
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %82 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32 (%struct.sctp_outq*, i32)*, i32 (%struct.sctp_outq*, i32)** %87, align 8
  %89 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %90 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %91 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %88(%struct.sctp_outq* %89, i32 %94)
  br label %96

96:                                               ; preds = %80, %73
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 131
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %101 = load i32, i32* @GFP_ATOMIC, align 4
  %102 = call i32 @sctp_outq_flush(%struct.sctp_outq* %100, i32 1, i32 %101)
  br label %103

103:                                              ; preds = %99, %96
  ret void
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @SCTP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @sctp_transport_lower_cwnd(%struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_assoc_update_retran_path(%struct.TYPE_12__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @sctp_retransmit_mark(%struct.sctp_outq*, %struct.sctp_transport*, i32) #1

declare dso_local i32 @sctp_outq_flush(%struct.sctp_outq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
