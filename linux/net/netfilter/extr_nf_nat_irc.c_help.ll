; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_irc.c_help.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_irc.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i64, %struct.TYPE_18__, %struct.TYPE_14__, i32, %struct.nf_conn* }
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

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@nf_nat_follow_master = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"all ports in use\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"inserting '%s' == %pI4, port %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot mangle packet\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, i32, %struct.nf_conntrack_expect*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nf_conntrack_expect* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conntrack_expect*, align 8
  %14 = alloca [17 x i8], align 16
  %15 = alloca %struct.nf_conn*, align 8
  %16 = alloca %union.nf_inet_addr, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.nf_conntrack_expect* %5, %struct.nf_conntrack_expect** %13, align 8
  %19 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %19, i32 0, i32 4
  %21 = load %struct.nf_conn*, %struct.nf_conn** %20, align 8
  store %struct.nf_conn* %21, %struct.nf_conn** %15, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = bitcast %union.nf_inet_addr* %16 to i8*
  %31 = bitcast %union.nf_inet_addr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %44 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @nf_nat_follow_master, align 4
  %47 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %48 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %50 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @ntohs(i32 %53)
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %80, %6
  %56 = load i64, i64* %17, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i64, i64* %17, align 8
  %60 = call i32 @htons(i64 %59)
  %61 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %62 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 8
  %67 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %68 = call i32 @nf_ct_expect_related(%struct.nf_conntrack_expect* %67, i32 0)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i64 0, i64* %17, align 8
  br label %83

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %17, align 8
  br label %55

83:                                               ; preds = %77, %71, %55
  %84 = load i64, i64* %17, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %89 = call i32 @nf_ct_helper_log(%struct.sk_buff* %87, %struct.nf_conn* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @NF_DROP, align 4
  store i32 %90, i32* %7, align 4
  br label %122

91:                                               ; preds = %83
  %92 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %93 = bitcast %union.nf_inet_addr* %16 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ntohl(i32 %94)
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @snprintf(i8* %92, i32 17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95, i64 %96)
  %98 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %99 = bitcast %union.nf_inet_addr* %16 to i32*
  %100 = load i64, i64* %17, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %98, i32* %99, i64 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %109 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %110 = call i32 @strlen(i8* %109)
  %111 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %102, %struct.nf_conn* %103, i32 %104, i32 %105, i32 %106, i32 %107, i8* %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %91
  %114 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %115 = load %struct.nf_conn*, %struct.nf_conn** %15, align 8
  %116 = call i32 @nf_ct_helper_log(%struct.sk_buff* %114, %struct.nf_conn* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %13, align 8
  %118 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %117)
  %119 = load i32, i32* @NF_DROP, align 4
  store i32 %119, i32* %7, align 4
  br label %122

120:                                              ; preds = %91
  %121 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %120, %113, %86
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ntohs(i32) #2

declare dso_local i32 @htons(i64) #2

declare dso_local i32 @nf_ct_expect_related(%struct.nf_conntrack_expect*, i32) #2

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64) #2

declare dso_local i32 @ntohl(i32) #2

declare dso_local i32 @pr_debug(i8*, i8*, i32*, i64) #2

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.nf_conn*, i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
