; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_sockaddr_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_sockaddr_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_af = type { i32 }
%struct.sctp_sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i64, %struct.sctp_sock*)* }
%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@SIN6_LEN_RFC2133 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_af* (%struct.sctp_sock*, %union.sctp_addr*, i32)* @sctp_sockaddr_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_af* @sctp_sockaddr_af(%struct.sctp_sock* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_af*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_sock* %0, %struct.sctp_sock** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %71

13:                                               ; preds = %3
  %14 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %15 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (i64, %struct.sctp_sock*)*, i32 (i64, %struct.sctp_sock*)** %17, align 8
  %19 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %20 = bitcast %union.sctp_addr* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %24 = call i32 %18(i64 %22, %struct.sctp_sock* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %71

27:                                               ; preds = %13
  %28 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %29 = bitcast %union.sctp_addr* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET6, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SIN6_LEN_RFC2133, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %71

39:                                               ; preds = %34
  %40 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %41 = bitcast %union.sctp_addr* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i64 @ipv6_addr_v4mapped(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %47 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (i64, %struct.sctp_sock*)*, i32 (i64, %struct.sctp_sock*)** %49, align 8
  %51 = load i64, i64* @AF_INET, align 8
  %52 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %53 = call i32 %50(i64 %51, %struct.sctp_sock* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %71

56:                                               ; preds = %45, %39
  br label %57

57:                                               ; preds = %56, %27
  %58 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %59 = bitcast %union.sctp_addr* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.sctp_af* @sctp_get_af_specific(i64 %61)
  store %struct.sctp_af* %62, %struct.sctp_af** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  %65 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store %struct.sctp_af* null, %struct.sctp_af** %4, align 8
  br label %71

69:                                               ; preds = %57
  %70 = load %struct.sctp_af*, %struct.sctp_af** %8, align 8
  store %struct.sctp_af* %70, %struct.sctp_af** %4, align 8
  br label %71

71:                                               ; preds = %69, %68, %55, %38, %26, %12
  %72 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  ret %struct.sctp_af* %72
}

declare dso_local i64 @ipv6_addr_v4mapped(i32*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
