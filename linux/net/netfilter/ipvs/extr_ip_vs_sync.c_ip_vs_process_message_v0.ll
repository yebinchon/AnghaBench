; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message_v0.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_sync_mesg_v0 = type { i32 }
%struct.ip_vs_sync_conn_v0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_sync_conn_options = type { i32 }
%struct.ip_vs_protocol = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }
%union.nf_inet_addr = type { i32 }

@SIMPLE_CONN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BACKUP v0, bogus conn\0A\00", align 1
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@FULL_CONN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"BACKUP v0, Dropping buffer bogus conn options\0A\00", align 1
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BACKUP v0, Unsupported protocol %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"BACKUP v0, Invalid %s state %u\0A\00", align 1
@IP_VS_CTPL_S_LAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"BACKUP v0, Invalid tpl state %u\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_ipvs*, i8*, i64)* @ip_vs_process_message_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_process_message_v0(%struct.netns_ipvs* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ip_vs_sync_mesg_v0*, align 8
  %8 = alloca %struct.ip_vs_sync_conn_v0*, align 8
  %9 = alloca %struct.ip_vs_sync_conn_options*, align 8
  %10 = alloca %struct.ip_vs_protocol*, align 8
  %11 = alloca %struct.ip_vs_conn_param, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %17, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 4
  store i8* %19, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %151, %3
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %7, align 8
  %23 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %154

26:                                               ; preds = %20
  %27 = load i8*, i8** %12, align 8
  %28 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = icmp ugt i8* %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %154

37:                                               ; preds = %26
  %38 = load i8*, i8** %12, align 8
  %39 = bitcast i8* %38 to %struct.ip_vs_sync_conn_v0*
  store %struct.ip_vs_sync_conn_v0* %39, %struct.ip_vs_sync_conn_v0** %8, align 8
  %40 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %41 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohs(i32 %42)
  %44 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %14, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %37
  %55 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %56 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %55, i64 1
  %57 = bitcast %struct.ip_vs_sync_conn_v0* %56 to %struct.ip_vs_sync_conn_options*
  store %struct.ip_vs_sync_conn_options* %57, %struct.ip_vs_sync_conn_options** %9, align 8
  %58 = load i32, i32* @FULL_CONN_SIZE, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = icmp ugt i8* %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %154

69:                                               ; preds = %54
  br label %75

70:                                               ; preds = %37
  store %struct.ip_vs_sync_conn_options* null, %struct.ip_vs_sync_conn_options** %9, align 8
  %71 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %70, %69
  %76 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %77 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohs(i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %109, label %84

84:                                               ; preds = %75
  %85 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %86 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %87)
  store %struct.ip_vs_protocol* %88, %struct.ip_vs_protocol** %10, align 8
  %89 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %90 = icmp ne %struct.ip_vs_protocol* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %84
  %92 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %93 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %151

96:                                               ; preds = %84
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %99 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp uge i32 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %104 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  br label %151

108:                                              ; preds = %96
  br label %117

109:                                              ; preds = %75
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @IP_VS_CTPL_S_LAST, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %108
  %118 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %119 = load i32, i32* @AF_INET, align 4
  %120 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %121 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %124 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %123, i32 0, i32 6
  %125 = bitcast i32* %124 to %union.nf_inet_addr*
  %126 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %127 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %130 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %129, i32 0, i32 4
  %131 = bitcast i32* %130 to %union.nf_inet_addr*
  %132 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %133 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ip_vs_conn_fill_param(%struct.netns_ipvs* %118, i32 %119, i32 %122, %union.nf_inet_addr* %125, i32 %128, %union.nf_inet_addr* %131, i32 %134, %struct.ip_vs_conn_param* %11)
  %136 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %140 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AF_INET, align 4
  %143 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %144 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %143, i32 0, i32 2
  %145 = bitcast i32* %144 to %union.nf_inet_addr*
  %146 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %8, align 8
  %147 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %9, align 8
  %150 = call i32 @ip_vs_proc_conn(%struct.netns_ipvs* %136, %struct.ip_vs_conn_param* %11, i32 %137, i32 %138, i32 %141, i32 %142, %union.nf_inet_addr* %145, i32 %148, i32 0, i32 0, %struct.ip_vs_sync_conn_options* %149)
  br label %151

151:                                              ; preds = %117, %102, %91
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %20

154:                                              ; preds = %35, %67, %20
  ret void
}

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @ip_vs_conn_fill_param(%struct.netns_ipvs*, i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_proc_conn(%struct.netns_ipvs*, %struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i32, i32, i32, %struct.ip_vs_sync_conn_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
