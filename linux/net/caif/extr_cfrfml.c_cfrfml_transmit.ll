; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32)* }
%struct.TYPE_5__ = type { i32* }
%struct.cfpkt = type { i32 }
%struct.cfrfml = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@RFM_HEAD_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Connection error %d triggered on RFM link\0A\00", align 1
@CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfrfml_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfrfml_transmit(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca %struct.cfpkt*, align 8
  %9 = alloca %struct.cfpkt*, align 8
  %10 = alloca %struct.cfrfml*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %3, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %4, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %8, align 8
  %11 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  store %struct.cfpkt* %11, %struct.cfpkt** %9, align 8
  %12 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %13 = call %struct.cfrfml* @container_obj(%struct.cflayer* %12)
  store %struct.cfrfml* %13, %struct.cfrfml** %10, align 8
  %14 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %15 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @caif_assert(i32 %18)
  %20 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %21 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @caif_assert(i32 %26)
  %28 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %29 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %28, i32 0, i32 1
  %30 = call i32 @cfsrvl_ready(%struct.TYPE_8__* %29, i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %116

33:                                               ; preds = %2
  %34 = load i32, i32* @EPROTO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %37 = call i64 @cfpkt_getlen(%struct.cfpkt* %36)
  %38 = load i32, i32* @RFM_HEAD_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %116

43:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  %44 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %45 = call i64 @cfpkt_getlen(%struct.cfpkt* %44)
  %46 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %47 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @RFM_HEAD_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = icmp sgt i64 %45, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %56 = call i32 @cfpkt_peek_head(%struct.cfpkt* %54, i32* %55, i32 6)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %116

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %104, %61
  %63 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %64 = call i64 @cfpkt_getlen(%struct.cfpkt* %63)
  %65 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %66 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @RFM_HEAD_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = icmp sgt i64 %64, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %62
  store i32 1, i32* %6, align 4
  %73 = load i32, i32* @EPROTO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  %75 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %76 = call i64 @cfpkt_add_head(%struct.cfpkt* %75, i32* %6, i32 1)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %116

79:                                               ; preds = %72
  %80 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %81 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %82 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call %struct.cfpkt* @cfpkt_split(%struct.cfpkt* %80, i64 %83)
  store %struct.cfpkt* %84, %struct.cfpkt** %8, align 8
  %85 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %86 = icmp eq %struct.cfpkt* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %116

88:                                               ; preds = %79
  %89 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %90 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %91 = call i32 @cfrfml_transmit_segment(%struct.cfrfml* %89, %struct.cfpkt* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.cfpkt* null, %struct.cfpkt** %9, align 8
  br label %116

95:                                               ; preds = %88
  %96 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  store %struct.cfpkt* %96, %struct.cfpkt** %9, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %8, align 8
  %97 = load i32, i32* @EPROTO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  %99 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %101 = call i64 @cfpkt_add_head(%struct.cfpkt* %99, i32* %100, i32 6)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %116

104:                                              ; preds = %95
  br label %62

105:                                              ; preds = %62
  store i32 0, i32* %6, align 4
  %106 = load i32, i32* @EPROTO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  %108 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %109 = call i64 @cfpkt_add_head(%struct.cfpkt* %108, i32* %6, i32 1)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %116

112:                                              ; preds = %105
  %113 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %114 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %115 = call i32 @cfrfml_transmit_segment(%struct.cfrfml* %113, %struct.cfpkt* %114)
  store i32 %115, i32* %5, align 4
  store %struct.cfpkt* null, %struct.cfpkt** %9, align 8
  br label %116

116:                                              ; preds = %112, %111, %103, %94, %87, %78, %60, %42, %32
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %123 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_7__*, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32)** %125, align 8
  %127 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %128 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* @CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND, align 4
  %131 = load %struct.cfrfml*, %struct.cfrfml** %10, align 8
  %132 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %126(%struct.TYPE_7__* %129, i32 %130, i32 %135)
  %137 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %138 = icmp ne %struct.cfpkt* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %119
  %140 = load %struct.cfpkt*, %struct.cfpkt** %8, align 8
  %141 = call i32 @cfpkt_destroy(%struct.cfpkt* %140)
  br label %142

142:                                              ; preds = %139, %119
  %143 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %144 = icmp ne %struct.cfpkt* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.cfpkt*, %struct.cfpkt** %9, align 8
  %147 = call i32 @cfpkt_destroy(%struct.cfpkt* %146)
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %116
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local %struct.cfrfml* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @caif_assert(i32) #1

declare dso_local i32 @cfsrvl_ready(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_peek_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i64 @cfpkt_add_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local %struct.cfpkt* @cfpkt_split(%struct.cfpkt*, i64) #1

declare dso_local i32 @cfrfml_transmit_segment(%struct.cfrfml*, %struct.cfpkt*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
