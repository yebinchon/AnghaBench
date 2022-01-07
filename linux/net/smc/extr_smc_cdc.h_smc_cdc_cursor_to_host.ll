; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_cdc_cursor_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.h_smc_cdc_cursor_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.smc_host_cursor = type { i64 }
%union.smc_cdc_cursor = type { i32 }
%struct.smc_connection = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.smc_host_cursor*, %union.smc_cdc_cursor*, %struct.smc_connection*)* @smc_cdc_cursor_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_cdc_cursor_to_host(%union.smc_host_cursor* %0, %union.smc_cdc_cursor* %1, %struct.smc_connection* %2) #0 {
  %4 = alloca %union.smc_host_cursor*, align 8
  %5 = alloca %union.smc_cdc_cursor*, align 8
  %6 = alloca %struct.smc_connection*, align 8
  %7 = alloca %union.smc_host_cursor, align 8
  %8 = alloca %union.smc_host_cursor, align 8
  %9 = alloca %union.smc_cdc_cursor, align 4
  store %union.smc_host_cursor* %0, %union.smc_host_cursor** %4, align 8
  store %union.smc_cdc_cursor* %1, %union.smc_cdc_cursor** %5, align 8
  store %struct.smc_connection* %2, %struct.smc_connection** %6, align 8
  %10 = load %union.smc_host_cursor*, %union.smc_host_cursor** %4, align 8
  %11 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %12 = call i32 @smc_curs_copy(%union.smc_host_cursor* %8, %union.smc_host_cursor* %10, %struct.smc_connection* %11)
  %13 = load %union.smc_cdc_cursor*, %union.smc_cdc_cursor** %5, align 8
  %14 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %15 = call i32 @smc_curs_copy_net(%union.smc_cdc_cursor* %9, %union.smc_cdc_cursor* %13, %struct.smc_connection* %14)
  %16 = bitcast %union.smc_cdc_cursor* %9 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntohl(i32 %17)
  %19 = bitcast %union.smc_host_cursor* %7 to i64*
  store i64 %18, i64* %19, align 8
  %20 = bitcast %union.smc_cdc_cursor* %9 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  %23 = bitcast %union.smc_host_cursor* %7 to i64*
  store i64 %22, i64* %23, align 8
  %24 = bitcast %union.smc_host_cursor* %8 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = bitcast %union.smc_host_cursor* %7 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = bitcast %union.smc_host_cursor* %7 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %51

34:                                               ; preds = %29, %3
  %35 = bitcast %union.smc_host_cursor* %8 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = bitcast %union.smc_host_cursor* %7 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = bitcast %union.smc_host_cursor* %8 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = bitcast %union.smc_host_cursor* %7 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %51

47:                                               ; preds = %40, %34
  %48 = load %union.smc_host_cursor*, %union.smc_host_cursor** %4, align 8
  %49 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %50 = call i32 @smc_curs_copy(%union.smc_host_cursor* %48, %union.smc_host_cursor* %7, %struct.smc_connection* %49)
  br label %51

51:                                               ; preds = %47, %46, %33
  ret void
}

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, %union.smc_host_cursor*, %struct.smc_connection*) #1

declare dso_local i32 @smc_curs_copy_net(%union.smc_cdc_cursor*, %union.smc_cdc_cursor*, %struct.smc_connection*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
