; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_sock_unbind_all_res.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_socket.c_pn_sock_unbind_all_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.sock** }
%struct.sock = type { i32 }

@resource_mutex = common dso_local global i32 0, align 4
@pnres = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pn_sock_unbind_all_res(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @resource_mutex)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ult i32 %7, 256
  br i1 %8, label %9, label %30

9:                                                ; preds = %6
  %10 = load %struct.sock**, %struct.sock*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pnres, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.sock*, %struct.sock** %10, i64 %12
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = icmp eq %struct.sock* %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = load %struct.sock**, %struct.sock*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pnres, i32 0, i32 0), align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sock*, %struct.sock** %18, i64 %20
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  %23 = call i32 @RCU_INIT_POINTER(%struct.sock* %22, i32* null)
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %17, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %6

30:                                               ; preds = %6
  %31 = call i32 @mutex_unlock(i32* @resource_mutex)
  br label %32

32:                                               ; preds = %35, %30
  %33 = load i32, i32* %4, align 4
  %34 = icmp ugt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = call i32 @__sock_put(%struct.sock* %36)
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %4, align 4
  br label %32

40:                                               ; preds = %32
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.sock*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
