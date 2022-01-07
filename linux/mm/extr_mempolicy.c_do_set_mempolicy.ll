; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_set_mempolicy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_do_set_mempolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.mempolicy* }
%struct.mempolicy = type { i64 }

@scratch = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@MPOL_INTERLEAVE = common dso_local global i64 0, align 8
@MAX_NUMNODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i16, i32*)* @do_set_mempolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_set_mempolicy(i16 zeroext %0, i16 zeroext %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mempolicy*, align 8
  %9 = alloca %struct.mempolicy*, align 8
  %10 = alloca i32, align 4
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @scratch, align 4
  %12 = call i32 @NODEMASK_SCRATCH(i32 %11)
  %13 = load i32, i32* @scratch, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @ENOMEM, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %73

18:                                               ; preds = %3
  %19 = load i16, i16* %5, align 2
  %20 = load i16, i16* %6, align 2
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.mempolicy* @mpol_new(i16 zeroext %19, i16 zeroext %20, i32* %21)
  store %struct.mempolicy* %22, %struct.mempolicy** %8, align 8
  %23 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %24 = call i64 @IS_ERR(%struct.mempolicy* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.mempolicy* %27)
  store i32 %28, i32* %10, align 4
  br label %68

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = call i32 @task_lock(%struct.TYPE_4__* %30)
  %32 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @scratch, align 4
  %35 = call i32 @mpol_set_nodemask(%struct.mempolicy* %32, i32* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %40 = call i32 @task_unlock(%struct.TYPE_4__* %39)
  %41 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %42 = call i32 @mpol_put(%struct.mempolicy* %41)
  br label %68

43:                                               ; preds = %29
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.mempolicy*, %struct.mempolicy** %45, align 8
  store %struct.mempolicy* %46, %struct.mempolicy** %9, align 8
  %47 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.mempolicy* %47, %struct.mempolicy** %49, align 8
  %50 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %51 = icmp ne %struct.mempolicy* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  %54 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MPOL_INTERLEAVE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i64, i64* @MAX_NUMNODES, align 8
  %60 = sub nsw i64 %59, 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %52, %43
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %65 = call i32 @task_unlock(%struct.TYPE_4__* %64)
  %66 = load %struct.mempolicy*, %struct.mempolicy** %9, align 8
  %67 = call i32 @mpol_put(%struct.mempolicy* %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %63, %38, %26
  %69 = load i32, i32* @scratch, align 4
  %70 = call i32 @NODEMASK_SCRATCH_FREE(i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %68, %15
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i32 @NODEMASK_SCRATCH(i32) #1

declare dso_local %struct.mempolicy* @mpol_new(i16 zeroext, i16 zeroext, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mempolicy*) #1

declare dso_local i32 @PTR_ERR(%struct.mempolicy*) #1

declare dso_local i32 @task_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @mpol_set_nodemask(%struct.mempolicy*, i32*, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_4__*) #1

declare dso_local i32 @mpol_put(%struct.mempolicy*) #1

declare dso_local i32 @NODEMASK_SCRATCH_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
