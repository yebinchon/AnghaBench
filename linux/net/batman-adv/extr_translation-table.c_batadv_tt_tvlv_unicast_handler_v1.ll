; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_tvlv_unicast_handler_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_tvlv_unicast_handler_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tvlv_tt_data = type { i32, i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@BATADV_TT_DATA_TYPE_MASK = common dso_local global i32 0, align 4
@BATADV_CNT_TT_REQUEST_RX = common dso_local global i32 0, align 4
@BATADV_TT_FULL_TABLE = common dso_local global i32 0, align 4
@BATADV_DBG_TT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Routing TT_REQUEST to %pM [%c]\0A\00", align 1
@NET_RX_DROP = common dso_local global i32 0, align 4
@BATADV_CNT_TT_RESPONSE_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Routing TT_RESPONSE to %pM [%c]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, i32*, i32*, i8*, i32)* @batadv_tt_tvlv_unicast_handler_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tt_tvlv_unicast_handler_v1(%struct.batadv_priv* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.batadv_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %21, i32* %6, align 4
  br label %112

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.batadv_tvlv_tt_data*
  store %struct.batadv_tvlv_tt_data* %24, %struct.batadv_tvlv_tt_data** %12, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  store i32 4, i32* %13, align 4
  %29 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %30 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ntohs(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %112

40:                                               ; preds = %22
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @batadv_tt_entries(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %47 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BATADV_TT_DATA_TYPE_MASK, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %110 [
    i32 129, label %51
    i32 128, label %79
  ]

51:                                               ; preds = %40
  %52 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %53 = load i32, i32* @BATADV_CNT_TT_REQUEST_RX, align 4
  %54 = call i32 @batadv_inc_counter(%struct.batadv_priv* %52, i32 %53)
  %55 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %56 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @batadv_send_tt_response(%struct.batadv_priv* %55, %struct.batadv_tvlv_tt_data* %56, i32* %57, i32* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %51
  %63 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %64 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i8 70, i8* %15, align 1
  br label %71

70:                                               ; preds = %62
  store i8 46, i8* %15, align 1
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* @BATADV_DBG_TT, align 4
  %73 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i8, i8* %15, align 1
  %76 = call i32 @batadv_dbg(i32 %72, %struct.batadv_priv* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %74, i8 signext %75)
  %77 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %77, i32* %6, align 4
  br label %112

78:                                               ; preds = %51
  br label %110

79:                                               ; preds = %40
  %80 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %81 = load i32, i32* @BATADV_CNT_TT_RESPONSE_RX, align 4
  %82 = call i32 @batadv_inc_counter(%struct.batadv_priv* %80, i32 %81)
  %83 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @batadv_is_my_mac(%struct.batadv_priv* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %89 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @batadv_handle_tt_response(%struct.batadv_priv* %88, %struct.batadv_tvlv_tt_data* %89, i32* %90, i32 %91)
  %93 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %93, i32* %6, align 4
  br label %112

94:                                               ; preds = %79
  %95 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %12, align 8
  %96 = getelementptr inbounds %struct.batadv_tvlv_tt_data, %struct.batadv_tvlv_tt_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BATADV_TT_FULL_TABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i8 70, i8* %15, align 1
  br label %103

102:                                              ; preds = %94
  store i8 46, i8* %15, align 1
  br label %103

103:                                              ; preds = %102, %101
  %104 = load i32, i32* @BATADV_DBG_TT, align 4
  %105 = load %struct.batadv_priv*, %struct.batadv_priv** %7, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i8, i8* %15, align 1
  %108 = call i32 @batadv_dbg(i32 %104, %struct.batadv_priv* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %106, i8 signext %107)
  %109 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %109, i32* %6, align 4
  br label %112

110:                                              ; preds = %40, %78
  %111 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %103, %87, %71, %38, %20
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_tt_entries(i32) #1

declare dso_local i32 @batadv_inc_counter(%struct.batadv_priv*, i32) #1

declare dso_local i32 @batadv_send_tt_response(%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, i32*, i32*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i32*, i8 signext) #1

declare dso_local i32 @batadv_is_my_mac(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_handle_tt_response(%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
