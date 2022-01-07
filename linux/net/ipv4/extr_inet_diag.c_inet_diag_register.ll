; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_diag_handler = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_MAX = common dso_local global i64 0, align 8
@inet_diag_table_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@inet_diag_table = common dso_local global %struct.inet_diag_handler** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_diag_register(%struct.inet_diag_handler* %0) #0 {
  %2 = alloca %struct.inet_diag_handler*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.inet_diag_handler* %0, %struct.inet_diag_handler** %2, align 8
  %5 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %2, align 8
  %6 = getelementptr inbounds %struct.inet_diag_handler, %struct.inet_diag_handler* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @IPPROTO_MAX, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %30

14:                                               ; preds = %1
  %15 = call i32 @mutex_lock(i32* @inet_diag_table_mutex)
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %18, i64 %19
  %21 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %20, align 8
  %22 = icmp ne %struct.inet_diag_handler* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.inet_diag_handler*, %struct.inet_diag_handler** %2, align 8
  %25 = load %struct.inet_diag_handler**, %struct.inet_diag_handler*** @inet_diag_table, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct.inet_diag_handler*, %struct.inet_diag_handler** %25, i64 %26
  store %struct.inet_diag_handler* %24, %struct.inet_diag_handler** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %14
  %29 = call i32 @mutex_unlock(i32* @inet_diag_table_mutex)
  br label %30

30:                                               ; preds = %28, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
