; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_is_my_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_is_my_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tt_local_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BATADV_TT_CLIENT_PENDING = common dso_local global i32 0, align 4
@BATADV_TT_CLIENT_ROAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_is_my_client(%struct.batadv_priv* %0, i32* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.batadv_tt_local_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i16 %2, i16* %6, align 2
  store i32 0, i32* %8, align 4
  %9 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i16, i16* %6, align 2
  %12 = call %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv* %9, i32* %10, i16 zeroext %11)
  store %struct.batadv_tt_local_entry* %12, %struct.batadv_tt_local_entry** %7, align 8
  %13 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %14 = icmp ne %struct.batadv_tt_local_entry* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %18 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BATADV_TT_CLIENT_PENDING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %26 = getelementptr inbounds %struct.batadv_tt_local_entry, %struct.batadv_tt_local_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %16
  br label %34

33:                                               ; preds = %24
  store i32 1, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32, %15
  %35 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %36 = icmp ne %struct.batadv_tt_local_entry* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.batadv_tt_local_entry*, %struct.batadv_tt_local_entry** %7, align 8
  %39 = call i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local %struct.batadv_tt_local_entry* @batadv_tt_local_hash_find(%struct.batadv_priv*, i32*, i16 zeroext) #1

declare dso_local i32 @batadv_tt_local_entry_put(%struct.batadv_tt_local_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
