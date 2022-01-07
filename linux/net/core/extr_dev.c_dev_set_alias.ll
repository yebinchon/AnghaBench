; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_alias.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_set_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_ifalias = type { i64* }

@IFALIASZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ifalias_mutex = common dso_local global i32 0, align 4
@rcuhead = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_set_alias(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dev_ifalias*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.dev_ifalias* null, %struct.dev_ifalias** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @IFALIASZ, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %60

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = add i64 8, %19
  %21 = add i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.dev_ifalias* @kmalloc(i32 %22, i32 %23)
  store %struct.dev_ifalias* %24, %struct.dev_ifalias** %8, align 8
  %25 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %26 = icmp ne %struct.dev_ifalias* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %60

30:                                               ; preds = %18
  %31 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %32 = getelementptr inbounds %struct.dev_ifalias, %struct.dev_ifalias* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @memcpy(i64* %33, i8* %34, i64 %35)
  %37 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %38 = getelementptr inbounds %struct.dev_ifalias, %struct.dev_ifalias* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %30, %15
  %43 = call i32 @mutex_lock(i32* @ifalias_mutex)
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %48 = call i32 @mutex_is_locked(i32* @ifalias_mutex)
  %49 = call i32 @rcu_swap_protected(i32 %46, %struct.dev_ifalias* %47, i32 %48)
  %50 = call i32 @mutex_unlock(i32* @ifalias_mutex)
  %51 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %52 = icmp ne %struct.dev_ifalias* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.dev_ifalias*, %struct.dev_ifalias** %8, align 8
  %55 = load i32, i32* @rcuhead, align 4
  %56 = call i32 @kfree_rcu(%struct.dev_ifalias* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i64, i64* %7, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %27, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.dev_ifalias* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_swap_protected(i32, %struct.dev_ifalias*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.dev_ifalias*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
