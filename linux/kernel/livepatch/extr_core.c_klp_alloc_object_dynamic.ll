; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_alloc_object_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_alloc_object_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_object = type { i32, i32 }
%struct.klp_patch = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.klp_object* (i8*, %struct.klp_patch*)* @klp_alloc_object_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.klp_object* @klp_alloc_object_dynamic(i8* %0, %struct.klp_patch* %1) #0 {
  %3 = alloca %struct.klp_object*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.klp_patch*, align 8
  %6 = alloca %struct.klp_object*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.klp_patch* %1, %struct.klp_patch** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.klp_object* @kzalloc(i32 8, i32 %7)
  store %struct.klp_object* %8, %struct.klp_object** %6, align 8
  %9 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %10 = icmp ne %struct.klp_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.klp_object* null, %struct.klp_object** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrdup(i8* %16, i32 %17)
  %19 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %20 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %22 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %27 = call i32 @kfree(%struct.klp_object* %26)
  store %struct.klp_object* null, %struct.klp_object** %3, align 8
  br label %36

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.klp_patch*, %struct.klp_patch** %5, align 8
  %31 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %32 = call i32 @klp_init_object_early(%struct.klp_patch* %30, %struct.klp_object* %31)
  %33 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  %34 = getelementptr inbounds %struct.klp_object, %struct.klp_object* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.klp_object*, %struct.klp_object** %6, align 8
  store %struct.klp_object* %35, %struct.klp_object** %3, align 8
  br label %36

36:                                               ; preds = %29, %25, %11
  %37 = load %struct.klp_object*, %struct.klp_object** %3, align 8
  ret %struct.klp_object* %37
}

declare dso_local %struct.klp_object* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.klp_object*) #1

declare dso_local i32 @klp_init_object_early(%struct.klp_patch*, %struct.klp_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
