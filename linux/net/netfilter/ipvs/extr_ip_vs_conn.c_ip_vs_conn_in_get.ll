; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_conn_in_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32 }
%struct.ip_vs_conn_param = type { i64, i32, i32, i64, i32, i32 }

@ip_vs_conn_no_cport_cnt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"lookup/in %s %s:%d->%s:%d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not hit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_conn* @ip_vs_conn_in_get(%struct.ip_vs_conn_param* %0) #0 {
  %2 = alloca %struct.ip_vs_conn_param*, align 8
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_conn_param, align 8
  store %struct.ip_vs_conn_param* %0, %struct.ip_vs_conn_param** %2, align 8
  %5 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %6 = call %struct.ip_vs_conn* @__ip_vs_conn_in_get(%struct.ip_vs_conn_param* %5)
  store %struct.ip_vs_conn* %6, %struct.ip_vs_conn** %3, align 8
  %7 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %8 = icmp ne %struct.ip_vs_conn* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = call i64 @atomic_read(i32* @ip_vs_conn_no_cport_cnt)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %14 = bitcast %struct.ip_vs_conn_param* %4 to i8*
  %15 = bitcast %struct.ip_vs_conn_param* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 32, i1 false)
  %16 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %4, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = call %struct.ip_vs_conn* @__ip_vs_conn_in_get(%struct.ip_vs_conn_param* %4)
  store %struct.ip_vs_conn* %17, %struct.ip_vs_conn** %3, align 8
  br label %18

18:                                               ; preds = %12, %9, %1
  %19 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %20 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ip_vs_proto_name(i32 %21)
  %23 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %24 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %27 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IP_VS_DBG_ADDR(i32 %25, i32 %28)
  %30 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %31 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @ntohs(i64 %32)
  %34 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %35 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @IP_VS_DBG_ADDR(i32 %36, i32 %39)
  %41 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %2, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @ntohs(i64 %43)
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %46 = icmp ne %struct.ip_vs_conn* %45, null
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %29, i32 %33, i32 %40, i32 %44, i8* %48)
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  ret %struct.ip_vs_conn* %50
}

declare dso_local %struct.ip_vs_conn* @__ip_vs_conn_in_get(%struct.ip_vs_conn_param*) #1

declare dso_local i64 @atomic_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ip_vs_proto_name(i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32) #1

declare dso_local i32 @ntohs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
