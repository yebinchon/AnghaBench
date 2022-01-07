; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_create_pooled.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_create_pooled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.svc_program = type { i32 }
%struct.svc_serv_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_serv* @svc_create_pooled(%struct.svc_program* %0, i32 %1, %struct.svc_serv_ops* %2) #0 {
  %4 = alloca %struct.svc_serv*, align 8
  %5 = alloca %struct.svc_program*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_serv_ops*, align 8
  %8 = alloca %struct.svc_serv*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_program* %0, %struct.svc_program** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.svc_serv_ops* %2, %struct.svc_serv_ops** %7, align 8
  %10 = call i32 (...) @svc_pool_map_get()
  store i32 %10, i32* %9, align 4
  %11 = load %struct.svc_program*, %struct.svc_program** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.svc_serv_ops*, %struct.svc_serv_ops** %7, align 8
  %15 = call %struct.svc_serv* @__svc_create(%struct.svc_program* %11, i32 %12, i32 %13, %struct.svc_serv_ops* %14)
  store %struct.svc_serv* %15, %struct.svc_serv** %8, align 8
  %16 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  %17 = icmp ne %struct.svc_serv* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  %20 = load %struct.svc_serv*, %struct.svc_serv** %8, align 8
  store %struct.svc_serv* %20, %struct.svc_serv** %4, align 8
  br label %23

21:                                               ; preds = %18
  %22 = call i32 (...) @svc_pool_map_put()
  store %struct.svc_serv* null, %struct.svc_serv** %4, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.svc_serv*, %struct.svc_serv** %4, align 8
  ret %struct.svc_serv* %24
}

declare dso_local i32 @svc_pool_map_get(...) #1

declare dso_local %struct.svc_serv* @__svc_create(%struct.svc_program*, i32, i32, %struct.svc_serv_ops*) #1

declare dso_local i32 @svc_pool_map_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
