; ModuleID = '/home/carl/AnghaBench/linux/net/mpls/extr_internal.h_mpls_entry_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/mpls/extr_internal.h_mpls_entry_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_shim_hdr = type { i32 }
%struct.mpls_entry_decoded = type { i32, i32, i32, i32 }

@MPLS_LS_LABEL_MASK = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TTL_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TC_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TC_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_S_MASK = common dso_local global i32 0, align 4
@MPLS_LS_S_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.mpls_shim_hdr*)* @mpls_entry_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @mpls_entry_decode(%struct.mpls_shim_hdr* %0) #0 {
  %2 = alloca %struct.mpls_entry_decoded, align 4
  %3 = alloca %struct.mpls_shim_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.mpls_shim_hdr* %0, %struct.mpls_shim_hdr** %3, align 8
  %5 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %3, align 8
  %6 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @be32_to_cpu(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MPLS_LS_LABEL_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @MPLS_LS_LABEL_SHIFT, align 4
  %13 = lshr i32 %11, %12
  %14 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MPLS_LS_TTL_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %19 = lshr i32 %17, %18
  %20 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %2, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MPLS_LS_TC_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @MPLS_LS_TC_SHIFT, align 4
  %25 = lshr i32 %23, %24
  %26 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %2, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MPLS_LS_S_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %31 = lshr i32 %29, %30
  %32 = getelementptr inbounds %struct.mpls_entry_decoded, %struct.mpls_entry_decoded* %2, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = bitcast %struct.mpls_entry_decoded* %2 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 4
  ret { i64, i64 } %34
}

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
