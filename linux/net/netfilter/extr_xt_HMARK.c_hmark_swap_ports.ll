; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_swap_ports.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_HMARK.c_hmark_swap_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hmark_ports = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xt_hmark_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.hmark_ports*, %struct.xt_hmark_info*)* @hmark_swap_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmark_swap_ports(%union.hmark_ports* %0, %struct.xt_hmark_info* %1) #0 {
  %3 = alloca %union.hmark_ports*, align 8
  %4 = alloca %struct.xt_hmark_info*, align 8
  %5 = alloca %union.hmark_ports, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %union.hmark_ports* %0, %union.hmark_ports** %3, align 8
  store %struct.xt_hmark_info* %1, %struct.xt_hmark_info** %4, align 8
  %8 = load %union.hmark_ports*, %union.hmark_ports** %3, align 8
  %9 = bitcast %union.hmark_ports* %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %12 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %10, %14
  %16 = load %struct.xt_hmark_info*, %struct.xt_hmark_info** %4, align 8
  %17 = getelementptr inbounds %struct.xt_hmark_info, %struct.xt_hmark_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %15, %19
  %21 = bitcast %union.hmark_ports* %5 to i32*
  store i32 %20, i32* %21, align 4
  %22 = bitcast %union.hmark_ports* %5 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = bitcast %union.hmark_ports* %5 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohs(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %35, %36
  %38 = load %union.hmark_ports*, %union.hmark_ports** %3, align 8
  %39 = bitcast %union.hmark_ports* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %47

40:                                               ; preds = %2
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %42, %43
  %45 = load %union.hmark_ports*, %union.hmark_ports** %3, align 8
  %46 = bitcast %union.hmark_ports* %45 to i32*
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %33
  ret void
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
