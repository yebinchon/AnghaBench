; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_ring_buffer_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Starting ring buffer hammer\0A\00", align 1
@RUN_TIME = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@write_iteration = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@consumer = common dso_local global i64 0, align 8
@wakeup_interval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"End ring buffer hammer\0A\00", align 1
@read_start = common dso_local global i32 0, align 4
@read_done = common dso_local global i32 0, align 4
@reader_finish = common dso_local global i32 0, align 4
@test_error = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"ERROR!\0A\00", align 1
@disable_reader = common dso_local global i64 0, align 8
@consumer_fifo = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Running Consumer at nice: %d\0A\00", align 1
@consumer_nice = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Running Consumer at SCHED_FIFO %d\0A\00", align 1
@producer_fifo = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Running Producer at nice: %d\0A\00", align 1
@producer_nice = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Running Producer at SCHED_FIFO %d\0A\00", align 1
@MAX_NICE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"WARNING!!! This test is running at lowest priority.\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Time:     %lld (usecs)\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Overruns: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Read:     (reader disabled)\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Read:     %ld  (by %s)\0A\00", align 1
@read = common dso_local global i64 0, align 8
@read_events = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Entries:  %lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Total:    %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Missed:   %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Hit:      %ld\0A\00", align 1
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"TIME IS ZERO??\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Entries per millisec: %ld\0A\00", align 1
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [18 x i8] c"%ld ns per entry\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Total iterations per millisec: %ld\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"hit + missed overflowed and totalled zero!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ring_buffer_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_buffer_producer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @RUN_TIME, align 4
  %18 = load i32, i32* @NSEC_PER_SEC, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @ktime_add_ns(i32 %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %79, %0
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @write_iteration, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32, i32* @buffer, align 4
  %28 = call %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32 %27, i32 10)
  store %struct.ring_buffer_event* %28, %struct.ring_buffer_event** %11, align 8
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %30 = icmp ne %struct.ring_buffer_event* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %44

34:                                               ; preds = %26
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %8, align 8
  %37 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %38 = call i32* @ring_buffer_event_data(%struct.ring_buffer_event* %37)
  store i32* %38, i32** %12, align 8
  %39 = call i32 (...) @smp_processor_id()
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @buffer, align 4
  %42 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %43 = call i32 @ring_buffer_unlock_commit(i32 %41, %struct.ring_buffer_event* %42)
  br label %44

44:                                               ; preds = %34, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %22

48:                                               ; preds = %22
  %49 = call i32 (...) @ktime_get()
  store i32 %49, i32* %2, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = load i64, i64* @consumer, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @wakeup_interval, align 4
  %57 = srem i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @consumer, align 8
  %61 = call i32 @wake_up_process(i64 %60)
  br label %62

62:                                               ; preds = %59, %54, %48
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @wakeup_interval, align 4
  %65 = srem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (...) @cond_resched()
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @ktime_before(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = call i32 (...) @break_test()
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i1 [ false, %70 ], [ %78, %75 ]
  br i1 %80, label %21, label %81

81:                                               ; preds = %79
  %82 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i64, i64* @consumer, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = call i32 @init_completion(i32* @read_start)
  %87 = call i32 @init_completion(i32* @read_done)
  %88 = call i32 (...) @smp_wmb()
  store i32 1, i32* @reader_finish, align 4
  %89 = load i64, i64* @consumer, align 8
  %90 = call i32 @wake_up_process(i64 %89)
  %91 = call i32 @wait_for_completion(i32* @read_done)
  br label %92

92:                                               ; preds = %85, %81
  %93 = load i32, i32* %2, align 4
  %94 = load i32, i32* %1, align 4
  %95 = call i64 @ktime_us_delta(i32 %93, i32 %94)
  store i64 %95, i64* %4, align 8
  %96 = load i32, i32* @buffer, align 4
  %97 = call i64 @ring_buffer_entries(i32 %96)
  store i64 %97, i64* %5, align 8
  %98 = load i32, i32* @buffer, align 4
  %99 = call i64 @ring_buffer_overruns(i32 %98)
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* @test_error, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %92
  %105 = load i64, i64* @disable_reader, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @consumer_fifo, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* @consumer_nice, align 8
  %112 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  br label %116

113:                                              ; preds = %107
  %114 = load i64, i64* @consumer_fifo, align 8
  %115 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i64, i64* @producer_fifo, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* @producer_nice, align 8
  %122 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %121)
  br label %126

