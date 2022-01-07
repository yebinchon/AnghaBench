; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_host_msg_to_cdc.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_host_msg_to_cdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_cdc_msg = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.smc_connection = type { %struct.smc_host_cdc_msg }
%struct.smc_host_cdc_msg = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.smc_host_cursor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_cdc_msg*, %struct.smc_connection*, %union.smc_host_cursor*)* @smc_host_msg_to_cdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_host_msg_to_cdc(%struct.smc_cdc_msg* %0, %struct.smc_connection* %1, %union.smc_host_cursor* %2) #0 {
  %4 = alloca %struct.smc_cdc_msg*, align 8
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca %union.smc_host_cursor*, align 8
  %7 = alloca %struct.smc_host_cdc_msg*, align 8
  store %struct.smc_cdc_msg* %0, %struct.smc_cdc_msg** %4, align 8
  store %struct.smc_connection* %1, %struct.smc_connection** %5, align 8
  store %union.smc_host_cursor* %2, %union.smc_host_cursor** %6, align 8
  %8 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %9 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %8, i32 0, i32 0
  store %struct.smc_host_cdc_msg* %9, %struct.smc_host_cdc_msg** %7, align 8
  %10 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %11 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %15 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %18 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %21 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %23 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %27 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %29 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @htonl(i32 %30)
  %32 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %33 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %35 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %34, i32 0, i32 3
  %36 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %37 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %36, i32 0, i32 3
  %38 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %39 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %40 = call i32 @smc_host_cursor_to_cdc(i32* %35, i32* %37, %union.smc_host_cursor* %38, %struct.smc_connection* %39)
  %41 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %42 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %41, i32 0, i32 2
  %43 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %44 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %43, i32 0, i32 2
  %45 = load %union.smc_host_cursor*, %union.smc_host_cursor** %6, align 8
  %46 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %47 = call i32 @smc_host_cursor_to_cdc(i32* %42, i32* %44, %union.smc_host_cursor* %45, %struct.smc_connection* %46)
  %48 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %49 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %52 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.smc_host_cdc_msg*, %struct.smc_host_cdc_msg** %7, align 8
  %54 = getelementptr inbounds %struct.smc_host_cdc_msg, %struct.smc_host_cdc_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smc_cdc_msg*, %struct.smc_cdc_msg** %4, align 8
  %57 = getelementptr inbounds %struct.smc_cdc_msg, %struct.smc_cdc_msg* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @smc_host_cursor_to_cdc(i32*, i32*, %union.smc_host_cursor*, %struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
