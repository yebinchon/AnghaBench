; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_eval.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_objref.c_nft_objref_map_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_expr = type { i32 }
%struct.nft_regs = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.nft_pktinfo = type { i32 }
%struct.nft_objref_map = type { i64, %struct.nft_set* }
%struct.nft_set = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)* }
%struct.nft_set_ext = type { i32 }
%struct.nft_object = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)* }

@NFT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_expr*, %struct.nft_regs*, %struct.nft_pktinfo*)* @nft_objref_map_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_objref_map_eval(%struct.nft_expr* %0, %struct.nft_regs* %1, %struct.nft_pktinfo* %2) #0 {
  %4 = alloca %struct.nft_expr*, align 8
  %5 = alloca %struct.nft_regs*, align 8
  %6 = alloca %struct.nft_pktinfo*, align 8
  %7 = alloca %struct.nft_objref_map*, align 8
  %8 = alloca %struct.nft_set*, align 8
  %9 = alloca %struct.nft_set_ext*, align 8
  %10 = alloca %struct.nft_object*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_expr* %0, %struct.nft_expr** %4, align 8
  store %struct.nft_regs* %1, %struct.nft_regs** %5, align 8
  store %struct.nft_pktinfo* %2, %struct.nft_pktinfo** %6, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %4, align 8
  %13 = call %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_objref_map* %13, %struct.nft_objref_map** %7, align 8
  %14 = load %struct.nft_objref_map*, %struct.nft_objref_map** %7, align 8
  %15 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %14, i32 0, i32 1
  %16 = load %struct.nft_set*, %struct.nft_set** %15, align 8
  store %struct.nft_set* %16, %struct.nft_set** %8, align 8
  %17 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %18 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)*, i32 (i32, %struct.nft_set*, i32*, %struct.nft_set_ext**)** %20, align 8
  %22 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %23 = call i32 @nft_net(%struct.nft_pktinfo* %22)
  %24 = load %struct.nft_set*, %struct.nft_set** %8, align 8
  %25 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %26 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.nft_objref_map*, %struct.nft_objref_map** %7, align 8
  %29 = getelementptr inbounds %struct.nft_objref_map, %struct.nft_objref_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 %21(i32 %23, %struct.nft_set* %24, i32* %31, %struct.nft_set_ext** %9)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @NFT_BREAK, align 4
  %37 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %38 = getelementptr inbounds %struct.nft_regs, %struct.nft_regs* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %53

40:                                               ; preds = %3
  %41 = load %struct.nft_set_ext*, %struct.nft_set_ext** %9, align 8
  %42 = call %struct.nft_object** @nft_set_ext_obj(%struct.nft_set_ext* %41)
  %43 = load %struct.nft_object*, %struct.nft_object** %42, align 8
  store %struct.nft_object* %43, %struct.nft_object** %10, align 8
  %44 = load %struct.nft_object*, %struct.nft_object** %10, align 8
  %45 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)*, i32 (%struct.nft_object*, %struct.nft_regs*, %struct.nft_pktinfo*)** %47, align 8
  %49 = load %struct.nft_object*, %struct.nft_object** %10, align 8
  %50 = load %struct.nft_regs*, %struct.nft_regs** %5, align 8
  %51 = load %struct.nft_pktinfo*, %struct.nft_pktinfo** %6, align 8
  %52 = call i32 %48(%struct.nft_object* %49, %struct.nft_regs* %50, %struct.nft_pktinfo* %51)
  br label %53

53:                                               ; preds = %40, %35
  ret void
}

declare dso_local %struct.nft_objref_map* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_net(%struct.nft_pktinfo*) #1

declare dso_local %struct.nft_object** @nft_set_ext_obj(%struct.nft_set_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
