; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_syn_ack_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_syn_ack_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_sock*, i32, i32, i32, i32*, i32*)* @syn_ack_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syn_ack_recalc(%struct.request_sock* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.request_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.request_sock* %0, %struct.request_sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %6
  %16 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %17 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %12, align 8
  store i32 1, i32* %23, align 4
  br label %64

24:                                               ; preds = %6
  %25 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %26 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %32 = call %struct.TYPE_2__* @inet_rsk(%struct.request_sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %38 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %39, %40
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %24
  %45 = phi i1 [ false, %24 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %49 = call %struct.TYPE_2__* @inet_rsk(%struct.request_sock* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.request_sock*, %struct.request_sock** %7, align 8
  %55 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp sge i32 %56, %58
  br label %60

60:                                               ; preds = %53, %44
  %61 = phi i1 [ true, %44 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %15
  ret void
}

declare dso_local %struct.TYPE_2__* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
