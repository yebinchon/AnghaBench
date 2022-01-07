; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_lock_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_lock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_handler = type { i32 }

@inet_diag_table = common dso_local global %struct.inet_diag_handler** null, align 8
@AF_INET = common dso_local global i32 0, align 4
@inet_diag_table_mutex = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet_diag_handler* (i32)* @inet_diag_lock_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_diag_handler* @inet_diag_lock_handler(i32 %0) #0 {
  %2 = alloca %struct.inet_diag_handler*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %4, i64 %6
  %8 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %7, align 8
  %9 = icmp ne %struct.inet_diag_handler* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @sock_load_diag_module(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = call i32 @mutex_lock(i32* @inet_diag_table_mutex)
  %16 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %16, i64 %18
  %20 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %19, align 8
  %21 = icmp ne %struct.inet_diag_handler* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.inet_diag_handler* @ERR_PTR(i32 %24)
  store %struct.inet_diag_handler* %25, %struct.inet_diag_handler** %2, align 8
  br label %32

26:                                               ; preds = %14
  %27 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %27, i64 %29
  %31 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %30, align 8
  store %struct.inet_diag_handler* %31, %struct.inet_diag_handler** %2, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %2, align 8
  ret %struct.inet_diag_handler* %33
}

declare dso_local i32 @sock_load_diag_module(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inet_diag_handler* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
