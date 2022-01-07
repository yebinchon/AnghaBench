; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_diag.c_sock_diag_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_diag_handler = type { i64 }

@AF_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@sock_diag_table_mutex = common dso_local global i32 0, align 4
@sock_diag_handlers = common dso_local global %struct.sock_diag_handler** null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_diag_register(%struct.sock_diag_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_diag_handler*, align 8
  %4 = alloca i32, align 4
  store %struct.sock_diag_handler* %0, %struct.sock_diag_handler** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %3, align 8
  %6 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AF_MAX, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @sock_diag_table_mutex)
  %15 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %16 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %3, align 8
  %17 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %15, i64 %18
  %20 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %19, align 8
  %21 = icmp ne %struct.sock_diag_handler* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %13
  %26 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %3, align 8
  %27 = load %struct.sock_diag_handler**, %struct.sock_diag_handler*** @sock_diag_handlers, align 8
  %28 = load %struct.sock_diag_handler*, %struct.sock_diag_handler** %3, align 8
  %29 = getelementptr inbounds %struct.sock_diag_handler, %struct.sock_diag_handler* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.sock_diag_handler*, %struct.sock_diag_handler** %27, i64 %30
  store %struct.sock_diag_handler* %26, %struct.sock_diag_handler** %31, align 8
  br label %32

32:                                               ; preds = %25, %22
  %33 = call i32 @mutex_unlock(i32* @sock_diag_table_mutex)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
