; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_get_lse.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_mpls.c_tcf_mpls_get_lse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpls_shim_hdr = type { i32 }
%struct.tcf_mpls_params = type { i32, i32, i32, i32 }

@ACT_MPLS_LABEL_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_MASK = common dso_local global i32 0, align 4
@MPLS_LS_LABEL_SHIFT = common dso_local global i32 0, align 4
@MPLS_LS_TTL_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TTL_SHIFT = common dso_local global i32 0, align 4
@ACT_MPLS_TC_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_TC_MASK = common dso_local global i32 0, align 4
@MPLS_LS_TC_SHIFT = common dso_local global i32 0, align 4
@ACT_MPLS_BOS_NOT_SET = common dso_local global i32 0, align 4
@MPLS_LS_S_MASK = common dso_local global i32 0, align 4
@MPLS_LS_S_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpls_shim_hdr*, %struct.tcf_mpls_params*, i32)* @tcf_mpls_get_lse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mpls_get_lse(%struct.mpls_shim_hdr* %0, %struct.tcf_mpls_params* %1, i32 %2) #0 {
  %4 = alloca %struct.mpls_shim_hdr*, align 8
  %5 = alloca %struct.tcf_mpls_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mpls_shim_hdr* %0, %struct.mpls_shim_hdr** %4, align 8
  store %struct.tcf_mpls_params* %1, %struct.tcf_mpls_params** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %4, align 8
  %9 = icmp ne %struct.mpls_shim_hdr* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.mpls_shim_hdr*, %struct.mpls_shim_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.mpls_shim_hdr, %struct.mpls_shim_hdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %17 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ACT_MPLS_LABEL_NOT_SET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i32, i32* @MPLS_LS_LABEL_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %27 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MPLS_LS_LABEL_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %21, %15
  %34 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %35 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @MPLS_LS_TTL_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %44 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MPLS_LS_TTL_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %38, %33
  %51 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %52 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ACT_MPLS_TC_NOT_SET, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load i32, i32* @MPLS_LS_TC_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %62 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MPLS_LS_TC_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %56, %50
  %69 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %70 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ACT_MPLS_BOS_NOT_SET, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %68
  %75 = load i32, i32* @MPLS_LS_S_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.tcf_mpls_params*, %struct.tcf_mpls_params** %5, align 8
  %80 = getelementptr inbounds %struct.tcf_mpls_params, %struct.tcf_mpls_params* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %95

86:                                               ; preds = %68
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @MPLS_LS_S_SHIFT, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %89, %86
  br label %95

95:                                               ; preds = %94, %74
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @cpu_to_be32(i32 %96)
  ret i32 %97
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
