; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_unregister_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_unregister_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link = type { i32 }

@RTNL_FAMILY_MAX = common dso_local global i32 0, align 4
@rtnl_msg_handlers = common dso_local global %struct.rtnl_link*** null, align 8
@RTM_NR_MSGTYPES = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtnl_unregister_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtnl_link**, align 8
  %4 = alloca %struct.rtnl_link*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @RTNL_FAMILY_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ true, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.rtnl_link***, %struct.rtnl_link**** @rtnl_msg_handlers, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rtnl_link**, %struct.rtnl_link*** %17, i64 %19
  %21 = load %struct.rtnl_link**, %struct.rtnl_link*** %20, align 8
  store %struct.rtnl_link** %21, %struct.rtnl_link*** %3, align 8
  %22 = load %struct.rtnl_link**, %struct.rtnl_link*** %3, align 8
  %23 = icmp ne %struct.rtnl_link** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = call i32 (...) @rtnl_unlock()
  br label %64

26:                                               ; preds = %12
  %27 = load %struct.rtnl_link***, %struct.rtnl_link**** @rtnl_msg_handlers, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rtnl_link**, %struct.rtnl_link*** %27, i64 %29
  %31 = load %struct.rtnl_link**, %struct.rtnl_link*** %30, align 8
  %32 = call i32 @RCU_INIT_POINTER(%struct.rtnl_link** %31, i32* null)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %56, %26
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RTM_NR_MSGTYPES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.rtnl_link**, %struct.rtnl_link*** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %38, i64 %40
  %42 = load %struct.rtnl_link*, %struct.rtnl_link** %41, align 8
  store %struct.rtnl_link* %42, %struct.rtnl_link** %4, align 8
  %43 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %44 = icmp ne %struct.rtnl_link* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %56

46:                                               ; preds = %37
  %47 = load %struct.rtnl_link**, %struct.rtnl_link*** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rtnl_link*, %struct.rtnl_link** %47, i64 %49
  %51 = load %struct.rtnl_link*, %struct.rtnl_link** %50, align 8
  %52 = call i32 @rcu_assign_pointer(%struct.rtnl_link* %51, i32* null)
  %53 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8
  %54 = load i32, i32* @rcu, align 4
  %55 = call i32 @kfree_rcu(%struct.rtnl_link* %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %45
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %33

59:                                               ; preds = %33
  %60 = call i32 (...) @rtnl_unlock()
  %61 = call i32 (...) @synchronize_net()
  %62 = load %struct.rtnl_link**, %struct.rtnl_link*** %3, align 8
  %63 = call i32 @kfree(%struct.rtnl_link** %62)
  br label %64

64:                                               ; preds = %59, %24
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.rtnl_link**, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.rtnl_link*, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.rtnl_link*, i32) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @kfree(%struct.rtnl_link**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
