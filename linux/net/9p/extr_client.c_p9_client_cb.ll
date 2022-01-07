; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32 }
%struct.p9_req_t = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c" tag %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wakeup: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p9_client_cb(%struct.p9_client* %0, %struct.p9_req_t* %1, i32 %2) #0 {
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @P9_DEBUG_MUX, align 4
  %8 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %9 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @p9_debug(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @smp_wmb()
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %16 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %18 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %17, i32 0, i32 2
  %19 = call i32 @wake_up(i32* %18)
  %20 = load i32, i32* @P9_DEBUG_MUX, align 4
  %21 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %22 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @p9_debug(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %27 = call i32 @p9_req_put(%struct.p9_req_t* %26)
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @p9_req_put(%struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
