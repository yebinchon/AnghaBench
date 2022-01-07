; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_gw_is_eligible.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_gw_is_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_neigh_ifinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.batadv_neigh_node = type { i32 }

@BATADV_IF_DEFAULT = common dso_local global i32 0, align 4
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Restarting gateway selection: better gateway found (tq curr: %i, tq new: %i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* @batadv_iv_gw_is_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_iv_gw_is_eligible(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_orig_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.batadv_orig_node*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %9 = alloca %struct.batadv_neigh_ifinfo*, align 8
  %10 = alloca %struct.batadv_neigh_node*, align 8
  %11 = alloca %struct.batadv_neigh_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %6, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %7, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %8, align 8
  store %struct.batadv_neigh_ifinfo* null, %struct.batadv_neigh_ifinfo** %9, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %10, align 8
  store %struct.batadv_neigh_node* null, %struct.batadv_neigh_node** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %16 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp sle i64 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %110

21:                                               ; preds = %3
  %22 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %6, align 8
  %23 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %24 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %22, i32 %23)
  store %struct.batadv_neigh_node* %24, %struct.batadv_neigh_node** %10, align 8
  %25 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %26 = icmp ne %struct.batadv_neigh_node* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 1, i32* %14, align 4
  br label %84

28:                                               ; preds = %21
  %29 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %30 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %31 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %29, i32 %30)
  store %struct.batadv_neigh_ifinfo* %31, %struct.batadv_neigh_ifinfo** %9, align 8
  %32 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %33 = icmp ne %struct.batadv_neigh_ifinfo* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 1, i32* %14, align 4
  br label %84

35:                                               ; preds = %28
  %36 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %37 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %38 = call %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node* %36, i32 %37)
  store %struct.batadv_neigh_node* %38, %struct.batadv_neigh_node** %11, align 8
  %39 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %11, align 8
  %40 = icmp ne %struct.batadv_neigh_node* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %84

42:                                               ; preds = %35
  %43 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %11, align 8
  %44 = load i32, i32* @BATADV_IF_DEFAULT, align 4
  %45 = call %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node* %43, i32 %44)
  store %struct.batadv_neigh_ifinfo* %45, %struct.batadv_neigh_ifinfo** %8, align 8
  %46 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %8, align 8
  %47 = icmp ne %struct.batadv_neigh_ifinfo* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %84

49:                                               ; preds = %42
  %50 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %51 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %8, align 8
  %55 = getelementptr inbounds %struct.batadv_neigh_ifinfo, %struct.batadv_neigh_ifinfo* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %84

62:                                               ; preds = %49
  %63 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %64 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp sgt i64 %66, 3
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %12, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %73 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i64 @atomic_read(i32* %74)
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %84

78:                                               ; preds = %68, %62
  %79 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %80 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @batadv_dbg(i32 %79, %struct.batadv_priv* %80, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %81, i64 %82)
  store i32 1, i32* %14, align 4
  br label %84

84:                                               ; preds = %78, %77, %61, %48, %41, %34, %27
  %85 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %86 = icmp ne %struct.batadv_neigh_ifinfo* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %9, align 8
  %89 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %8, align 8
  %92 = icmp ne %struct.batadv_neigh_ifinfo* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.batadv_neigh_ifinfo*, %struct.batadv_neigh_ifinfo** %8, align 8
  %95 = call i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %98 = icmp ne %struct.batadv_neigh_node* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %10, align 8
  %101 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %11, align 8
  %104 = icmp ne %struct.batadv_neigh_node* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.batadv_neigh_node*, %struct.batadv_neigh_node** %11, align 8
  %107 = call i32 @batadv_neigh_node_put(%struct.batadv_neigh_node* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %20
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.batadv_neigh_node* @batadv_orig_router_get(%struct.batadv_orig_node*, i32) #1

declare dso_local %struct.batadv_neigh_ifinfo* @batadv_neigh_ifinfo_get(%struct.batadv_neigh_node*, i32) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, i64, i64) #1

declare dso_local i32 @batadv_neigh_ifinfo_put(%struct.batadv_neigh_ifinfo*) #1

declare dso_local i32 @batadv_neigh_node_put(%struct.batadv_neigh_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
