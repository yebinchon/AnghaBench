; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_ct_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_pe_sip.c_ip_vs_sip_ct_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn_param = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.ip_vs_conn = type { i64, i64, i32, i64, i64, i64, i32, i32 }

@IPPROTO_IP = common dso_local global i64 0, align 8
@AF_UNSPEC = common dso_local global i64 0, align 8
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SIP template match %s %s->%s:%d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not hit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_conn_param*, %struct.ip_vs_conn*)* @ip_vs_sip_ct_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_sip_ct_match(%struct.ip_vs_conn_param* %0, %struct.ip_vs_conn* %1) #0 {
  %3 = alloca %struct.ip_vs_conn_param*, align 8
  %4 = alloca %struct.ip_vs_conn*, align 8
  %5 = alloca i32, align 4
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %3, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %94

13:                                               ; preds = %2
  %14 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %15 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %18 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %21 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %20, i32 0, i32 7
  %22 = call i64 @ip_vs_addr_equal(i64 %16, i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %13
  %25 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %26 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPPROTO_IP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @AF_UNSPEC, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi i64 [ %31, %30 ], [ %35, %32 ]
  %38 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %39 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %41, i32 0, i32 6
  %43 = call i64 @ip_vs_addr_equal(i64 %37, i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %36
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %50 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %45
  %54 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %55 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %53
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %62 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %65 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %94

68:                                               ; preds = %60
  %69 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %70 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %75 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %78 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %73
  %82 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %83 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %86 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %89 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcmp(i64 %84, i32 %87, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %81, %73, %68, %60, %53, %45, %36, %13, %2
  %95 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %96 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ip_vs_proto_name(i64 %97)
  %99 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %100 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %103 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @IP_VS_DEBUG_CALLID(i32 %101, i64 %104)
  %106 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %107 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %110 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @IP_VS_DBG_ADDR(i64 %108, i32 %111)
  %113 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %3, align 8
  %114 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @ntohs(i64 %115)
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %121 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %105, i32 %112, i32 %116, i8* %120)
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i64 @ip_vs_addr_equal(i64, i32, i32*) #1

declare dso_local i32 @memcmp(i64, i32, i64) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ip_vs_proto_name(i64) #1

declare dso_local i32 @IP_VS_DEBUG_CALLID(i32, i64) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i64, i32) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
