; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_internal.h_mpls_entry_encode.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_internal.h_mpls_entry_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_shim_hdr = type { i32 }

@MPLS_LS_LABEL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TC_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_S_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mpls_entry_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpls_entry_encode(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mpls_shim_hdr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MPLS_LS_LABEL_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MPLS_LS_TC_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %21 = shl i32 1, %20
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  %25 = or i32 %16, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
