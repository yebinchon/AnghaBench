; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_signal_kthreads.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_signal_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.svc_pool = type { i32 }
%struct.task_struct = type { i32 }

@SIGINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, %struct.svc_pool*, i32)* @svc_signal_kthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_signal_kthreads(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.svc_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %4, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %10 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %26, %3
  %14 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  %15 = load %struct.svc_pool*, %struct.svc_pool** %5, align 8
  %16 = call %struct.task_struct* @choose_victim(%struct.svc_serv* %14, %struct.svc_pool* %15, i32* %8)
  store %struct.task_struct* %16, %struct.task_struct** %7, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = icmp eq %struct.task_struct* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %29

20:                                               ; preds = %13
  %21 = load i32, i32* @SIGINT, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %23 = call i32 @send_sig(i32 %21, %struct.task_struct* %22, i32 1)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %13, label %29

29:                                               ; preds = %26, %19
  ret i32 0
}

declare dso_local %struct.task_struct* @choose_victim(%struct.svc_serv*, %struct.svc_pool*, i32*) #1

declare dso_local i32 @send_sig(i32, %struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
