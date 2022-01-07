; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_wait_memory.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_stream.c_sk_stream_wait_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_stream_wait_memory(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @woken_wake_function, align 4
  %12 = call i32 @DEFINE_WAIT_FUNC(i32 %10, i32 %11)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call i64 @sk_stream_memory_free(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = call i32 (...) @prandom_u32()
  %18 = load i32, i32* @HZ, align 4
  %19 = sdiv i32 %18, 5
  %20 = srem i32 %17, %19
  %21 = add nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @sk_sleep(%struct.sock* %24)
  %26 = call i32 @add_wait_queue(i32 %25, i32* @wait)
  br label %27

27:                                               ; preds = %23, %123
  %28 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @sk_set_bit(i32 %28, %struct.sock* %29)
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SEND_SHUTDOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %27
  br label %132

43:                                               ; preds = %35
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %135

48:                                               ; preds = %43
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %144

53:                                               ; preds = %48
  %54 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 @sk_clear_bit(i32 %54, %struct.sock* %55)
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i64 @sk_stream_memory_free(%struct.sock* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %126

64:                                               ; preds = %60, %53
  %65 = load i32, i32* @SOCK_NOSPACE, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @set_bit(i32 %65, i32* %69)
  %71 = load %struct.sock*, %struct.sock** %3, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  %75 = load %struct.sock*, %struct.sock** %3, align 8
  %76 = load %struct.sock*, %struct.sock** %3, align 8
  %77 = getelementptr inbounds %struct.sock, %struct.sock* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %64
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SEND_SHUTDOWN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %80
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call i64 @sk_stream_memory_free(%struct.sock* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ false, %87 ], [ %94, %91 ]
  br label %97

97:                                               ; preds = %95, %80, %64
  %98 = phi i1 [ true, %80 ], [ true, %64 ], [ %96, %95 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @sk_wait_event(%struct.sock* %75, i64* %7, i32 %99, i32* @wait)
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %123

107:                                              ; preds = %97
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %6, align 8
  %111 = load i64*, i64** %4, align 8
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = sub nsw i64 %118, %117
  store i64 %119, i64* %7, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i64 0, i64* %7, align 8
  br label %122

122:                                              ; preds = %121, %116, %107
  store i64 0, i64* %6, align 8
  br label %123

123:                                              ; preds = %122, %97
  %124 = load i64, i64* %7, align 8
  %125 = load i64*, i64** %4, align 8
  store i64 %124, i64* %125, align 8
  br label %27

126:                                              ; preds = %63
  br label %127

127:                                              ; preds = %144, %135, %132, %126
  %128 = load %struct.sock*, %struct.sock** %3, align 8
  %129 = call i32 @sk_sleep(%struct.sock* %128)
  %130 = call i32 @remove_wait_queue(i32 %129, i32* @wait)
  %131 = load i32, i32* %5, align 4
  ret i32 %131

132:                                              ; preds = %42
  %133 = load i32, i32* @EPIPE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %127

135:                                              ; preds = %47
  %136 = load i32, i32* @SOCK_NOSPACE, align 4
  %137 = load %struct.sock*, %struct.sock** %3, align 8
  %138 = getelementptr inbounds %struct.sock, %struct.sock* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = call i32 @set_bit(i32 %136, i32* %140)
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %5, align 4
  br label %127

144:                                              ; preds = %52
  %145 = load i64*, i64** %4, align 8
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @sock_intr_errno(i64 %146)
  store i32 %147, i32* %5, align 4
  br label %127
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @sk_stream_memory_free(%struct.sock*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
