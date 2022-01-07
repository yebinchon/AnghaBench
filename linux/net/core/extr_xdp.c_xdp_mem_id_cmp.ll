; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_mem_id_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_mem_id_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { i64 }
%struct.xdp_mem_allocator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @xdp_mem_id_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_mem_id_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca %struct.rhashtable_compare_arg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xdp_mem_allocator*, align 8
  %6 = alloca i64, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.xdp_mem_allocator*
  store %struct.xdp_mem_allocator* %8, %struct.xdp_mem_allocator** %5, align 8
  %9 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %3, align 8
  %10 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.xdp_mem_allocator*, %struct.xdp_mem_allocator** %5, align 8
  %15 = getelementptr inbounds %struct.xdp_mem_allocator, %struct.xdp_mem_allocator* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
