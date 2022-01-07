; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_post_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_post_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_ops = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32 }
%struct.devlink = type { i32 }

@DEVLINK_NL_FLAG_NO_LOCK = common dso_local global i32 0, align 4
@devlink_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genl_ops*, %struct.sk_buff*, %struct.genl_info*)* @devlink_nl_post_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devlink_nl_post_doit(%struct.genl_ops* %0, %struct.sk_buff* %1, %struct.genl_info* %2) #0 {
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca %struct.devlink*, align 8
  store %struct.genl_ops* %0, %struct.genl_ops** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.genl_info* %2, %struct.genl_info** %6, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %9 = call %struct.devlink* @devlink_get_from_info(%struct.genl_info* %8)
  store %struct.devlink* %9, %struct.devlink** %7, align 8
  %10 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %11 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @DEVLINK_NL_FLAG_NO_LOCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.devlink*, %struct.devlink** %7, align 8
  %19 = getelementptr inbounds %struct.devlink, %struct.devlink* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = call i32 @mutex_unlock(i32* @devlink_mutex)
  ret void
}

declare dso_local %struct.devlink* @devlink_get_from_info(%struct.genl_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
