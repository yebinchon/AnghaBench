; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_ip_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_l2tp.c_l2tp_ip_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_l2tp_info* }
%struct.xt_l2tp_info = type { i32 }
%union.l2tp_val = type { i64 }
%struct.l2tp_data = type { i32, i32, i8*, i8*, i32 }

@XT_L2TP_TYPE_CONTROL = common dso_local global i32 0, align 4
@XT_L2TP_TYPE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*, i64)* @l2tp_ip_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xt_action_param*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xt_l2tp_info*, align 8
  %9 = alloca %union.l2tp_val*, align 8
  %10 = alloca %union.l2tp_val, align 8
  %11 = alloca %struct.l2tp_data, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.xt_action_param*, %struct.xt_action_param** %6, align 8
  %13 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %12, i32 0, i32 0
  %14 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %13, align 8
  store %struct.xt_l2tp_info* %14, %struct.xt_l2tp_info** %8, align 8
  %15 = bitcast %struct.l2tp_data* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 32, i1 false)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call %union.l2tp_val* @skb_header_pointer(%struct.sk_buff* %16, i64 %17, i32 8, %union.l2tp_val* %10)
  store %union.l2tp_val* %18, %union.l2tp_val** %9, align 8
  %19 = load %union.l2tp_val*, %union.l2tp_val** %9, align 8
  %20 = icmp eq %union.l2tp_val* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %union.l2tp_val*, %union.l2tp_val** %9, align 8
  %24 = bitcast %union.l2tp_val* %23 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i32, i32* @XT_L2TP_TYPE_CONTROL, align 4
  %29 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %11, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %31, 8
  %33 = call %union.l2tp_val* @skb_header_pointer(%struct.sk_buff* %30, i64 %32, i32 8, %union.l2tp_val* %10)
  store %union.l2tp_val* %33, %union.l2tp_val** %9, align 8
  %34 = load %union.l2tp_val*, %union.l2tp_val** %9, align 8
  %35 = icmp eq %union.l2tp_val* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %55

37:                                               ; preds = %27
  %38 = load %union.l2tp_val*, %union.l2tp_val** %9, align 8
  %39 = bitcast %union.l2tp_val* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @ntohl(i64 %40)
  %42 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %11, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  br label %51

43:                                               ; preds = %22
  %44 = load %union.l2tp_val*, %union.l2tp_val** %9, align 8
  %45 = bitcast %union.l2tp_val* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @ntohl(i64 %46)
  %48 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %11, i32 0, i32 2
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @XT_L2TP_TYPE_DATA, align 4
  %50 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %11, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %37
  %52 = getelementptr inbounds %struct.l2tp_data, %struct.l2tp_data* %11, i32 0, i32 0
  store i32 3, i32* %52, align 8
  %53 = load %struct.xt_l2tp_info*, %struct.xt_l2tp_info** %8, align 8
  %54 = call i32 @l2tp_match(%struct.xt_l2tp_info* %53, %struct.l2tp_data* %11)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %36, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %union.l2tp_val* @skb_header_pointer(%struct.sk_buff*, i64, i32, %union.l2tp_val*) #2

declare dso_local i8* @ntohl(i64) #2

declare dso_local i32 @l2tp_match(%struct.xt_l2tp_info*, %struct.l2tp_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
