; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_poll_one_napi.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_poll_one_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 (%struct.napi_struct*, i32)*, i32 }

@NAPI_STATE_NPSVC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%pS exceeded budget in poll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.napi_struct*)* @poll_one_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_one_napi(%struct.napi_struct* %0) #0 {
  %2 = alloca %struct.napi_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %2, align 8
  %4 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %5 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %6 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %5, i32 0, i32 1
  %7 = call i64 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %12 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %11, i32 0, i32 0
  %13 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %12, align 8
  %14 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %15 = call i32 %13(%struct.napi_struct* %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %18 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %17, i32 0, i32 0
  %19 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %18, align 8
  %20 = call i32 @WARN_ONCE(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 (%struct.napi_struct*, i32)* %19)
  %21 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @trace_napi_poll(%struct.napi_struct* %21, i32 %22, i32 0)
  %24 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %25 = load %struct.napi_struct*, %struct.napi_struct** %2, align 8
  %26 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  br label %28

28:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32 (%struct.napi_struct*, i32)*) #1

declare dso_local i32 @trace_napi_poll(%struct.napi_struct*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
