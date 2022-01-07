; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_prepare_thread.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_prepare_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_serv = type { i32 }
%struct.svc_pool = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_rqst* @svc_prepare_thread(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rqst*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %10 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.svc_rqst* @svc_rqst_alloc(%struct.svc_serv* %9, %struct.svc_pool* %10, i32 %11)
  store %struct.svc_rqst* %12, %struct.svc_rqst** %8, align 8
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %14 = icmp ne %struct.svc_rqst* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.svc_rqst* @ERR_PTR(i32 %17)
  store %struct.svc_rqst* %18, %struct.svc_rqst** %4, align 8
  br label %40

19:                                               ; preds = %3
  %20 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %21 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %25 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %28 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %32 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %31, i32 0, i32 0
  %33 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %34 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %33, i32 0, i32 1
  %35 = call i32 @list_add_rcu(i32* %32, i32* %34)
  %36 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %37 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_bh(i32* %37)
  %39 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  store %struct.svc_rqst* %39, %struct.svc_rqst** %4, align 8
  br label %40

40:                                               ; preds = %19, %15
  %41 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  ret %struct.svc_rqst* %41
}

declare dso_local %struct.svc_rqst* @svc_rqst_alloc(%struct.svc_serv*, %struct.svc_pool*, i32) #1

declare dso_local %struct.svc_rqst* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
