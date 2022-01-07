; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_handle_urg_data_arrival.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_handle_urg_data_arrival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { i32, %struct.smc_connection }
%struct.smc_connection = type { i32, i8, %struct.TYPE_5__*, %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SMC_URG_VALID = common dso_local global i32 0, align 4
@SOCK_URGINLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_sock*, i32*)* @smc_cdc_handle_urg_data_arrival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_cdc_handle_urg_data_arrival(%struct.smc_sock* %0, i32* %1) #0 {
  %3 = alloca %struct.smc_sock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca i8*, align 8
  store %struct.smc_sock* %0, %struct.smc_sock** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %8 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %7, i32 0, i32 1
  store %struct.smc_connection* %8, %struct.smc_connection** %5, align 8
  %9 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %10 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %9, i32 0, i32 3
  %11 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %12 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %15 = call i32 @smc_curs_copy(%struct.TYPE_6__* %10, i32* %13, %struct.smc_connection* %14)
  %16 = load i32, i32* @SMC_URG_VALID, align 4
  %17 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %18 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %20 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %19, i32 0, i32 0
  %21 = load i32, i32* @SOCK_URGINLINE, align 4
  %22 = call i32 @sock_flag(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %30 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %36 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %6, align 8
  %40 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %41 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %28
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %48 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8, i8* %53, align 1
  %55 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %56 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 4
  br label %70

57:                                               ; preds = %28
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %60 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %59, i32 0, i32 2
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %58, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %69 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %68, i32 0, i32 1
  store i8 %67, i8* %69, align 4
  br label %70

70:                                               ; preds = %57, %45
  %71 = load %struct.smc_sock*, %struct.smc_sock** %3, align 8
  %72 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %71, i32 0, i32 0
  %73 = call i32 @sk_send_sigurg(i32* %72)
  ret void
}

declare dso_local i32 @smc_curs_copy(%struct.TYPE_6__*, i32*, %struct.smc_connection*) #1

declare dso_local i32 @sock_flag(i32*, i32) #1

declare dso_local i32 @sk_send_sigurg(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
