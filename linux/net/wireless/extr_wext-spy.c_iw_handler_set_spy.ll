; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_set_spy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_set_spy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iw_spy_data = type { i32, i32, i32* }
%struct.sockaddr = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IW_MAX_SPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iw_handler_set_spy(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.iw_spy_data*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.iw_spy_data* @get_spydata(%struct.net_device* %13)
  store %struct.iw_spy_data* %14, %struct.iw_spy_data** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.sockaddr*
  store %struct.sockaddr* %16, %struct.sockaddr** %11, align 8
  %17 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %18 = icmp ne %struct.iw_spy_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %77

22:                                               ; preds = %4
  %23 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %24 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = call i32 (...) @smp_wmb()
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %36 = bitcast %union.iwreq_data* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %42 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %48, i64 %50
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %47, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %61 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IW_MAX_SPY, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32 %62, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %59, %22
  %69 = call i32 (...) @smp_wmb()
  %70 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %71 = bitcast %union.iwreq_data* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %76 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %68, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.iw_spy_data* @get_spydata(%struct.net_device*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
