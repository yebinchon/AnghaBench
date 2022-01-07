; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_mackey_and_ltk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_mackey_and_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*, i32*, i32*)* @sc_mackey_and_ltk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_mackey_and_ltk(%struct.smp_chan* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.smp_chan*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [7 x i32], align 16
  %11 = alloca [7 x i32], align 16
  store %struct.smp_chan* %0, %struct.smp_chan** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %13 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.hci_conn*, %struct.hci_conn** %15, align 8
  store %struct.hci_conn* %16, %struct.hci_conn** %7, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %23 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %26 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  br label %35

28:                                               ; preds = %3
  %29 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %30 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %33 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %28, %21
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %37 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 3
  %39 = call i32 @memcpy(i32* %36, i32* %38, i32 6)
  %40 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %41 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %42 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %41, i32 0, i32 2
  %43 = call i32 @memcpy(i32* %40, i32* %42, i32 6)
  %44 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 6
  store i32 %46, i32* %47, align 8
  %48 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 6
  store i32 %50, i32* %51, align 8
  %52 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %53 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.smp_chan*, %struct.smp_chan** %4, align 8
  %56 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds [7 x i32], [7 x i32]* %10, i64 0, i64 0
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %11, i64 0, i64 0
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @smp_f5(i32 %54, i32 %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63)
  ret i32 %64
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @smp_f5(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
