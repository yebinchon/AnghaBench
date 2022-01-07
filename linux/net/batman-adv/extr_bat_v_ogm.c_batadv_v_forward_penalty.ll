; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_forward_penalty.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_ogm.c_batadv_v_forward_penalty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_priv = type { i32 }

@BATADV_TQ_MAX_VALUE = common dso_local global i32 0, align 4
@BATADV_IF_DEFAULT = common dso_local global %struct.batadv_hard_iface* null, align 8
@BATADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_hard_iface*, %struct.batadv_hard_iface*, i32)* @batadv_v_forward_penalty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_forward_penalty(%struct.batadv_priv* %0, %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_hard_iface*, align 8
  %8 = alloca %struct.batadv_hard_iface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %7, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %13 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @BATADV_TQ_MAX_VALUE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %17 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** @BATADV_IF_DEFAULT, align 8
  %18 = icmp eq %struct.batadv_hard_iface* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 10
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %26 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %8, align 8
  %27 = icmp eq %struct.batadv_hard_iface* %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %7, align 8
  %30 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BATADV_FULL_DUPLEX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %5, align 4
  br label %47

39:                                               ; preds = %28, %24, %21
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %36, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
