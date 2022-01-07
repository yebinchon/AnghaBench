; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c___mpol_equal.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c___mpol_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MPOL_F_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mpol_equal(%struct.mempolicy* %0, %struct.mempolicy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca %struct.mempolicy*, align 8
  store %struct.mempolicy* %0, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %1, %struct.mempolicy** %5, align 8
  %6 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %7 = icmp ne %struct.mempolicy* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %10 = icmp ne %struct.mempolicy* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %87

12:                                               ; preds = %8
  %13 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %14 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %17 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %87

21:                                               ; preds = %12
  %22 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %26 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %87

30:                                               ; preds = %21
  %31 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %32 = call i64 @mpol_store_user_nodemask(%struct.mempolicy* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %36 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %40 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @nodes_equal(i32 %38, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %87

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %49 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %85 [
    i32 130, label %51
    i32 129, label %51
    i32 128, label %65
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %53 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %57 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nodes_equal(i32 %55, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %87

65:                                               ; preds = %47
  %66 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %67 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @MPOL_F_LOCAL, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %68, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %87

74:                                               ; preds = %65
  %75 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %76 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %80 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %78, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %3, align 4
  br label %87

85:                                               ; preds = %47
  %86 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %74, %73, %51, %45, %29, %20, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @mpol_store_user_nodemask(%struct.mempolicy*) #1

declare dso_local i32 @nodes_equal(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
