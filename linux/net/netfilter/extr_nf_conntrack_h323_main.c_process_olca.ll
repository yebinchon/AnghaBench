; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_olca.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_h323_main.c_process_olca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"nf_ct_h323: OpenLogicalChannelAck\0A\00", align 1
@eOpenLogicalChannelAck_reverseLogicalChannelParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters = common dso_local global i64 0, align 8
@eOpenLogicalChannelAck_forwardMultiplexAckParameters = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters = common dso_local global i64 0, align 8
@eH2250LogicalChannelAckParameters_mediaChannel = common dso_local global i32 0, align 4
@eH2250LogicalChannelAckParameters_mediaControlChannel = common dso_local global i32 0, align 4
@eOpenLogicalChannelAck_separateStack = common dso_local global i32 0, align 4
@eNetworkAccessParameters_networkAddress_localAreaAddress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, %struct.TYPE_14__*)* @process_olca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_olca(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32 %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %15, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @eOpenLogicalChannelAck_reverseLogicalChannelParameters, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %7
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @eOpenLogicalChannelAck_reverseLogicalChannelParameters_multiplexParameters_h2250LogicalChannelParameters, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8**, i8*** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = call i32 @process_h245_channel(%struct.sk_buff* %42, %struct.nf_conn* %43, i32 %44, i32 %45, i8** %46, i32 %47, i32* %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 -1, i32* %8, align 4
  br label %149

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %33, %25, %7
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @eOpenLogicalChannelAck_forwardMultiplexAckParameters, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %57
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @eOpenLogicalChannelAck_forwardMultiplexAckParameters_h2250LogicalChannelAckParameters, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %64
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %16, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @eH2250LogicalChannelAckParameters_mediaChannel, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i8**, i8*** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 2
  %90 = call i32 @expect_rtp_rtcp(%struct.sk_buff* %82, %struct.nf_conn* %83, i32 %84, i32 %85, i8** %86, i32 %87, i32* %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 -1, i32* %8, align 4
  br label %149

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %71
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @eH2250LogicalChannelAckParameters_mediaControlChannel, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i8**, i8*** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = call i32 @expect_rtp_rtcp(%struct.sk_buff* %103, %struct.nf_conn* %104, i32 %105, i32 %106, i8** %107, i32 %108, i32* %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 -1, i32* %8, align 4
  br label %149

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %116, %64, %57
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @eOpenLogicalChannelAck_separateStack, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @eNetworkAccessParameters_networkAddress_localAreaAddress, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %124
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i8**, i8*** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = call i32 @expect_t120(%struct.sk_buff* %133, %struct.nf_conn* %134, i32 %135, i32 %136, i8** %137, i32 %138, i32* %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 -1, i32* %8, align 4
  br label %149

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %124, %117
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %146, %114, %93, %55
  %150 = load i32, i32* %8, align 4
  ret i32 %150
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @process_h245_channel(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_rtp_rtcp(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

declare dso_local i32 @expect_t120(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
