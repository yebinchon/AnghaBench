; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfrfml.c_cfrfml_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cflayer = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32)* }
%struct.cfpkt = type { i32 }
%struct.cfrfml = type { i64, i32, %struct.TYPE_8__, %struct.cfpkt*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, %struct.cfpkt*)* }

@EPROTO = common dso_local global i32 0, align 4
@RFM_SEGMENTATION_BIT = common dso_local global i32 0, align 4
@RFM_HEAD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Connection error %d triggered on RFM link\0A\00", align 1
@CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cflayer*, %struct.cfpkt*)* @cfrfml_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfrfml_receive(%struct.cflayer* %0, %struct.cfpkt* %1) #0 {
  %3 = alloca %struct.cflayer*, align 8
  %4 = alloca %struct.cfpkt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  %9 = alloca %struct.cfrfml*, align 8
  %10 = alloca %struct.cfpkt*, align 8
  store %struct.cflayer* %0, %struct.cflayer** %3, align 8
  store %struct.cfpkt* %1, %struct.cfpkt** %4, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %10, align 8
  %11 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %12 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @caif_assert(i32 %15)
  %17 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %18 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @caif_assert(i32 %21)
  %23 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %24 = call %struct.cfrfml* @container_obj(%struct.cflayer* %23)
  store %struct.cfrfml* %24, %struct.cfrfml** %9, align 8
  %25 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %26 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %25, i32 0, i32 1
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %31 = call i64 @cfpkt_extr_head(%struct.cfpkt* %30, i32* %5, i32 1)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %142

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @RFM_SEGMENTATION_BIT, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %92

40:                                               ; preds = %34
  %41 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %42 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %41, i32 0, i32 3
  %43 = load %struct.cfpkt*, %struct.cfpkt** %42, align 8
  %44 = icmp eq %struct.cfpkt* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %47 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %48 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @cfpkt_peek_head(%struct.cfpkt* %46, i64 %49, i32 6)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %142

53:                                               ; preds = %45
  %54 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %55 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 4
  %58 = call i64 @get_unaligned_le16(i64 %57)
  %59 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %60 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %62 = call i64 @cfpkt_erroneous(%struct.cfpkt* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %142

65:                                               ; preds = %53
  %66 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %67 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %68 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %67, i32 0, i32 3
  store %struct.cfpkt* %66, %struct.cfpkt** %68, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %4, align 8
  br label %91

69:                                               ; preds = %40
  %70 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %72 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %73 = call %struct.cfpkt* @rfm_append(%struct.cfrfml* %70, i32* %71, %struct.cfpkt* %72, i32* %7)
  store %struct.cfpkt* %73, %struct.cfpkt** %10, align 8
  %74 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %75 = icmp eq %struct.cfpkt* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %142

77:                                               ; preds = %69
  %78 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %79 = call i64 @cfpkt_erroneous(%struct.cfpkt* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %142

82:                                               ; preds = %77
  %83 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %84 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %85 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %84, i32 0, i32 3
  store %struct.cfpkt* %83, %struct.cfpkt** %85, align 8
  %86 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %87 = call i64 @cfpkt_erroneous(%struct.cfpkt* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %142

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %65
  store i32 0, i32* %7, align 4
  br label %142

92:                                               ; preds = %34
  %93 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %94 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %93, i32 0, i32 3
  %95 = load %struct.cfpkt*, %struct.cfpkt** %94, align 8
  %96 = icmp ne %struct.cfpkt* %95, null
  br i1 %96, label %97, label %127

97:                                               ; preds = %92
  %98 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %100 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %101 = call %struct.cfpkt* @rfm_append(%struct.cfrfml* %98, i32* %99, %struct.cfpkt* %100, i32* %7)
  store %struct.cfpkt* %101, %struct.cfpkt** %10, align 8
  %102 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %103 = icmp eq %struct.cfpkt* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %142

105:                                              ; preds = %97
  %106 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %107 = call i64 @cfpkt_erroneous(%struct.cfpkt* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %142

110:                                              ; preds = %105
  %111 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %112 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %111, i32 0, i32 3
  store %struct.cfpkt* null, %struct.cfpkt** %112, align 8
  %113 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  store %struct.cfpkt* %113, %struct.cfpkt** %4, align 8
  store %struct.cfpkt* null, %struct.cfpkt** %10, align 8
  %114 = load i32, i32* @EPROTO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  %116 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %117 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %120 = call i64 @cfpkt_getlen(%struct.cfpkt* %119)
  %121 = load i64, i64* @RFM_HEAD_SIZE, align 8
  %122 = sub nsw i64 %120, %121
  %123 = add nsw i64 %122, 1
  %124 = icmp ne i64 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %110
  br label %142

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %92
  %128 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %129 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_10__*, %struct.cfpkt*)*, i32 (%struct.TYPE_10__*, %struct.cfpkt*)** %133, align 8
  %135 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %136 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %141 = call i32 %134(%struct.TYPE_10__* %139, %struct.cfpkt* %140)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %127, %125, %109, %104, %91, %89, %81, %76, %64, %52, %33
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %187

145:                                              ; preds = %142
  %146 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %147 = icmp ne %struct.cfpkt* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.cfpkt*, %struct.cfpkt** %10, align 8
  %150 = call i32 @cfpkt_destroy(%struct.cfpkt* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %153 = icmp ne %struct.cfpkt* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load %struct.cfpkt*, %struct.cfpkt** %4, align 8
  %156 = call i32 @cfpkt_destroy(%struct.cfpkt* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %159 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %158, i32 0, i32 3
  %160 = load %struct.cfpkt*, %struct.cfpkt** %159, align 8
  %161 = icmp ne %struct.cfpkt* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %164 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %163, i32 0, i32 3
  %165 = load %struct.cfpkt*, %struct.cfpkt** %164, align 8
  %166 = call i32 @cfpkt_destroy(%struct.cfpkt* %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %169 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %168, i32 0, i32 3
  store %struct.cfpkt* null, %struct.cfpkt** %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %173 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %172, i32 0, i32 0
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %175, align 8
  %177 = load %struct.cflayer*, %struct.cflayer** %3, align 8
  %178 = getelementptr inbounds %struct.cflayer, %struct.cflayer* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load i32, i32* @CAIF_CTRLCMD_REMOTE_SHUTDOWN_IND, align 4
  %181 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %182 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 %176(%struct.TYPE_9__* %179, i32 %180, i32 %185)
  br label %187

187:                                              ; preds = %167, %142
  %188 = load %struct.cfrfml*, %struct.cfrfml** %9, align 8
  %189 = getelementptr inbounds %struct.cfrfml, %struct.cfrfml* %188, i32 0, i32 1
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @EAGAIN, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp eq i32 %191, %193
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %7, align 4
  br label %201

201:                                              ; preds = %198, %187
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local i32 @caif_assert(i32) #1

declare dso_local %struct.cfrfml* @container_obj(%struct.cflayer*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @cfpkt_extr_head(%struct.cfpkt*, i32*, i32) #1

declare dso_local i64 @cfpkt_peek_head(%struct.cfpkt*, i64, i32) #1

declare dso_local i64 @get_unaligned_le16(i64) #1

declare dso_local i64 @cfpkt_erroneous(%struct.cfpkt*) #1

declare dso_local %struct.cfpkt* @rfm_append(%struct.cfrfml*, i32*, %struct.cfpkt*, i32*) #1

declare dso_local i64 @cfpkt_getlen(%struct.cfpkt*) #1

declare dso_local i32 @cfpkt_destroy(%struct.cfpkt*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
