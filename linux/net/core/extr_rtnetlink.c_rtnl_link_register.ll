; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link_ops = type { i64, i64 }

@RTNL_MAX_TYPE = common dso_local global i64 0, align 8
@RTNL_SLAVE_MAX_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtnl_link_register(%struct.rtnl_link_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtnl_link_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.rtnl_link_ops* %0, %struct.rtnl_link_ops** %3, align 8
  %5 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %6 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RTNL_MAX_TYPE, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %12 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTNL_SLAVE_MAX_TYPE, align 8
  %15 = icmp sgt i64 %13, %14
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %16
  %25 = call i32 (...) @rtnl_lock()
  %26 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %27 = call i32 @__rtnl_link_register(%struct.rtnl_link_ops* %26)
  store i32 %27, i32* %4, align 4
  %28 = call i32 (...) @rtnl_unlock()
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__rtnl_link_register(%struct.rtnl_link_ops*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
