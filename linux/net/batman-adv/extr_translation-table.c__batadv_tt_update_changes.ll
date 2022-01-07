; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_tt_update_changes.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c__batadv_tt_update_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.batadv_orig_node = type { i32 }
%struct.batadv_tvlv_tt_change = type { i32, i32, i32 }

@BATADV_TT_CLIENT_DEL = common dso_local global i32 0, align 4
@BATADV_TT_CLIENT_ROAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tt removed by changes\00", align 1
@BATADV_ORIG_CAPA_HAS_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_orig_node*, %struct.batadv_tvlv_tt_change*, i32, i32)* @_batadv_tt_update_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_batadv_tt_update_changes(%struct.batadv_priv* %0, %struct.batadv_orig_node* %1, %struct.batadv_tvlv_tt_change* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca %struct.batadv_tvlv_tt_change*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.batadv_priv* %0, %struct.batadv_priv** %6, align 8
  store %struct.batadv_orig_node* %1, %struct.batadv_orig_node** %7, align 8
  store %struct.batadv_tvlv_tt_change* %2, %struct.batadv_tvlv_tt_change** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %81, %5
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %13
  %18 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %18, i64 %20
  %22 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @BATADV_TT_CLIENT_DEL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %17
  %28 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %28, i64 %30
  %32 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BATADV_TT_CLIENT_ROAM, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %37 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %38 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %38, i64 %40
  %42 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %44, i64 %46
  %48 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @batadv_tt_global_del(%struct.batadv_priv* %36, %struct.batadv_orig_node* %37, i32 %43, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %80

53:                                               ; preds = %17
  %54 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %55 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %56 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %56, i64 %58
  %60 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %62, i64 %64
  %66 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  %69 = load %struct.batadv_tvlv_tt_change*, %struct.batadv_tvlv_tt_change** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %69, i64 %71
  %73 = getelementptr inbounds %struct.batadv_tvlv_tt_change, %struct.batadv_tvlv_tt_change* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @batadv_tt_global_add(%struct.batadv_priv* %54, %struct.batadv_orig_node* %55, i32 %61, i32 %68, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %53
  br label %89

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79, %27
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %13

84:                                               ; preds = %13
  %85 = load i32, i32* @BATADV_ORIG_CAPA_HAS_TT, align 4
  %86 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %87 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %86, i32 0, i32 0
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  br label %89

89:                                               ; preds = %84, %78
  ret void
}

declare dso_local i32 @batadv_tt_global_del(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i32, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @batadv_tt_global_add(%struct.batadv_priv*, %struct.batadv_orig_node*, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
