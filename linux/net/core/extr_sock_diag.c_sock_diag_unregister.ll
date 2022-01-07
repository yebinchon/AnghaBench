; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_diag_handler = type { i32 }

@AF_MAX = common dso_local global i32 0, align 4
@sock_diag_table_mutex = common dso_local global i32 0, align 4
@sock_diag_handlers = common dso_local global %struct.sock_diag_handler** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_diag_unregister(%struct.sock_diag_handler* %0) #0 {
  %2 = alloca %struct.sock_diag_handler*, align 8
  %3 = alloca i32, align 4
  store %struct.sock_diag_handler* %0, %struct.sock_diag_handler** %2, align 8
  %4 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %2, align 8
  %5 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AF_MAX, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @sock_diag_table_mutex)
  %13 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %13, i64 %15
  %17 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %16, align 8
  %18 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %2, align 8
  %19 = icmp ne %struct.sock_diag_handler* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %22, i64 %24
  store %struct.sock_diag_handler* null, %struct.sock_diag_handler** %25, align 8
  %26 = call i32 @mutex_unlock(i32* @sock_diag_table_mutex)
  br label %27

27:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
