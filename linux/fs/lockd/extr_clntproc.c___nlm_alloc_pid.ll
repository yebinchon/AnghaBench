; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c___nlm_alloc_pid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c___nlm_alloc_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nlm_host*)* @__nlm_alloc_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__nlm_alloc_pid(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca i64, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %6 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = sext i32 %7 to i64
  store i64 %9, i64* %3, align 8
  br label %10

10:                                               ; preds = %4
  %11 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @nlm_pidbusy(%struct.nlm_host* %11, i64 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %4, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  ret i64 %16
}

declare dso_local i64 @nlm_pidbusy(%struct.nlm_host*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
