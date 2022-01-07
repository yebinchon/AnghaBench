; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_rcv_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xsk.c___xsk_rcv_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdp_umem*, i32, i8*, i32, i32)* @__xsk_rcv_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xsk_rcv_memcpy(%struct.xdp_umem* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xdp_umem* %0, %struct.xdp_umem** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i8* @xdp_umem_get_data(%struct.xdp_umem* %15, i32 %16)
  store i8* %17, i8** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @xsk_umem_add_offset_to_addr(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i64 @xskq_crosses_non_contig_pg(%struct.xdp_umem* %20, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %5
  %28 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %29 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @memcpy(i8* %49, i8* %50, i32 %53)
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @memcpy(i8* %55, i8* %59, i32 %62)
  br label %71

64:                                               ; preds = %5
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @memcpy(i8* %65, i8* %66, i32 %69)
  br label %71

71:                                               ; preds = %64, %27
  ret void
}

declare dso_local i8* @xdp_umem_get_data(%struct.xdp_umem*, i32) #1

declare dso_local i32 @xsk_umem_add_offset_to_addr(i32) #1

declare dso_local i64 @xskq_crosses_non_contig_pg(%struct.xdp_umem*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
