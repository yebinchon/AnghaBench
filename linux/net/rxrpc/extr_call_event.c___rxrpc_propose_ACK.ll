; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_call_event.c___rxrpc_propose_ACK.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_call_event.c___rxrpc_propose_ACK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@rxrpc_propose_ack_use = common dso_local global i32 0, align 4
@rxrpc_soft_ack_delay = common dso_local global i64 0, align 8
@rxrpc_ack_priority = common dso_local global i64* null, align 8
@RXRPC_ACK_PING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"prior %u %u vs %u %u\00", align 1
@RXRPC_ACK_UPDATEABLE = common dso_local global i32 0, align 4
@rxrpc_propose_ack_update = common dso_local global i32 0, align 4
@rxrpc_propose_ack_subsume = common dso_local global i32 0, align 4
@rxrpc_requested_ack_delay = common dso_local global i64 0, align 8
@rxrpc_idle_ack_delay = common dso_local global i64 0, align 8
@RXRPC_CALL_EV_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"already scheduled\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"immediate ACK %lx\00", align 1
@jiffies = common dso_local global i64 0, align 8
@rxrpc_timer_set_for_ack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, i64, i32, i32, i32, i32)* @__rxrpc_propose_ACK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rxrpc_propose_ACK(%struct.rxrpc_call* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rxrpc_call*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* @rxrpc_propose_ack_use, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* @rxrpc_soft_ack_delay, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64*, i64** @rxrpc_ack_priority, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @RXRPC_ACK_PING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @rxrpc_propose_ping(%struct.rxrpc_call* %28, i32 %29, i32 %30)
  br label %192

32:                                               ; preds = %6
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %36 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @rxrpc_ack_priority, align 8
  %39 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %40 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34, i64 %37, i64 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %47 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %32
  %51 = load i32, i32* @RXRPC_ACK_UPDATEABLE, align 4
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @rxrpc_propose_ack_update, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %61 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %50
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %192

66:                                               ; preds = %62
  br label %86

67:                                               ; preds = %32
  %68 = load i64, i64* %15, align 8
  %69 = load i64*, i64** @rxrpc_ack_priority, align 8
  %70 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %71 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64, i64* %69, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %68, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %79 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %82 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %85

83:                                               ; preds = %67
  %84 = load i32, i32* @rxrpc_propose_ack_subsume, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %76
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i64, i64* %8, align 8
  switch i64 %87, label %113 [
    i64 128, label %88
    i64 130, label %99
    i64 129, label %106
  ]

88:                                               ; preds = %86
  %89 = load i64, i64* @rxrpc_requested_ack_delay, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* @rxrpc_requested_ack_delay, align 8
  store i64 %93, i64* %14, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %114

99:                                               ; preds = %86
  %100 = load i64, i64* @rxrpc_soft_ack_delay, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i64, i64* @rxrpc_soft_ack_delay, align 8
  store i64 %104, i64* %14, align 8
  br label %105

105:                                              ; preds = %103, %99
  br label %114

106:                                              ; preds = %86
  %107 = load i64, i64* @rxrpc_idle_ack_delay, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i64, i64* @rxrpc_idle_ack_delay, align 8
  store i64 %111, i64* %14, align 8
  br label %112

112:                                              ; preds = %110, %106
  br label %114

113:                                              ; preds = %86
  store i32 1, i32* %10, align 4
  br label %114

114:                                              ; preds = %113, %112, %105, %98
  %115 = load i32, i32* @RXRPC_CALL_EV_ACK, align 4
  %116 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %117 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %116, i32 0, i32 5
  %118 = call i64 @test_bit(i32 %115, i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %191

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* %14, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125, %122
  %129 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %130 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @RXRPC_CALL_EV_ACK, align 4
  %134 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %135 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %134, i32 0, i32 5
  %136 = call i32 @test_and_set_bit(i32 %133, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %143 = call i32 @rxrpc_queue_call(%struct.rxrpc_call* %142)
  br label %144

144:                                              ; preds = %141, %138, %128
  br label %190

145:                                              ; preds = %125
  %146 = load i64, i64* @jiffies, align 8
  store i64 %146, i64* %16, align 8
  %147 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %148 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %147, i32 0, i32 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %145
  %154 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %155 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @nsecs_to_jiffies(i32 %158)
  store i64 %159, i64* %17, align 8
  br label %162

160:                                              ; preds = %145
  %161 = load i64, i64* %14, align 8
  store i64 %161, i64* %17, align 8
  br label %162

162:                                              ; preds = %160, %153
  %163 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %164 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @READ_ONCE(i32 %165)
  %167 = load i64, i64* %17, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %17, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %17, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %174 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @time_before(i64 %172, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %162
  %179 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %180 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %17, align 8
  %183 = call i32 @WRITE_ONCE(i32 %181, i64 %182)
  %184 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %185 = load i64, i64* %17, align 8
  %186 = load i64, i64* %16, align 8
  %187 = load i32, i32* @rxrpc_timer_set_for_ack, align 4
  %188 = call i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call* %184, i64 %185, i64 %186, i32 %187)
  br label %189

189:                                              ; preds = %178, %162
  br label %190

190:                                              ; preds = %189, %144
  br label %191

191:                                              ; preds = %190, %120
  br label %192

192:                                              ; preds = %191, %65, %27
  %193 = load %struct.rxrpc_call*, %struct.rxrpc_call** %7, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i64, i64* %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @trace_rxrpc_propose_ack(%struct.rxrpc_call* %193, i32 %194, i64 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  ret void
}

declare dso_local i32 @rxrpc_propose_ping(%struct.rxrpc_call*, i32, i32) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @rxrpc_queue_call(%struct.rxrpc_call*) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @rxrpc_reduce_call_timer(%struct.rxrpc_call*, i64, i64, i32) #1

declare dso_local i32 @trace_rxrpc_propose_ack(%struct.rxrpc_call*, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
