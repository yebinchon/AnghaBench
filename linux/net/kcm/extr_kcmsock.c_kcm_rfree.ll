; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_rfree.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_rfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.sock* }
%struct.sock = type { i64, i32 }
%struct.kcm_sock = type { i32, i32, %struct.kcm_mux* }
%struct.kcm_mux = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @kcm_rfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_rfree(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.kcm_sock*, align 8
  %5 = alloca %struct.kcm_mux*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.kcm_sock* @kcm_sk(%struct.sock* %10)
  store %struct.kcm_sock* %11, %struct.kcm_sock** %4, align 8
  %12 = load %struct.kcm_sock*, %struct.kcm_sock** %4, align 8
  %13 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %12, i32 0, i32 2
  %14 = load %struct.kcm_mux*, %struct.kcm_mux** %13, align 8
  store %struct.kcm_mux* %14, %struct.kcm_mux** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sk_mem_uncharge(%struct.sock* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = call i32 @atomic_sub(i32 %21, i32* %23)
  %25 = call i32 (...) @smp_mb__after_atomic()
  %26 = load %struct.kcm_sock*, %struct.kcm_sock** %4, align 8
  %27 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %1
  %31 = load %struct.kcm_sock*, %struct.kcm_sock** %4, align 8
  %32 = getelementptr inbounds %struct.kcm_sock, %struct.kcm_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i64 @sk_rmem_alloc_get(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %3, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load %struct.kcm_mux*, %struct.kcm_mux** %5, align 8
  %44 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  %46 = load %struct.kcm_sock*, %struct.kcm_sock** %4, align 8
  %47 = call i32 @kcm_rcv_ready(%struct.kcm_sock* %46)
  %48 = load %struct.kcm_mux*, %struct.kcm_mux** %5, align 8
  %49 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  br label %51

51:                                               ; preds = %42, %35, %30, %1
  ret void
}

declare dso_local %struct.kcm_sock* @kcm_sk(%struct.sock*) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @sk_rmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kcm_rcv_ready(%struct.kcm_sock*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
