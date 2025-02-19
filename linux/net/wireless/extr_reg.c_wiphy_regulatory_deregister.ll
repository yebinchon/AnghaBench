; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_regulatory_deregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_wiphy_regulatory_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32 }

@reg_num_devs_support_basehint = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i32 0, align 4
@ENVIRON_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wiphy_regulatory_deregister(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  store %struct.wiphy* null, %struct.wiphy** %3, align 8
  %5 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %5, %struct.regulatory_request** %4, align 8
  %6 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %7 = call i32 @reg_dev_ignore_cell_hint(%struct.wiphy* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @reg_num_devs_support_basehint, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @reg_num_devs_support_basehint, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %14 = call i32 @get_wiphy_regdom(%struct.wiphy* %13)
  %15 = call i32 @rcu_free_regdom(i32 %14)
  %16 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %17 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @RCU_INIT_POINTER(i32 %18, i32* null)
  %20 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %21 = icmp ne %struct.regulatory_request* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %24 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %25)
  store %struct.wiphy* %26, %struct.wiphy** %3, align 8
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %29 = icmp ne %struct.wiphy* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %32 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %33 = icmp ne %struct.wiphy* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %27
  br label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @WIPHY_IDX_INVALID, align 4
  %37 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %38 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ENVIRON_ANY, align 4
  %40 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %41 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @reg_dev_ignore_cell_hint(%struct.wiphy*) #1

declare dso_local i32 @rcu_free_regdom(i32) #1

declare dso_local i32 @get_wiphy_regdom(%struct.wiphy*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
