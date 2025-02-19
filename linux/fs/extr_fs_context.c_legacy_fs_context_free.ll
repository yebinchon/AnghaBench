; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_fs_context_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_fs_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.legacy_fs_context* }
%struct.legacy_fs_context = type { i64, %struct.legacy_fs_context* }

@LEGACY_FS_INDIVIDUAL_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_context*)* @legacy_fs_context_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @legacy_fs_context_free(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.legacy_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %4 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %5 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %4, i32 0, i32 0
  %6 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %5, align 8
  store %struct.legacy_fs_context* %6, %struct.legacy_fs_context** %3, align 8
  %7 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %3, align 8
  %8 = icmp ne %struct.legacy_fs_context* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %3, align 8
  %11 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LEGACY_FS_INDIVIDUAL_PARAMS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %3, align 8
  %17 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %16, i32 0, i32 1
  %18 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %17, align 8
  %19 = call i32 @kfree(%struct.legacy_fs_context* %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %3, align 8
  %22 = call i32 @kfree(%struct.legacy_fs_context* %21)
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @kfree(%struct.legacy_fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
