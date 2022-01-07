; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_tvlv_ogm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_tvlv_ogm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32, i32, i32, i32 }

@BATADV_TVLV_HANDLER_OGM_CIFNOTFND = common dso_local global i32 0, align 4
@BATADV_ORIG_CAPA_HAS_MCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i8*, i32)* @batadv_mcast_tvlv_ogm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_mcast_tvlv_ogm_handler(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @BATADV_TVLV_HANDLER_OGM_CIFNOTFND, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @batadv_mcast_tvlv_flags_get(i32 %19, i8* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %24 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %23, i32 0, i32 1
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %30 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %31 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %30, i32 0, i32 3
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %36 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %37 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %36, i32 0, i32 3
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %54

39:                                               ; preds = %28, %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %44 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %45 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %44, i32 0, i32 3
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %50 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %51 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %50, i32 0, i32 3
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %42, %39
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %56 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %57 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %56, i32 0, i32 2
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %60 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @batadv_mcast_want_unsnoop_update(%struct.batadv_priv* %59, %struct.batadv_orig_node* %60, i32 %61)
  %63 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %64 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @batadv_mcast_want_ipv4_update(%struct.batadv_priv* %63, %struct.batadv_orig_node* %64, i32 %65)
  %67 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %68 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @batadv_mcast_want_ipv6_update(%struct.batadv_priv* %67, %struct.batadv_orig_node* %68, i32 %69)
  %71 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %72 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @batadv_mcast_want_rtr4_update(%struct.batadv_priv* %71, %struct.batadv_orig_node* %72, i32 %73)
  %75 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %76 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @batadv_mcast_want_rtr6_update(%struct.batadv_priv* %75, %struct.batadv_orig_node* %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %81 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %83 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %82, i32 0, i32 1
  %84 = call i32 @spin_unlock_bh(i32* %83)
  ret void
}

declare dso_local i32 @batadv_mcast_tvlv_flags_get(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @batadv_mcast_want_unsnoop_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_ipv4_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_ipv6_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_rtr4_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @batadv_mcast_want_rtr6_update(%struct.batadv_priv*, %struct.batadv_orig_node*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
