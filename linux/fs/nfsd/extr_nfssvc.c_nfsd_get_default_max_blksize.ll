; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_get_default_max_blksize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_get_default_max_blksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@NFSSVC_MAXBLKSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfsd_get_default_max_blksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_get_default_max_blksize() #0 {
  %1 = alloca %struct.sysinfo, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i32 @si_meminfo(%struct.sysinfo* %1)
  %5 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = sub i64 %6, %8
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = shl i64 %9, %10
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = lshr i64 %12, 12
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* @NFSSVC_MAXBLKSIZE, align 8
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %24, %0
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = icmp uge i64 %20, 16384
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i64, i64* %3, align 8
  %26 = udiv i64 %25, 2
  store i64 %26, i64* %3, align 8
  br label %15

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  ret i32 %29
}

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
