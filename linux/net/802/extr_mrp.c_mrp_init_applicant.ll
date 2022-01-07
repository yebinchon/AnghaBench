; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_init_applicant.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_init_applicant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.mrp_application = type { i64, i32 }
%struct.mrp_applicant = type { i32, i32, i32, i32, i32, %struct.mrp_application*, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@mrp_join_timer = common dso_local global i32 0, align 4
@mrp_periodic_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrp_init_applicant(%struct.net_device* %0, %struct.mrp_application* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mrp_application*, align 8
  %6 = alloca %struct.mrp_applicant*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.mrp_application* %1, %struct.mrp_application** %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @rtnl_dereference(%struct.TYPE_2__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @mrp_init_port(%struct.net_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %84

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mrp_applicant* @kzalloc(i32 40, i32 %24)
  store %struct.mrp_applicant* %25, %struct.mrp_applicant** %6, align 8
  %26 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %27 = icmp ne %struct.mrp_applicant* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %81

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.mrp_application*, %struct.mrp_application** %5, align 8
  %32 = getelementptr inbounds %struct.mrp_application, %struct.mrp_application* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_mc_add(%struct.net_device* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %78

38:                                               ; preds = %29
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %41 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %40, i32 0, i32 6
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  %42 = load %struct.mrp_application*, %struct.mrp_application** %5, align 8
  %43 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %44 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %43, i32 0, i32 5
  store %struct.mrp_application* %42, %struct.mrp_application** %44, align 8
  %45 = load i32, i32* @RB_ROOT, align 4
  %46 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %47 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %49 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %48, i32 0, i32 3
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %52 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %51, i32 0, i32 2
  %53 = call i32 @skb_queue_head_init(i32* %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.mrp_application*, %struct.mrp_application** %5, align 8
  %60 = getelementptr inbounds %struct.mrp_application, %struct.mrp_application* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %65 = call i32 @rcu_assign_pointer(i32 %63, %struct.mrp_applicant* %64)
  %66 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %67 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %66, i32 0, i32 1
  %68 = load i32, i32* @mrp_join_timer, align 4
  %69 = call i32 @timer_setup(i32* %67, i32 %68, i32 0)
  %70 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %71 = call i32 @mrp_join_timer_arm(%struct.mrp_applicant* %70)
  %72 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %73 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %72, i32 0, i32 0
  %74 = load i32, i32* @mrp_periodic_timer, align 4
  %75 = call i32 @timer_setup(i32* %73, i32 %74, i32 0)
  %76 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %77 = call i32 @mrp_periodic_timer_arm(%struct.mrp_applicant* %76)
  store i32 0, i32* %3, align 4
  br label %86

78:                                               ; preds = %37
  %79 = load %struct.mrp_applicant*, %struct.mrp_applicant** %6, align 8
  %80 = call i32 @kfree(%struct.mrp_applicant* %79)
  br label %81

81:                                               ; preds = %78, %28
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = call i32 @mrp_release_port(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %81, %19
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %38
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @rtnl_dereference(%struct.TYPE_2__*) #1

declare dso_local i32 @mrp_init_port(%struct.net_device*) #1

declare dso_local %struct.mrp_applicant* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_mc_add(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.mrp_applicant*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mrp_join_timer_arm(%struct.mrp_applicant*) #1

declare dso_local i32 @mrp_periodic_timer_arm(%struct.mrp_applicant*) #1

declare dso_local i32 @kfree(%struct.mrp_applicant*) #1

declare dso_local i32 @mrp_release_port(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
