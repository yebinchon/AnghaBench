; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_shadow.c___klp_shadow_get_or_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_shadow.c___klp_shadow_get_or_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_shadow = type { i64, i8*, i8*, i32 }

@klp_shadow_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to construct shadow variable <%p, %lx> (%d)\0A\00", align 1
@klp_shadow_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Duplicate shadow variable <%p, %lx>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64, i32, i32 (i8*, i8*, i8*)*, i8*, i32)* @__klp_shadow_get_or_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__klp_shadow_get_or_alloc(i8* %0, i64 %1, i64 %2, i32 %3, i32 (i8*, i8*, i8*)* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.klp_shadow*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i8* @klp_shadow_get(i8* %20, i64 %21)
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %91

26:                                               ; preds = %7
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %27, 32
  %29 = load i32, i32* %12, align 4
  %30 = call %struct.klp_shadow* @kzalloc(i64 %28, i32 %29)
  store %struct.klp_shadow* %30, %struct.klp_shadow** %16, align 8
  %31 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %32 = icmp ne %struct.klp_shadow* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i8* null, i8** %8, align 8
  br label %100

34:                                               ; preds = %26
  %35 = load i64, i64* %18, align 8
  %36 = call i32 @spin_lock_irqsave(i32* @klp_shadow_lock, i64 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i8* @klp_shadow_get(i8* %37, i64 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = call i64 @unlikely(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i64, i64* %18, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @klp_shadow_lock, i64 %44)
  %46 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %47 = call i32 @kfree(%struct.klp_shadow* %46)
  br label %91

48:                                               ; preds = %34
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %51 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %54 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %56 = icmp ne i32 (i8*, i8*, i8*)* %55, null
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %61 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 %58(i8* %59, i8* %62, i8* %63)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load i64, i64* %18, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* @klp_shadow_lock, i64 %68)
  %70 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %71 = call i32 @kfree(%struct.klp_shadow* %70)
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %72, i64 %73, i32 %74)
  store i8* null, i8** %8, align 8
  br label %100

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* @klp_shadow_hash, align 4
  %79 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %80 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %79, i32 0, i32 3
  %81 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %82 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = call i32 @hash_add_rcu(i32 %78, i32* %80, i64 %84)
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* @klp_shadow_lock, i64 %86)
  %88 = load %struct.klp_shadow*, %struct.klp_shadow** %16, align 8
  %89 = getelementptr inbounds %struct.klp_shadow, %struct.klp_shadow* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %8, align 8
  br label %100

91:                                               ; preds = %43, %25
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %95, i64 %96)
  store i8* null, i8** %8, align 8
  br label %100

98:                                               ; preds = %91
  %99 = load i8*, i8** %17, align 8
  store i8* %99, i8** %8, align 8
  br label %100

100:                                              ; preds = %98, %94, %77, %67, %33
  %101 = load i8*, i8** %8, align 8
  ret i8* %101
}

declare dso_local i8* @klp_shadow_get(i8*, i64) #1

declare dso_local %struct.klp_shadow* @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.klp_shadow*) #1

declare dso_local i32 @pr_err(i8*, i8*, i64, i32) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
