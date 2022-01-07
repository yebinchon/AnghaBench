; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_buf_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_buf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_buf_create(%struct.smc_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @__smc_buf_create(%struct.smc_sock* %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @__smc_buf_create(%struct.smc_sock* %15, i32 %16, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %22 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %26 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @smc_buf_free(i32 %24, i32 0, i32 %28)
  br label %30

30:                                               ; preds = %20, %14
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @__smc_buf_create(%struct.smc_sock*, i32, i32) #1

declare dso_local i32 @smc_buf_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
