; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_start_kthreads.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_start_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.svc_pool = type { i32 }
%struct.svc_rqst = type { %struct.svc_rqst* }
%struct.task_struct = type { %struct.task_struct* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, %struct.svc_pool*, i32)* @svc_start_kthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_start_kthreads(%struct.svc_serv* %0, %struct.svc_pool* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.svc_pool*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %14 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %94, %3
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %21 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %22 = call %struct.svc_pool* @choose_pool(%struct.svc_serv* %20, %struct.svc_pool* %21, i32* %11)
  store %struct.svc_pool* %22, %struct.svc_pool** %10, align 8
  %23 = load %struct.svc_pool*, %struct.svc_pool** %10, align 8
  %24 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @svc_pool_map_get_node(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %28 = load %struct.svc_pool*, %struct.svc_pool** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.task_struct* @svc_prepare_thread(%struct.svc_serv* %27, %struct.svc_pool* %28, i32 %29)
  %31 = bitcast %struct.task_struct* %30 to %struct.svc_rqst*
  store %struct.svc_rqst* %31, %struct.svc_rqst** %8, align 8
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %33 = bitcast %struct.svc_rqst* %32 to %struct.task_struct*
  %34 = call i64 @IS_ERR(%struct.task_struct* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %38 = bitcast %struct.svc_rqst* %37 to %struct.task_struct*
  %39 = call i32 @PTR_ERR(%struct.task_struct* %38)
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %17
  %41 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %42 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__module_get(i32 %45)
  %47 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %48 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %53 = bitcast %struct.svc_rqst* %52 to %struct.task_struct*
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %56 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.task_struct* @kthread_create_on_node(i32 %51, %struct.task_struct* %53, i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57)
  store %struct.task_struct* %58, %struct.task_struct** %9, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %60 = call i64 @IS_ERR(%struct.task_struct* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %40
  %63 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %64 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @module_put(i32 %67)
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %70 = bitcast %struct.svc_rqst* %69 to %struct.task_struct*
  %71 = call i32 @svc_exit_thread(%struct.task_struct* %70)
  %72 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.task_struct* %72)
  store i32 %73, i32* %4, align 4
  br label %98

74:                                               ; preds = %40
  %75 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %76 = bitcast %struct.task_struct* %75 to %struct.svc_rqst*
  %77 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %78 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %77, i32 0, i32 0
  store %struct.svc_rqst* %76, %struct.svc_rqst** %78, align 8
  %79 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %80 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %85 = load %struct.svc_pool*, %struct.svc_pool** %10, align 8
  %86 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @svc_pool_map_set_cpumask(%struct.task_struct* %84, i32 %87)
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %91 = call i32 @svc_sock_update_bufs(%struct.svc_serv* %90)
  %92 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %93 = call i32 @wake_up_process(%struct.task_struct* %92)
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %17, label %97

97:                                               ; preds = %94
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %62, %36
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.svc_pool* @choose_pool(%struct.svc_serv*, %struct.svc_pool*, i32*) #1

declare dso_local i32 @svc_pool_map_get_node(i32) #1

declare dso_local %struct.task_struct* @svc_prepare_thread(%struct.svc_serv*, %struct.svc_pool*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local %struct.task_struct* @kthread_create_on_node(i32, %struct.task_struct*, i32, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @svc_exit_thread(%struct.task_struct*) #1

declare dso_local i32 @svc_pool_map_set_cpumask(%struct.task_struct*, i32) #1

declare dso_local i32 @svc_sock_update_bufs(%struct.svc_serv*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
