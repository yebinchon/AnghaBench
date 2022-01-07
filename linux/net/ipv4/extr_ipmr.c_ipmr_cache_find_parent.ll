; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_find_parent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_find_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc_cache = type { i32 }
%struct.mr_table = type { i32 }
%struct.mfc_cache_cmp_arg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc_cache* (%struct.mr_table*, i32, i32, i32)* @ipmr_cache_find_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc_cache* @ipmr_cache_find_parent(%struct.mr_table* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mfc_cache_cmp_arg, align 4
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %9, i32 0, i32 1
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.mfc_cache* @mr_mfc_find_parent(%struct.mr_table* %14, %struct.mfc_cache_cmp_arg* %9, i32 %15)
  ret %struct.mfc_cache* %16
}

declare dso_local %struct.mfc_cache* @mr_mfc_find_parent(%struct.mr_table*, %struct.mfc_cache_cmp_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
