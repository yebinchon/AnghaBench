; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_fs_context_dup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_fs_context_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.legacy_fs_context* }
%struct.legacy_fs_context = type { i64, i32, %struct.legacy_fs_context* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LEGACY_FS_INDIVIDUAL_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_context*)* @legacy_fs_context_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_fs_context_dup(%struct.fs_context* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.legacy_fs_context*, align 8
  %7 = alloca %struct.legacy_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 0
  %10 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %9, align 8
  store %struct.legacy_fs_context* %10, %struct.legacy_fs_context** %7, align 8
  %11 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmemdup(%struct.legacy_fs_context* %11, i32 24, i32 %12)
  %14 = bitcast i8* %13 to %struct.legacy_fs_context*
  store %struct.legacy_fs_context* %14, %struct.legacy_fs_context** %6, align 8
  %15 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %16 = icmp ne %struct.legacy_fs_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %22 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LEGACY_FS_INDIVIDUAL_PARAMS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %7, align 8
  %28 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %27, i32 0, i32 2
  %29 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %28, align 8
  %30 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %7, align 8
  %31 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kmemdup(%struct.legacy_fs_context* %29, i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.legacy_fs_context*
  %36 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %37 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %36, i32 0, i32 2
  store %struct.legacy_fs_context* %35, %struct.legacy_fs_context** %37, align 8
  %38 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %39 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %38, i32 0, i32 2
  %40 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %39, align 8
  %41 = icmp ne %struct.legacy_fs_context* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %44 = call i32 @kfree(%struct.legacy_fs_context* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %50 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %51 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %50, i32 0, i32 0
  store %struct.legacy_fs_context* %49, %struct.legacy_fs_context** %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %42, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @kmemdup(%struct.legacy_fs_context*, i32, i32) #1

declare dso_local i32 @kfree(%struct.legacy_fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
