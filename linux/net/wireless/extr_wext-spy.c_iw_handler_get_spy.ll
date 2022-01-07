; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_get_spy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-spy.c_iw_handler_get_spy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iw_spy_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i8*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@AF_UNIX = common dso_local global i32 0, align 4
@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iw_handler_get_spy(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
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
  br label %106

22:                                               ; preds = %4
  %23 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %24 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %27 = bitcast %union.iwreq_data* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %57, %22
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %32 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i64 %38
  %40 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %43 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* @ETH_ALEN, align 4
  %50 = call i32 @memcpy(i8* %41, %struct.TYPE_4__* %48, i32 %49)
  %51 = load i32, i32* @AF_UNIX, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i64 %54
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 8
  br label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %29

60:                                               ; preds = %29
  %61 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %62 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %68 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 16, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  %73 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %74 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %77 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %72, %struct.TYPE_4__* %75, i32 %81)
  br label %83

83:                                               ; preds = %65, %60
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %102, %83
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %87 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.iw_spy_data*, %struct.iw_spy_data** %10, align 8
  %94 = getelementptr inbounds %struct.iw_spy_data, %struct.iw_spy_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %92
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %84

105:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %105, %19
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local %struct.iw_spy_data* @get_spydata(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
