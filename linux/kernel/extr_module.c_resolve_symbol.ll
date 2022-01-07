; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_module.c_resolve_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_module.c_resolve_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_symbol = type { i32 }
%struct.module = type { i32 }
%struct.load_info = type { i32 }

@module_mutex = common dso_local global i32 0, align 4
@TAINT_PROPRIETARY_MODULE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MODULE_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernel_symbol* (%struct.module*, %struct.load_info*, i8*, i8*)* @resolve_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernel_symbol* @resolve_symbol(%struct.module* %0, %struct.load_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.load_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca %struct.kernel_symbol*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.load_info* %1, %struct.load_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = call i32 (...) @sched_annotate_sleep()
  %14 = call i32 @mutex_lock(i32* @module_mutex)
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.module*, %struct.module** %5, align 8
  %17 = getelementptr inbounds %struct.module, %struct.module* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TAINT_PROPRIETARY_MODULE, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call %struct.kernel_symbol* @find_symbol(i8* %15, %struct.module** %9, i32** %11, i32 %24, i32 1)
  store %struct.kernel_symbol* %25, %struct.kernel_symbol** %10, align 8
  %26 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %27 = icmp ne %struct.kernel_symbol* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %66

29:                                               ; preds = %4
  %30 = load %struct.load_info*, %struct.load_info** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.module*, %struct.module** %5, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @check_version(%struct.load_info* %30, i8* %31, %struct.module* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.kernel_symbol* @ERR_PTR(i32 %38)
  store %struct.kernel_symbol* %39, %struct.kernel_symbol** %10, align 8
  br label %60

40:                                               ; preds = %29
  %41 = load %struct.load_info*, %struct.load_info** %6, align 8
  %42 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  %43 = load %struct.module*, %struct.module** %5, align 8
  %44 = call i32 @verify_namespace_is_imported(%struct.load_info* %41, %struct.kernel_symbol* %42, %struct.module* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.kernel_symbol* @ERR_PTR(i32 %48)
  store %struct.kernel_symbol* %49, %struct.kernel_symbol** %10, align 8
  br label %60

50:                                               ; preds = %40
  %51 = load %struct.module*, %struct.module** %5, align 8
  %52 = load %struct.module*, %struct.module** %9, align 8
  %53 = call i32 @ref_module(%struct.module* %51, %struct.module* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.kernel_symbol* @ERR_PTR(i32 %57)
  store %struct.kernel_symbol* %58, %struct.kernel_symbol** %10, align 8
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %56, %47, %36
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.module*, %struct.module** %9, align 8
  %63 = call i32 @module_name(%struct.module* %62)
  %64 = load i32, i32* @MODULE_NAME_LEN, align 4
  %65 = call i32 @strncpy(i8* %61, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %28
  %67 = call i32 @mutex_unlock(i32* @module_mutex)
  %68 = load %struct.kernel_symbol*, %struct.kernel_symbol** %10, align 8
  ret %struct.kernel_symbol* %68
}

declare dso_local i32 @sched_annotate_sleep(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kernel_symbol* @find_symbol(i8*, %struct.module**, i32**, i32, i32) #1

declare dso_local i32 @check_version(%struct.load_info*, i8*, %struct.module*, i32*) #1

declare dso_local %struct.kernel_symbol* @ERR_PTR(i32) #1

declare dso_local i32 @verify_namespace_is_imported(%struct.load_info*, %struct.kernel_symbol*, %struct.module*) #1

declare dso_local i32 @ref_module(%struct.module*, %struct.module*) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @module_name(%struct.module*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
