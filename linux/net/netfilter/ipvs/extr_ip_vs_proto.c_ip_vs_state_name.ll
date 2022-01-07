; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_state_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_proto.c_ip_vs_state_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i64 }
%struct.ip_vs_protocol = type { i8* (i32)* }

@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CTPL_S_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ERR!\00", align 1
@ip_vs_ctpl_state_name_table = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@IPPROTO_IP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ip_vs_state_name(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_vs_protocol*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  %6 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %7 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IP_VS_CTPL_S_LAST, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %58

20:                                               ; preds = %15
  %21 = load i64*, i64** @ip_vs_ctpl_state_name_table, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = inttoptr i64 %25 to i8*
  br label %30

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %29 ]
  store i8* %31, i8** %2, align 8
  br label %58

32:                                               ; preds = %1
  %33 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %34 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i64 %35)
  store %struct.ip_vs_protocol* %36, %struct.ip_vs_protocol** %5, align 8
  %37 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %38 = icmp eq %struct.ip_vs_protocol* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %41 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %40, i32 0, i32 0
  %42 = load i8* (i32)*, i8* (i32)** %41, align 8
  %43 = icmp eq i8* (i32)* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %39, %32
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %46 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IPPROTO_IP, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  store i8* %51, i8** %2, align 8
  br label %58

52:                                               ; preds = %39
  %53 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %5, align 8
  %54 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %53, i32 0, i32 0
  %55 = load i8* (i32)*, i8* (i32)** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i8* %55(i32 %56)
  store i8* %57, i8** %2, align 8
  br label %58

58:                                               ; preds = %52, %44, %30, %19
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
