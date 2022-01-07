; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_conn_fill_param_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_conn_fill_param_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BACKUP, no %s engine found/loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"BACKUP, Invalid PE parameters\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32, %union.ip_vs_sync_conn*, %struct.ip_vs_conn_param*, i32*, i32, i32*, i32)* @ip_vs_conn_fill_param_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_fill_param_sync(%struct.netns_ipvs* %0, i32 %1, %union.ip_vs_sync_conn* %2, %struct.ip_vs_conn_param* %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.netns_ipvs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.ip_vs_sync_conn*, align 8
  %13 = alloca %struct.ip_vs_conn_param*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %10, align 8
  store i32 %1, i32* %11, align 4
  store %union.ip_vs_sync_conn* %2, %union.ip_vs_sync_conn** %12, align 8
  store %struct.ip_vs_conn_param* %3, %struct.ip_vs_conn_param** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load %struct.netns_ipvs*, %struct.netns_ipvs** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %24 = bitcast %union.ip_vs_sync_conn* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %28 = bitcast %union.ip_vs_sync_conn* %27 to %struct.TYPE_5__*
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = bitcast i32* %29 to %union.nf_inet_addr*
  %31 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %32 = bitcast %union.ip_vs_sync_conn* %31 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %36 = bitcast %union.ip_vs_sync_conn* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to %union.nf_inet_addr*
  %39 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %12, align 8
  %40 = bitcast %union.ip_vs_sync_conn* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %44 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %21, i32 %22, i32 %26, %union.nf_inet_addr* %30, i32 %34, %union.nf_inet_addr* %38, i32 %42, %struct.ip_vs_conn_param* %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %8
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %76

50:                                               ; preds = %47
  %51 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %52 = add nsw i32 %51, 1
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %18, align 8
  %55 = alloca i8, i64 %53, align 16
  store i64 %53, i64* %19, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @memcpy(i8* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8 0, i8* %61, align 1
  %62 = call %struct.TYPE_6__* @__ip_vs_pe_getbyname(i8* %55)
  %63 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %64 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %63, i32 0, i32 1
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %64, align 8
  %65 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %66 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp ne %struct.TYPE_6__* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %50
  %70 = call i32 @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %55)
  store i32 1, i32* %9, align 4
  store i32 1, i32* %20, align 4
  br label %72

71:                                               ; preds = %50
  store i32 0, i32* %20, align 4
  br label %72

72:                                               ; preds = %71, %69
  %73 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %20, align 4
  switch i32 %74, label %105 [
    i32 0, label %75
    i32 1, label %103
  ]

75:                                               ; preds = %72
  br label %78

76:                                               ; preds = %47
  %77 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %103

78:                                               ; preds = %75
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call i32 @kmemdup(i32* %79, i32 %80, i32 %81)
  %83 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %84 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %86 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %78
  %90 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %91 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @module_put(i32 %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %103

98:                                               ; preds = %78
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %13, align 8
  %101 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %8
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %89, %76, %72
  %104 = load i32, i32* %9, align 4
  ret i32 %104

105:                                              ; preds = %72
  unreachable
}

declare dso_local i32 @ip_vs_conn_fill_param(%struct.netns_ipvs*, i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @__ip_vs_pe_getbyname(i8*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
