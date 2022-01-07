; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_classify_txseq.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_classify_txseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"chan %p, txseq %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"last_acked_seq %d, expected_tx_seq %d\00", align 1
@L2CAP_RX_STATE_SREJ_SENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid/Ignore - after SREJ\00", align 1
@L2CAP_TXSEQ_INVALID_IGNORE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid - in window after SREJ sent\00", align 1
@L2CAP_TXSEQ_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Expected SREJ\00", align 1
@L2CAP_TXSEQ_EXPECTED_SREJ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Duplicate SREJ - txseq already stored\00", align 1
@L2CAP_TXSEQ_DUPLICATE_SREJ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Unexpected SREJ - not requested\00", align 1
@L2CAP_TXSEQ_UNEXPECTED_SREJ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Invalid - txseq outside tx window\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Expected\00", align 1
@L2CAP_TXSEQ_EXPECTED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"Duplicate - expected_tx_seq later than txseq\00", align 1
@L2CAP_TXSEQ_DUPLICATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Invalid/Ignore - txseq outside tx window\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Unexpected - txseq indicates missing frames\00", align 1
@L2CAP_TXSEQ_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, i64)* @l2cap_classify_txseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_classify_txseq(%struct.l2cap_chan* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %6, i64 %7)
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %11, i64 %14)
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @L2CAP_RX_STATE_SREJ_SENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %2
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @__seq_offset(%struct.l2cap_chan* %22, i64 %23, i32 %26)
  %28 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %29 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = ashr i32 %39, 1
  %41 = icmp sle i32 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @L2CAP_TXSEQ_INVALID_IGNORE, align 4
  store i32 %44, i32* %3, align 4
  br label %149

45:                                               ; preds = %32
  %46 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @L2CAP_TXSEQ_INVALID, align 4
  store i32 %47, i32* %3, align 4
  br label %149

48:                                               ; preds = %21
  %49 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %50 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @L2CAP_TXSEQ_EXPECTED_SREJ, align 4
  store i32 %57, i32* %3, align 4
  br label %149

58:                                               ; preds = %48
  %59 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %59, i32 0, i32 6
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @l2cap_ertm_seq_in_queue(i32* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @L2CAP_TXSEQ_DUPLICATE_SREJ, align 4
  store i32 %66, i32* %3, align 4
  br label %149

67:                                               ; preds = %58
  %68 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %69 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %68, i32 0, i32 5
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @l2cap_seq_list_contains(%struct.TYPE_2__* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @L2CAP_TXSEQ_UNEXPECTED_SREJ, align 4
  store i32 %75, i32* %3, align 4
  br label %149

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %2
  %78 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %79 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %87 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @__seq_offset(%struct.l2cap_chan* %84, i64 %85, i32 %88)
  %90 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %91 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %96 = load i32, i32* @L2CAP_TXSEQ_INVALID, align 4
  store i32 %96, i32* %3, align 4
  br label %149

97:                                               ; preds = %83
  %98 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* @L2CAP_TXSEQ_EXPECTED, align 4
  store i32 %99, i32* %3, align 4
  br label %149

100:                                              ; preds = %77
  %101 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %104 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @__seq_offset(%struct.l2cap_chan* %101, i64 %102, i32 %105)
  %107 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %112 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @__seq_offset(%struct.l2cap_chan* %107, i64 %110, i32 %113)
  %115 = icmp slt i32 %106, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %100
  %117 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %118 = load i32, i32* @L2CAP_TXSEQ_DUPLICATE, align 4
  store i32 %118, i32* %3, align 4
  br label %149

119:                                              ; preds = %100
  %120 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %123 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__seq_offset(%struct.l2cap_chan* %120, i64 %121, i32 %124)
  %126 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %127 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %119
  %131 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %132 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %135 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = ashr i32 %137, 1
  %139 = icmp sle i32 %133, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32, i32* @L2CAP_TXSEQ_INVALID_IGNORE, align 4
  store i32 %142, i32* %3, align 4
  br label %149

143:                                              ; preds = %130
  %144 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %145 = load i32, i32* @L2CAP_TXSEQ_INVALID, align 4
  store i32 %145, i32* %3, align 4
  br label %149

146:                                              ; preds = %119
  %147 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %148 = load i32, i32* @L2CAP_TXSEQ_UNEXPECTED, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %143, %140, %116, %97, %94, %73, %64, %55, %45, %42
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @__seq_offset(%struct.l2cap_chan*, i64, i32) #1

declare dso_local i64 @l2cap_ertm_seq_in_queue(i32*, i64) #1

declare dso_local i64 @l2cap_seq_list_contains(%struct.TYPE_2__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
