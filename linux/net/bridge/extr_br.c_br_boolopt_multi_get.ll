; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_boolopt_multi_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br.c_br_boolopt_multi_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.br_boolopt_multi = type { i32, i32 }

@BR_BOOLOPT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_boolopt_multi_get(%struct.net_bridge* %0, %struct.br_boolopt_multi* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.br_boolopt_multi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.br_boolopt_multi* %1, %struct.br_boolopt_multi** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %19, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BR_BOOLOPT_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @br_boolopt_get(%struct.net_bridge* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.br_boolopt_multi*, %struct.br_boolopt_multi** %4, align 8
  %25 = getelementptr inbounds %struct.br_boolopt_multi, %struct.br_boolopt_multi* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @BR_BOOLOPT_MAX, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @GENMASK(i32 %27, i32 0)
  %29 = load %struct.br_boolopt_multi*, %struct.br_boolopt_multi** %4, align 8
  %30 = getelementptr inbounds %struct.br_boolopt_multi, %struct.br_boolopt_multi* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @br_boolopt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
