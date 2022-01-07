; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c_xsk_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_sock = type { i64, i64 }
%struct.xdp_buff = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@MEM_TYPE_ZERO_COPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsk_rcv(%struct.xdp_sock* %0, %struct.xdp_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_sock*, align 8
  %5 = alloca %struct.xdp_buff*, align 8
  %6 = alloca i64, align 8
  store %struct.xdp_sock* %0, %struct.xdp_sock** %4, align 8
  store %struct.xdp_buff* %1, %struct.xdp_buff** %5, align 8
  %7 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %8 = call i32 @xsk_is_bound(%struct.xdp_sock* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %15 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %18 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %16, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %13
  %24 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %25 = getelementptr inbounds %struct.xdp_sock, %struct.xdp_sock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23, %13
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %64

36:                                               ; preds = %23
  %37 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %38 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %41 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  store i64 %43, i64* %6, align 8
  %44 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %45 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MEM_TYPE_ZERO_COPY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %54 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @__xsk_rcv_zc(%struct.xdp_sock* %53, %struct.xdp_buff* %54, i64 %55)
  br label %62

57:                                               ; preds = %36
  %58 = load %struct.xdp_sock*, %struct.xdp_sock** %4, align 8
  %59 = load %struct.xdp_buff*, %struct.xdp_buff** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @__xsk_rcv(%struct.xdp_sock* %58, %struct.xdp_buff* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = phi i32 [ %56, %52 ], [ %61, %57 ]
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %33, %10
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @xsk_is_bound(%struct.xdp_sock*) #1

declare dso_local i32 @__xsk_rcv_zc(%struct.xdp_sock*, %struct.xdp_buff*, i64) #1

declare dso_local i32 @__xsk_rcv(%struct.xdp_sock*, %struct.xdp_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
