; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_udp_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_udp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { i64, %struct.xt_l2tp_info* }
%struct.xt_l2tp_info = type { i32 }
%union.l2tp_val = type { i32* }
%struct.l2tp_data = type { i64, i32, i8*, i8*, i32 }

@L2TP_HDR_T_BIT = common dso_local global i32 0, align 4
@XT_L2TP_TYPE_CONTROL = common dso_local global i64 0, align 8
@XT_L2TP_TYPE_DATA = common dso_local global i64 0, align 8
@L2TP_HDR_VER = common dso_local global i32 0, align 4
@L2TP_HDR_L_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, i32)* @l2tp_udp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_udp_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_action_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_l2tp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.l2tp_val*, align 8
  %12 = alloca %union.l2tp_val, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2tp_data, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %16 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %15, i32 0, i32 1
  %17 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %16, align 8
  store %struct.xt_l2tp_info* %17, %struct.xt_l2tp_info** %8, align 8
  store i32 4, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = bitcast %struct.l2tp_data* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %23 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %union.l2tp_val* @skb_header_pointer(%struct.sk_buff* %28, i32 %29, i32 2, %union.l2tp_val* %12)
  store %union.l2tp_val* %30, %union.l2tp_val** %11, align 8
  %31 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %32 = icmp eq %union.l2tp_val* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %129

34:                                               ; preds = %27
  %35 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %36 = bitcast %union.l2tp_val* %35 to i32**
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @L2TP_HDR_T_BIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i64, i64* @XT_L2TP_TYPE_CONTROL, align 8
  %47 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  br label %51

48:                                               ; preds = %34
  %49 = load i64, i64* @XT_L2TP_TYPE_DATA, align 8
  %50 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @L2TP_HDR_VER, align 4
  %54 = and i32 %52, %53
  %55 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %85

59:                                               ; preds = %51
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 4
  %63 = call %union.l2tp_val* @skb_header_pointer(%struct.sk_buff* %60, i32 %62, i32 4, %union.l2tp_val* %12)
  store %union.l2tp_val* %63, %union.l2tp_val** %11, align 8
  %64 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %65 = icmp eq %union.l2tp_val* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %129

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XT_L2TP_TYPE_CONTROL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %74 = bitcast %union.l2tp_val* %73 to i32*
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @ntohl(i32 %75)
  %77 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 3
  store i8* %76, i8** %77, align 8
  br label %84

78:                                               ; preds = %67
  %79 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %80 = bitcast %union.l2tp_val* %79 to i32*
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @ntohl(i32 %81)
  %83 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %78, %72
  br label %126

85:                                               ; preds = %51
  %86 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %124

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @L2TP_HDR_L_BIT, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 2
  %101 = call %union.l2tp_val* @skb_header_pointer(%struct.sk_buff* %98, i32 %100, i32 4, %union.l2tp_val* %12)
  store %union.l2tp_val* %101, %union.l2tp_val** %11, align 8
  %102 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %103 = icmp eq %union.l2tp_val* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %129

105:                                              ; preds = %97
  %106 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %107 = bitcast %union.l2tp_val* %106 to i32**
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohs(i32 %110)
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 3
  store i8* %113, i8** %114, align 8
  %115 = load %union.l2tp_val*, %union.l2tp_val** %11, align 8
  %116 = bitcast %union.l2tp_val* %115 to i32**
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ntohs(i32 %119)
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %14, i32 0, i32 2
  store i8* %122, i8** %123, align 8
  br label %125

124:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %129

125:                                              ; preds = %105
  br label %126

126:                                              ; preds = %125, %84
  %127 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %8, align 8
  %128 = call i32 @l2tp_match(%struct.xt_l2tp_info* %127, %struct.l2tp_data* %14)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %124, %104, %66, %33, %26
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %union.l2tp_val* @skb_header_pointer(%struct.sk_buff*, i32, i32, %union.l2tp_val*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @l2tp_match(%struct.xt_l2tp_info*, %struct.l2tp_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
