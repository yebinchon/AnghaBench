; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_update_delay.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_update_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFS4_POLL_RETRY_MAX = common dso_local global i64 0, align 8
@NFS4_POLL_RETRY_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*)* @nfs4_update_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_update_delay(i64* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %5 = load i64*, i64** %3, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @NFS4_POLL_RETRY_MAX, align 8
  store i64 %8, i64* %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i64, i64* @NFS4_POLL_RETRY_MIN, align 8
  %15 = load i64*, i64** %3, align 8
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NFS4_POLL_RETRY_MAX, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* @NFS4_POLL_RETRY_MAX, align 8
  %23 = load i64*, i64** %3, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i64*, i64** %3, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64*, i64** %3, align 8
  %28 = load i64, i64* %27, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %24, %7
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
