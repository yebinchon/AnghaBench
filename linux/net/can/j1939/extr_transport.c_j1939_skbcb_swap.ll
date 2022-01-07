; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_skbcb_swap.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_skbcb_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_sk_buff_cb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@J1939_ECU_LOCAL_SRC = common dso_local global i32 0, align 4
@J1939_ECU_LOCAL_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.j1939_sk_buff_cb*)* @j1939_skbcb_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j1939_skbcb_swap(%struct.j1939_sk_buff_cb* %0) #0 {
  %2 = alloca %struct.j1939_sk_buff_cb*, align 8
  %3 = alloca i32, align 4
  store %struct.j1939_sk_buff_cb* %0, %struct.j1939_sk_buff_cb** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %5 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %9 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @swap(i32 %7, i32 %11)
  %13 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %14 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %18 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @swap(i32 %16, i32 %20)
  %22 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %23 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %34 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i32, i32* @J1939_ECU_LOCAL_SRC, align 4
  %45 = load i32, i32* @J1939_ECU_LOCAL_DST, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %49 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %2, align 8
  %54 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
