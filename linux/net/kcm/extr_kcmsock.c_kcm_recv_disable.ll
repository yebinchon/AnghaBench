; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_recv_disable.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_recv_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_sock = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.kcm_mux* }
%struct.TYPE_2__ = type { i32 }
%struct.kcm_mux = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_sock*)* @kcm_recv_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_recv_disable(%struct.kcm_sock* %0) #0 {
  %2 = alloca %struct.kcm_sock*, align 8
  %3 = alloca %struct.kcm_mux*, align 8
  store %struct.kcm_sock* %0, %struct.kcm_sock** %2, align 8
  %4 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %5 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %4, i32 0, i32 5
  %6 = load %struct.kcm_mux*, %struct.kcm_mux** %5, align 8
  store %struct.kcm_mux* %6, %struct.kcm_mux** %3, align 8
  %7 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %8 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %14 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %17 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %19 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %12
  %23 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %24 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %29 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %28, i32 0, i32 3
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %32 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %35 = load %struct.kcm_sock*, %struct.kcm_sock** %2, align 8
  %36 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @requeue_rx_msgs(%struct.kcm_mux* %34, i32* %37)
  br label %39

39:                                               ; preds = %33, %12
  %40 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %41 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @requeue_rx_msgs(%struct.kcm_mux*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
