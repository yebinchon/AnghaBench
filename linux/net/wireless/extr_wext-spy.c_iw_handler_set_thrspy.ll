; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_set_thrspy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_set_thrspy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { i32 }
%struct.iw_spy_data = type { i32, i32 }
%struct.iw_thrspy = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iw_handler_set_thrspy(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_spy_data*, align 8
  %11 = alloca %struct.iw_thrspy*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.iw_spy_data* @get_spydata(%struct.net_device* %12)
  store %struct.iw_spy_data* %13, %struct.iw_spy_data** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.iw_thrspy*
  store %struct.iw_thrspy* %15, %struct.iw_thrspy** %11, align 8
  %16 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %17 = icmp ne %struct.iw_spy_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %31

21:                                               ; preds = %4
  %22 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %23 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %22, i32 0, i32 1
  %24 = load %struct.iw_thrspy*, %struct.iw_thrspy** %11, align 8
  %25 = getelementptr inbounds %struct.iw_thrspy, %struct.iw_thrspy* %24, i32 0, i32 0
  %26 = call i32 @memcpy(i32* %23, i32* %25, i32 8)
  %27 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %28 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memset(i32 %29, i8 signext 0, i32 4)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.iw_spy_data* @get_spydata(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
