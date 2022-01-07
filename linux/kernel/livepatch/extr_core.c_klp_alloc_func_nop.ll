; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_alloc_func_nop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_alloc_func_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_func = type { i32, i32, i64 }
%struct.klp_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.klp_func* (%struct.klp_func*, %struct.klp_object*)* @klp_alloc_func_nop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.klp_func* @klp_alloc_func_nop(%struct.klp_func* %0, %struct.klp_object* %1) #0 {
  %3 = alloca %struct.klp_func*, align 8
  %4 = alloca %struct.klp_func*, align 8
  %5 = alloca %struct.klp_object*, align 8
  %6 = alloca %struct.klp_func*, align 8
  store %struct.klp_func* %0, %struct.klp_func** %4, align 8
  store %struct.klp_object* %1, %struct.klp_object** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.klp_func* @kzalloc(i32 16, i32 %7)
  store %struct.klp_func* %8, %struct.klp_func** %6, align 8
  %9 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %10 = icmp ne %struct.klp_func* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.klp_func* null, %struct.klp_func** %3, align 8
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.klp_func*, %struct.klp_func** %4, align 8
  %14 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.klp_func*, %struct.klp_func** %4, align 8
  %19 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @kstrdup(i64 %20, i32 %21)
  %23 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %24 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %26 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %31 = call i32 @kfree(%struct.klp_func* %30)
  store %struct.klp_func* null, %struct.klp_func** %3, align 8
  br label %45

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %12
  %34 = load %struct.klp_object*, %struct.klp_object** %5, align 8
  %35 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %36 = call i32 @klp_init_func_early(%struct.klp_object* %34, %struct.klp_func* %35)
  %37 = load %struct.klp_func*, %struct.klp_func** %4, align 8
  %38 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %41 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  %43 = getelementptr inbounds %struct.klp_func, %struct.klp_func* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.klp_func*, %struct.klp_func** %6, align 8
  store %struct.klp_func* %44, %struct.klp_func** %3, align 8
  br label %45

45:                                               ; preds = %33, %29, %11
  %46 = load %struct.klp_func*, %struct.klp_func** %3, align 8
  ret %struct.klp_func* %46
}

declare dso_local %struct.klp_func* @kzalloc(i32, i32) #1

declare dso_local i64 @kstrdup(i64, i32) #1

declare dso_local i32 @kfree(%struct.klp_func*) #1

declare dso_local i32 @klp_init_func_early(%struct.klp_object*, %struct.klp_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
