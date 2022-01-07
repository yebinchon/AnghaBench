; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_consumer_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smc_tx_consumer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i32, %struct.TYPE_8__, i32, i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.smc_host_cursor = type { i32 }

@SMC_TX_WORK_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smc_tx_consumer_update(%struct.smc_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.smc_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.smc_host_cursor, align 4
  %6 = alloca %union.smc_host_cursor, align 4
  %7 = alloca %union.smc_host_cursor, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %11 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %10, i32 0, i32 5
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %16 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %19 = call i32 @smc_curs_copy(%union.smc_host_cursor* %6, i32* %17, %struct.smc_connection* %18)
  %20 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %21 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %20, i32 0, i32 6
  %22 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %23 = call i32 @smc_curs_copy(%union.smc_host_cursor* %5, i32* %21, %struct.smc_connection* %22)
  %24 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %25 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %24, i32 0, i32 5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @smc_curs_diff(i32 %28, %union.smc_host_cursor* %5, %union.smc_host_cursor* %6)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %32 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %2
  %36 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %37 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %40 = call i32 @smc_curs_copy(%union.smc_host_cursor* %7, i32* %38, %struct.smc_connection* %39)
  %41 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %42 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %41, i32 0, i32 5
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %47 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %46, i32 0, i32 5
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @smc_curs_diff_large(i32 %50, %union.smc_host_cursor* %5, %union.smc_host_cursor* %7)
  %52 = sub nsw i32 %45, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %35, %2
  %54 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %55 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %66 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %72 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %71, i32 0, i32 5
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 2
  %77 = icmp sle i32 %70, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %80 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %78, %69, %60, %53
  %86 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %87 = call i64 @smc_cdc_get_slot_and_msg_send(%struct.smc_connection* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %91 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %96 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %95, i32 0, i32 3
  %97 = load i32, i32* @SMC_TX_WORK_DELAY, align 4
  %98 = call i32 @schedule_delayed_work(i32* %96, i32 %97)
  br label %117

99:                                               ; preds = %89, %85
  br label %100

100:                                              ; preds = %99, %78, %63
  %101 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %102 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %109 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %108, i32 0, i32 2
  %110 = call i32 @atomic_read(i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %114 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %94, %112, %107, %100
  ret void
}

declare dso_local i32 @smc_curs_copy(%union.smc_host_cursor*, i32*, %struct.smc_connection*) #1

declare dso_local i32 @smc_curs_diff(i32, %union.smc_host_cursor*, %union.smc_host_cursor*) #1

declare dso_local i32 @smc_curs_diff_large(i32, %union.smc_host_cursor*, %union.smc_host_cursor*) #1

declare dso_local i64 @smc_cdc_get_slot_and_msg_send(%struct.smc_connection*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
