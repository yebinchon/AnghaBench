; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_rt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_af_mpls.c_mpls_rt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_route = type { i32, i32, i32, i32 }

@MAX_MPLS_ROUTE_MEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mpls_route* (i32, i32, i32)* @mpls_rt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mpls_route* @mpls_rt_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mpls_route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpls_route*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @MPLS_NH_SIZE(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add i64 16, %17
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @MAX_MPLS_ROUTE_MEM, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.mpls_route* @ERR_PTR(i32 %24)
  store %struct.mpls_route* %25, %struct.mpls_route** %4, align 8
  br label %51

26:                                               ; preds = %3
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mpls_route* @kzalloc(i64 %27, i32 %28)
  store %struct.mpls_route* %29, %struct.mpls_route** %9, align 8
  %30 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %31 = icmp ne %struct.mpls_route* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.mpls_route* @ERR_PTR(i32 %34)
  store %struct.mpls_route* %35, %struct.mpls_route** %4, align 8
  br label %51

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %39 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %42 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %45 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MPLS_NH_VIA_OFF(i32 %46)
  %48 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  %49 = getelementptr inbounds %struct.mpls_route, %struct.mpls_route* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mpls_route*, %struct.mpls_route** %9, align 8
  store %struct.mpls_route* %50, %struct.mpls_route** %4, align 8
  br label %51

51:                                               ; preds = %36, %32, %22
  %52 = load %struct.mpls_route*, %struct.mpls_route** %4, align 8
  ret %struct.mpls_route* %52
}

declare dso_local i32 @MPLS_NH_SIZE(i32, i32) #1

declare dso_local %struct.mpls_route* @ERR_PTR(i32) #1

declare dso_local %struct.mpls_route* @kzalloc(i64, i32) #1

declare dso_local i32 @MPLS_NH_VIA_OFF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
