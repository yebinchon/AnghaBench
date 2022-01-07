; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_match_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_socket.c_j1939_sk_match_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_sock = type { i32, %struct.j1939_filter* }
%struct.j1939_filter = type { i32, i32, i32, i32, i32, i32 }
%struct.j1939_sk_buff_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_sock*, %struct.j1939_sk_buff_cb*)* @j1939_sk_match_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_sk_match_filter(%struct.j1939_sock* %0, %struct.j1939_sk_buff_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.j1939_sock*, align 8
  %5 = alloca %struct.j1939_sk_buff_cb*, align 8
  %6 = alloca %struct.j1939_filter*, align 8
  %7 = alloca i32, align 4
  store %struct.j1939_sock* %0, %struct.j1939_sock** %4, align 8
  store %struct.j1939_sk_buff_cb* %1, %struct.j1939_sk_buff_cb** %5, align 8
  %8 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %9 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %8, i32 0, i32 1
  %10 = load %struct.j1939_filter*, %struct.j1939_filter** %9, align 8
  store %struct.j1939_filter* %10, %struct.j1939_filter** %6, align 8
  %11 = load %struct.j1939_sock*, %struct.j1939_sock** %4, align 8
  %12 = getelementptr inbounds %struct.j1939_sock, %struct.j1939_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %64, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %18
  %22 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %23 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %27 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %31 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %64

35:                                               ; preds = %21
  %36 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %37 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %41 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %45 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %64

49:                                               ; preds = %35
  %50 = load %struct.j1939_sk_buff_cb*, %struct.j1939_sk_buff_cb** %5, align 8
  %51 = getelementptr inbounds %struct.j1939_sk_buff_cb, %struct.j1939_sk_buff_cb* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %55 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  %58 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %59 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %64

63:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %70

64:                                               ; preds = %62, %48, %34
  %65 = load %struct.j1939_filter*, %struct.j1939_filter** %6, align 8
  %66 = getelementptr inbounds %struct.j1939_filter, %struct.j1939_filter* %65, i32 1
  store %struct.j1939_filter* %66, %struct.j1939_filter** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  br label %18

69:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %63, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
