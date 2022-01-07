; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_post_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_post_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.wpan_dev** }
%struct.wpan_dev = type { %struct.wpan_dev* }

@NL802154_FLAG_NEED_WPAN_DEV = common dso_local global i32 0, align 4
@NL802154_FLAG_NEED_RTNL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @nl802154_post_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl802154_post_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.wpan_dev*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load %struct.wpan_dev**, %struct.wpan_dev*** %9, align 8
  %11 = getelementptr inbounds %struct.wpan_dev*, %struct.wpan_dev** %10, i64 1
  %12 = load %struct.wpan_dev*, %struct.wpan_dev** %11, align 8
  %13 = icmp ne %struct.wpan_dev* %12, null
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  %15 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %16 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NL802154_FLAG_NEED_WPAN_DEV, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load %struct.wpan_dev**, %struct.wpan_dev*** %23, align 8
  %25 = getelementptr inbounds %struct.wpan_dev*, %struct.wpan_dev** %24, i64 1
  %26 = load %struct.wpan_dev*, %struct.wpan_dev** %25, align 8
  store %struct.wpan_dev* %26, %struct.wpan_dev** %7, align 8
  %27 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %28 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %27, i32 0, i32 0
  %29 = load %struct.wpan_dev*, %struct.wpan_dev** %28, align 8
  %30 = icmp ne %struct.wpan_dev* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.wpan_dev*, %struct.wpan_dev** %7, align 8
  %33 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %32, i32 0, i32 0
  %34 = load %struct.wpan_dev*, %struct.wpan_dev** %33, align 8
  %35 = call i32 @dev_put(%struct.wpan_dev* %34)
  br label %36

36:                                               ; preds = %31, %21
  br label %44

37:                                               ; preds = %14
  %38 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load %struct.wpan_dev**, %struct.wpan_dev*** %39, align 8
  %41 = getelementptr inbounds %struct.wpan_dev*, %struct.wpan_dev** %40, i64 1
  %42 = load %struct.wpan_dev*, %struct.wpan_dev** %41, align 8
  %43 = call i32 @dev_put(%struct.wpan_dev* %42)
  br label %44

44:                                               ; preds = %37, %36
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %47 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NL802154_FLAG_NEED_RTNL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 (...) @rtnl_unlock()
  br label %54

54:                                               ; preds = %52, %45
  ret void
}

declare dso_local i32 @dev_put(%struct.wpan_dev*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
