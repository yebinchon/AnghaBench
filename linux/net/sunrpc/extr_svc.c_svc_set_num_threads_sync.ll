; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_set_num_threads_sync.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_set_num_threads_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.svc_pool = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_set_num_threads_sync(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %9 = icmp eq %struct.svc_pool* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %12 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, %14
  store i32 %16, i32* %7, align 4
  br label %31

17:                                               ; preds = %3
  %18 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %19 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_bh(i32* %19)
  %21 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %22 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %29 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  br label %31

31:                                               ; preds = %17, %10
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %36 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @svc_start_kthreads(%struct.svc_serv* %35, %struct.svc_pool* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %44 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @svc_stop_kthreads(%struct.svc_serv* %43, %struct.svc_pool* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %42, %34
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @svc_start_kthreads(%struct.svc_serv*, %struct.svc_pool*, i32) #1

declare dso_local i32 @svc_stop_kthreads(%struct.svc_serv*, %struct.svc_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
