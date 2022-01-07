; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_ftp.c_nf_nat_ftp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_ftp.c_nf_nat_ftp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_18__, %struct.TYPE_14__, i32, %struct.nf_conn* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.nf_conn = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %union.nf_inet_addr }
%union.nf_inet_addr = type { i32 }

@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"type %i, off %u len %u\0A\00", align 1
@nf_nat_follow_master = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"all ports in use\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"calling nf_nat_mangle_tcp_packet\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, i32, %struct.nf_conntrack_expect*)* @nf_nat_ftp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_ftp(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nf_conntrack_expect* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conntrack_expect*, align 8
  %16 = alloca %union.nf_inet_addr, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nf_conn*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.nf_conntrack_expect* %6, %struct.nf_conntrack_expect** %15, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @CTINFO2DIR(i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 4
  %29 = load %struct.nf_conn*, %struct.nf_conn** %28, align 8
  store %struct.nf_conn* %29, %struct.nf_conn** %19, align 8
  %30 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 11, %31
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %20, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %21, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = bitcast %union.nf_inet_addr* %16 to i8*
  %52 = bitcast %union.nf_inet_addr* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %69 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @nf_nat_follow_master, align 4
  %71 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %74 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ntohs(i32 %77)
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %104, %7
  %80 = load i64, i64* %17, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load i64, i64* %17, align 8
  %84 = call i32 @htons(i64 %83)
  %85 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %86 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i32 %84, i32* %90, align 4
  %91 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %92 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %91, i32 0)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %107

96:                                               ; preds = %82
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i64 0, i64* %17, align 8
  br label %107

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %17, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %17, align 8
  br label %79

107:                                              ; preds = %101, %95, %79
  %108 = load i64, i64* %17, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %113 = call i32 @nf_ct_helper_log(%struct.sk_buff* %111, %struct.nf_conn* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @NF_DROP, align 4
  store i32 %114, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %145

115:                                              ; preds = %107
  %116 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %117 = load i32, i32* %11, align 4
  %118 = trunc i64 %32 to i32
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @nf_nat_ftp_fmt_cmd(%struct.nf_conn* %116, i32 %117, i8* %34, i32 %118, %union.nf_inet_addr* %16, i64 %119)
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* %22, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %138

124:                                              ; preds = %115
  %125 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %22, align 4
  %133 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %126, %struct.nf_conn* %127, i32 %128, i32 %129, i32 %130, i32 %131, i8* %34, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %124
  br label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %137, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %145

138:                                              ; preds = %135, %123
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = load %struct.nf_conn*, %struct.nf_conn** %19, align 8
  %141 = call i32 @nf_ct_helper_log(%struct.sk_buff* %139, %struct.nf_conn* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %15, align 8
  %143 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %142)
  %144 = load i32, i32* @NF_DROP, align 4
  store i32 %144, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %145

145:                                              ; preds = %138, %136, %110
  %146 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @CTINFO2DIR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pr_debug(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

declare dso_local i32 @nf_nat_ftp_fmt_cmd(%struct.nf_conn*, i32, i8*, i32, %union.nf_inet_addr*, i64) #1

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
