; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_connect_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_iface.c_lapb_connect_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lapb_cb = type { i64, i32 }

@LAPB_BADTOKEN = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4
@LAPB_STATE_1 = common dso_local global i64 0, align 8
@LAPB_CONNECTED = common dso_local global i32 0, align 4
@LAPB_STATE_3 = common dso_local global i64 0, align 8
@LAPB_STATE_4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"(%p) S0 -> S1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lapb_connect_request(%struct.net_device* %0) #0 {
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
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* @LAPB_OK, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %14 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LAPB_STATE_1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %44

19:                                               ; preds = %11
  %20 = load i32, i32* @LAPB_CONNECTED, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %22 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LAPB_STATE_3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %28 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LAPB_STATE_4, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %19
  br label %44

33:                                               ; preds = %26
  %34 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %35 = call i32 @lapb_establish_data_link(%struct.lapb_cb* %34)
  %36 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %37 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lapb_dbg(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @LAPB_STATE_1, align 8
  %41 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %42 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @LAPB_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %33, %32, %18
  %45 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %46 = call i32 @lapb_put(%struct.lapb_cb* %45)
  br label %47

47:                                               ; preds = %44, %10
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.lapb_cb* @lapb_devtostruct(%struct.net_device*) #1

declare dso_local i32 @lapb_establish_data_link(%struct.lapb_cb*) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32) #1

declare dso_local i32 @lapb_put(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
