; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_gw_is_eligible.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v.c_batadv_v_gw_is_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_gw_node = type { i32 }

@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"Restarting gateway selection: better gateway found (throughput curr: %u, throughput new: %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* @batadv_v_gw_is_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_v_gw_is_eligible(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca %struct.batadv_priv*, align 8
  %5 = alloca %struct.batadv_orig_node*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_gw_node*, align 8
  %8 = alloca %struct.batadv_gw_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %4, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %5, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_gw_node* null, %struct.batadv_gw_node** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %18 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %5, align 8
  %19 = call %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv* %17, %struct.batadv_orig_node* %18)
  store %struct.batadv_gw_node* %19, %struct.batadv_gw_node** %7, align 8
  %20 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %21 = icmp ne %struct.batadv_gw_node* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %58

23:                                               ; preds = %3
  %24 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %25 = call i64 @batadv_v_gw_throughput_get(%struct.batadv_gw_node* %24, i64* %9)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %58

28:                                               ; preds = %23
  %29 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %30 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %31 = call %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv* %29, %struct.batadv_orig_node* %30)
  store %struct.batadv_gw_node* %31, %struct.batadv_gw_node** %8, align 8
  %32 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %33 = icmp ne %struct.batadv_gw_node* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %58

35:                                               ; preds = %28
  %36 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %37 = call i64 @batadv_v_gw_throughput_get(%struct.batadv_gw_node* %36, i64* %10)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %58

40:                                               ; preds = %35
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %58

45:                                               ; preds = %40
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %4, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @batadv_dbg(i32 %53, %struct.batadv_priv* %54, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %52, %51, %44, %39, %34, %27, %22
  %59 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %60 = icmp ne %struct.batadv_gw_node* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %7, align 8
  %63 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %66 = icmp ne %struct.batadv_gw_node* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.batadv_gw_node*, %struct.batadv_gw_node** %8, align 8
  %69 = call i32 @batadv_gw_node_put(%struct.batadv_gw_node* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %12, align 4
  ret i32 %71
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.batadv_gw_node* @batadv_gw_node_get(%struct.batadv_priv*, %struct.batadv_orig_node*) #1

declare dso_local i64 @batadv_v_gw_throughput_get(%struct.batadv_gw_node*, i64*) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i64, i64) #1

declare dso_local i32 @batadv_gw_node_put(%struct.batadv_gw_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