123:                                              ; preds = %117
  %124 = load i64, i64* @producer_fifo, align 8
  %125 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i64, i64* @producer_fifo, align 8
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load i64, i64* @consumer_fifo, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i64, i64* @producer_nice, align 8
  %134 = load i64, i64* @MAX_NICE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load i64, i64* @consumer_nice, align 8
  %138 = load i64, i64* @MAX_NICE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136, %132, %129, %126
  %143 = load i64, i64* %4, align 8
  %144 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %143)
  %145 = load i64, i64* %6, align 8
  %146 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %145)
  %147 = load i64, i64* @disable_reader, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %158

151:                                              ; preds = %142
  %152 = load i64, i64* @read, align 8
  %153 = load i64, i64* @read_events, align 8
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %157 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i64 %152, i8* %156)
  br label %158

158:                                              ; preds = %151, %149
  %159 = load i64, i64* %5, align 8
  %160 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i64 %159)
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %161, %162
  %164 = load i64, i64* @read, align 8
  %165 = add i64 %163, %164
  %166 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i64 %165)
  %167 = load i64, i64* %7, align 8
  %168 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i64 %167)
  %169 = load i64, i64* %8, align 8
  %170 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %169)
  %171 = load i64, i64* %4, align 8
  %172 = load i32, i32* @USEC_PER_MSEC, align 4
  %173 = call i32 @do_div(i64 %171, i32 %172)
  %174 = load i64, i64* %4, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %158
  %177 = load i64, i64* %4, align 8
  %178 = load i64, i64* %8, align 8
  %179 = udiv i64 %178, %177
  store i64 %179, i64* %8, align 8
  br label %182

180:                                              ; preds = %158
  %181 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %176
  %183 = load i64, i64* %8, align 8
  %184 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i64 %183)
  %185 = load i64, i64* %8, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182
  %188 = load i64, i64* @NSEC_PER_MSEC, align 8
  %189 = load i64, i64* %8, align 8
  %190 = udiv i64 %188, %189
  store i64 %190, i64* %9, align 8
  %191 = load i64, i64* %9, align 8
  %192 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i64 %191)
  br label %193

193:                                              ; preds = %187, %182
  %194 = load i64, i64* %7, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %224

196:                                              ; preds = %193
  %197 = load i64, i64* %4, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i64, i64* %4, align 8
  %201 = load i64, i64* %7, align 8
  %202 = udiv i64 %201, %200
  store i64 %202, i64* %7, align 8
  br label %203

203:                                              ; preds = %199, %196
  %204 = load i64, i64* %8, align 8
  %205 = load i64, i64* %7, align 8
  %206 = add i64 %204, %205
  %207 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i64 %206)
  %208 = load i64, i64* %8, align 8
  %209 = load i64, i64* %7, align 8
  %210 = add i64 %208, %209
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %203
  %213 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  %214 = load i64, i64* %8, align 8
  %215 = add i64 %214, -1
  store i64 %215, i64* %8, align 8
  br label %216

216:                                              ; preds = %212, %203
  %217 = load i64, i64* @NSEC_PER_MSEC, align 8
  %218 = load i64, i64* %8, align 8
  %219 = load i64, i64* %7, align 8
  %220 = add i64 %218, %219
  %221 = udiv i64 %217, %220
  store i64 %221, i64* %9, align 8
  %222 = load i64, i64* %9, align 8
  %223 = call i32 (i8*, ...) @trace_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i64 %222)
  br label %224

224:                                              ; preds = %216, %193
  ret void
}

declare dso_local i32 @trace_printk(i8*, ...) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_add_ns(i32, i32) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(i32, i32) #1

declare dso_local i32* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @ring_buffer_unlock_commit(i32, %struct.ring_buffer_event*) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

declare dso_local i32 @break_test(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i64 @ring_buffer_entries(i32) #1

declare dso_local i64 @ring_buffer_overruns(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
