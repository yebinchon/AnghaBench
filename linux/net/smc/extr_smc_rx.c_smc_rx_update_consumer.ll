; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_update_consumer.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_rx.c_smc_rx_update_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.sock, %struct.smc_connection }
%struct.sock = type { i32 }
%struct.smc_connection = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.smc_host_cursor = type { i32 }

@SMC_URG_VALID = common dso_local global i64 0, align 8
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@SMC_URG_READ = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, i32, i64)* @smc_rx_update_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_rx_update_consumer(%struct.smc_sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %union.smc_host_cursor, align 4
  %5 = alloca %struct.smc_sock*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smc_connection*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %union.smc_host_cursor, %union.smc_host_cursor* %4, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %14 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %13, i32 0, i32 1
  store %struct.smc_connection* %14, %struct.smc_connection** %7, align 8
  %15 = load %struct.smc_sock*, %struct.smc_sock** %5, align 8
  %16 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %15, i32 0, i32 0
  store %struct.sock* %16, %struct.sock** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %18 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @smc_curs_add(i32 %21, %union.smc_host_cursor* %4, i32 %23)
  %25 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %26 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SMC_URG_VALID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %32 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %30, %3
  %36 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %37 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %42 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %41, i32 0, i32 4
  %43 = call i32 @smc_curs_comp(i32 %40, %union.smc_host_cursor* %4, i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.sock*, %struct.sock** %8, align 8
  %45 = load i32, i32* @SOCK_URGINLINE, align 4
  %46 = call i64 @sock_flag(%struct.sock* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %52 = load i8*, i8** @SMC_URG_READ, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %55 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %48
  br label %79

57:                                               ; preds = %35
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  %61 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %62 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @smc_curs_add(i32 %65, %union.smc_host_cursor* %4, i32 1)
  %67 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %68 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  br label %78

69:                                               ; preds = %57
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, -1
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** @SMC_URG_READ, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %76 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %69
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %30
  %81 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %82 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %85 = call i32 @smc_curs_copy(i32* %83, %union.smc_host_cursor* %4, %struct.smc_connection* %84)
  %86 = load %struct.smc_connection*, %struct.smc_connection** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @smc_tx_consumer_update(%struct.smc_connection* %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @smc_curs_add(i32, %union.smc_host_cursor*, i32) #1

declare dso_local i32 @smc_curs_comp(i32, %union.smc_host_cursor*, i32*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @smc_curs_copy(i32*, %union.smc_host_cursor*, %struct.smc_connection*) #1

declare dso_local i32 @smc_tx_consumer_update(%struct.smc_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
