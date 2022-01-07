; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_segcblist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_segcblist = type { i32, i64, i32*, i32***, i32*** }

@RCU_NEXT_TAIL = common dso_local global i64 0, align 8
@RCU_CBLIST_NSEGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_segcblist_init(%struct.rcu_segcblist* %0) #0 {
  %2 = alloca %struct.rcu_segcblist*, align 8
  %3 = alloca i32, align 4
  store %struct.rcu_segcblist* %0, %struct.rcu_segcblist** %2, align 8
  %4 = load i64, i64* @RCU_NEXT_TAIL, align 8
  %5 = add nsw i64 %4, 1
  %6 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %7 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %6, i32 0, i32 4
  %8 = load i32***, i32**** %7, align 8
  %9 = call i64 @ARRAY_SIZE(i32*** %8)
  %10 = icmp ne i64 %5, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %14 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %13, i32 0, i32 3
  %15 = load i32***, i32**** %14, align 8
  %16 = call i64 @ARRAY_SIZE(i32*** %15)
  %17 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %18 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %17, i32 0, i32 4
  %19 = load i32***, i32**** %18, align 8
  %20 = call i64 @ARRAY_SIZE(i32*** %19)
  %21 = icmp ne i64 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %25 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %39, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @RCU_CBLIST_NSEGS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %32 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %31, i32 0, i32 2
  %33 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %34 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %33, i32 0, i32 3
  %35 = load i32***, i32**** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32**, i32*** %35, i64 %37
  store i32** %32, i32*** %38, align 8
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %44 = call i32 @rcu_segcblist_set_len(%struct.rcu_segcblist* %43, i32 0)
  %45 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %46 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.rcu_segcblist*, %struct.rcu_segcblist** %2, align 8
  %48 = getelementptr inbounds %struct.rcu_segcblist, %struct.rcu_segcblist* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32***) #1

declare dso_local i32 @rcu_segcblist_set_len(%struct.rcu_segcblist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
