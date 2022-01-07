; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_disconnect_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_disconnect_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapb_cb = type { i32, i32, i64 }

@LAPB_BADTOKEN = common dso_local global i32 0, align 4
@LAPB_NOTCONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"(%p) S1 TX DISC(1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(%p) S1 -> S0\0A\00", align 1
@LAPB_DISC = common dso_local global i32 0, align 4
@LAPB_POLLON = common dso_local global i32 0, align 4
@LAPB_COMMAND = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"(%p) S3 DISC(1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"(%p) S3 -> S2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_disconnect_request(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.lapb_cb* @lapb_devtostruct(%struct.net_device* %5)
  store %struct.lapb_cb* %6, %struct.lapb_cb** %3, align 8
  %7 = load i32, i32* @LAPB_BADTOKEN, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %9 = icmp ne %struct.lapb_cb* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1
  %12 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %13 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %38 [
    i32 130, label %15
    i32 129, label %17
    i32 128, label %36
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @LAPB_NOTCONNECTED, align 4
  store i32 %16, i32* %4, align 4
  br label %63

17:                                               ; preds = %11
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %19 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %23 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %27 = load i32, i32* @LAPB_DISC, align 4
  %28 = load i32, i32* @LAPB_POLLON, align 4
  %29 = load i32, i32* @LAPB_COMMAND, align 4
  %30 = call i32 @lapb_send_control(%struct.lapb_cb* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %32 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %31, i32 0, i32 0
  store i32 130, i32* %32, align 8
  %33 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %34 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %33)
  %35 = load i32, i32* @LAPB_NOTCONNECTED, align 4
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %11
  %37 = load i32, i32* @LAPB_OK, align 4
  store i32 %37, i32* %4, align 4
  br label %63

38:                                               ; preds = %11
  %39 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %40 = call i32 @lapb_clear_queues(%struct.lapb_cb* %39)
  %41 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %42 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %44 = load i32, i32* @LAPB_DISC, align 4
  %45 = load i32, i32* @LAPB_POLLON, align 4
  %46 = load i32, i32* @LAPB_COMMAND, align 4
  %47 = call i32 @lapb_send_control(%struct.lapb_cb* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %49 = call i32 @lapb_start_t1timer(%struct.lapb_cb* %48)
  %50 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %51 = call i32 @lapb_stop_t2timer(%struct.lapb_cb* %50)
  %52 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %53 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %52, i32 0, i32 0
  store i32 128, i32* %53, align 8
  %54 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %55 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lapb_dbg(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %59 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @LAPB_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %38, %36, %17, %15
  %64 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %65 = call i32 @lapb_put(%struct.lapb_cb* %64)
  br label %66

66:                                               ; preds = %63, %10
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.lapb_cb* @lapb_devtostruct(%struct.net_device*) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32) #1

declare dso_local i32 @lapb_send_control(%struct.lapb_cb*, i32, i32, i32) #1

declare dso_local i32 @lapb_start_t1timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_clear_queues(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_stop_t2timer(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_put(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
