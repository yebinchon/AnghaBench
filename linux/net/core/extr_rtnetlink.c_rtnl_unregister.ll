; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link = type { i32 }

@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtnl_unregister(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtnl_link**, align 8
  %7 = alloca %struct.rtnl_link*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i1 [ true, %2 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @rtm_msgindex(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i32 (...) @rtnl_lock()
  %22 = load i32*, i32** @rtnl_msg_handlers, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.rtnl_link** @rtnl_dereference(i32 %26)
  store %struct.rtnl_link** %27, %struct.rtnl_link*** %6, align 8
  %28 = load %struct.rtnl_link**, %struct.rtnl_link*** %6, align 8
  %29 = icmp ne %struct.rtnl_link** %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = call i32 (...) @rtnl_unlock()
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %50

34:                                               ; preds = %15
  %35 = load %struct.rtnl_link**, %struct.rtnl_link*** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %35, i64 %37
  %39 = load %struct.rtnl_link*, %struct.rtnl_link** %38, align 8
  store %struct.rtnl_link* %39, %struct.rtnl_link** %7, align 8
  %40 = load %struct.rtnl_link**, %struct.rtnl_link*** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %40, i64 %42
  %44 = load %struct.rtnl_link*, %struct.rtnl_link** %43, align 8
  %45 = call i32 @rcu_assign_pointer(%struct.rtnl_link* %44, i32* null)
  %46 = call i32 (...) @rtnl_unlock()
  %47 = load %struct.rtnl_link*, %struct.rtnl_link** %7, align 8
  %48 = load i32, i32* @rcu, align 4
  %49 = call i32 @kfree_rcu(%struct.rtnl_link* %47, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %34, %30
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rtm_msgindex(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.rtnl_link** @rtnl_dereference(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @rcu_assign_pointer(%struct.rtnl_link*, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.rtnl_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
