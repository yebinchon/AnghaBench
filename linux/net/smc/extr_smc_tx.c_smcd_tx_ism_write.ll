; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smcd_tx_ism_write.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_tx.c_smcd_tx_ism_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { %struct.TYPE_6__, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.smc_ism_position = type { i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smcd_tx_ism_write(%struct.smc_connection* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.smc_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.smc_ism_position, align 8
  %12 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = call i32 @memset(%struct.smc_ism_position* %11, i32 0, i32 24)
  %14 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %15 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.smc_ism_position, %struct.smc_ism_position* %11, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %19 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.smc_ism_position, %struct.smc_ism_position* %11, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %23 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = add nsw i64 %24, %25
  %27 = getelementptr inbounds %struct.smc_ism_position, %struct.smc_ism_position* %11, i32 0, i32 1
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.smc_ism_position, %struct.smc_ism_position* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %31 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @smc_ism_write(i32 %34, %struct.smc_ism_position* %11, i8* %35, i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load %struct.smc_connection*, %struct.smc_connection** %6, align 8
  %42 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %5
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.smc_ism_position*, i32, i32) #1

declare dso_local i32 @smc_ism_write(i32, %struct.smc_ism_position*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
