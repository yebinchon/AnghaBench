; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_is_ap_isolated.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_is_ap_isolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_tt_local_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_tt_global_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BATADV_TT_CLIENT_WIFI = common dso_local global i32 0, align 4
@BATADV_TT_CLIENT_ISOLA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_tt_local_entry*, %struct.batadv_tt_global_entry*)* @_batadv_is_ap_isolated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_batadv_is_ap_isolated(%struct.batadv_tt_local_entry* %0, %struct.batadv_tt_global_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.batadv_tt_local_entry*, align 8
  %5 = alloca %struct.batadv_tt_global_entry*, align 8
  store %struct.batadv_tt_local_entry* %0, %struct.batadv_tt_local_entry** %4, align 8
  store %struct.batadv_tt_global_entry* %1, %struct.batadv_tt_global_entry** %5, align 8
  %6 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %4, align 8
  %7 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BATADV_TT_CLIENT_WIFI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %15 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BATADV_TT_CLIENT_WIFI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %40

22:                                               ; preds = %13, %2
  %23 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %4, align 8
  %24 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BATADV_TT_CLIENT_ISOLA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.batadv_tt_global_entry*, %struct.batadv_tt_global_entry** %5, align 8
  %32 = getelementptr inbounds %struct.batadv_tt_global_entry, %struct.batadv_tt_global_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BATADV_TT_CLIENT_ISOLA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %40

39:                                               ; preds = %30, %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
