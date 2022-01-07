; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_account_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_account_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_umem*)* @xdp_umem_account_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_umem_account_pages(%struct.xdp_umem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  %7 = load i32, i32* @CAP_IPC_LOCK, align 4
  %8 = call i64 @capable(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %13 = call i64 @rlimit(i32 %12)
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %4, align 8
  %16 = call i32 (...) @current_user()
  %17 = call %struct.TYPE_3__* @get_uid(i32 %16)
  %18 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %19 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %18, i32 0, i32 1
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  br label %20

20:                                               ; preds = %44, %11
  %21 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %22 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i64 @atomic_long_read(i32* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %28 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %20
  %35 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %36 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @free_uid(%struct.TYPE_3__* %37)
  %39 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %40 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %39, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %46 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @atomic_long_cmpxchg(i32* %48, i64 %49, i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %20, label %54

54:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %34, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @rlimit(i32) #1

declare dso_local %struct.TYPE_3__* @get_uid(i32) #1

declare dso_local i32 @current_user(...) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @free_uid(%struct.TYPE_3__*) #1

declare dso_local i64 @atomic_long_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
