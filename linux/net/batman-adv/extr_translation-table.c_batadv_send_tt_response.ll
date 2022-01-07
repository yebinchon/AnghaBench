; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_tt_response.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_send_tt_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_tvlv_tt_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, i32*, i32*)* @batadv_send_tt_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_send_tt_response(%struct.batadv_priv* %0, %struct.batadv_tvlv_tt_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_tvlv_tt_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_tvlv_tt_data* %1, %struct.batadv_tvlv_tt_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i64 @batadv_is_my_mac(%struct.batadv_priv* %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %16 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @batadv_send_my_tt_response(%struct.batadv_priv* %15, %struct.batadv_tvlv_tt_data* %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %21 = load %struct.batadv_tvlv_tt_data*, %struct.batadv_tvlv_tt_data** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @batadv_send_other_tt_response(%struct.batadv_priv* %20, %struct.batadv_tvlv_tt_data* %21, i32* %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i64 @batadv_is_my_mac(%struct.batadv_priv*, i32*) #1

declare dso_local i32 @batadv_send_my_tt_response(%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, i32*) #1

declare dso_local i32 @batadv_send_other_tt_response(%struct.batadv_priv*, %struct.batadv_tvlv_tt_data*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
