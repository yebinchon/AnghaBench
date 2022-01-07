; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_find_any.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_find_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfc_cache = type { i32 }
%struct.mr_table = type { i32 }
%struct.mfc_cache_cmp_arg = type { i64, i64 }

@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mfc_cache* (%struct.mr_table*, i64, i32)* @ipmr_cache_find_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mfc_cache* @ipmr_cache_find_any(%struct.mr_table* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mfc_cache*, align 8
  %5 = alloca %struct.mr_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mfc_cache_cmp_arg, align 8
  store %struct.mr_table* %0, %struct.mr_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds %struct.mfc_cache_cmp_arg, %struct.mfc_cache_cmp_arg* %8, i32 0, i32 1
  %12 = load i32, i32* @INADDR_ANY, align 4
  %13 = call i64 @htonl(i32 %12)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @INADDR_ANY, align 4
  %16 = call i64 @htonl(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.mfc_cache* @mr_mfc_find_any_parent(%struct.mr_table* %19, i32 %20)
  store %struct.mfc_cache* %21, %struct.mfc_cache** %4, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.mr_table*, %struct.mr_table** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.mfc_cache* @mr_mfc_find_any(%struct.mr_table* %23, i32 %24, %struct.mfc_cache_cmp_arg* %8)
  store %struct.mfc_cache* %25, %struct.mfc_cache** %4, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  ret %struct.mfc_cache* %27
}

declare dso_local i64 @htonl(i32) #1

declare dso_local %struct.mfc_cache* @mr_mfc_find_any_parent(%struct.mr_table*, i32) #1

declare dso_local %struct.mfc_cache* @mr_mfc_find_any(%struct.mr_table*, i32, %struct.mfc_cache_cmp_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
