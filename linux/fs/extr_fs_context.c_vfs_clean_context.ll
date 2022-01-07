; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_clean_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_clean_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, i32, i32, i32*, i32, i64, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fs_context*)* }

@FS_CONTEXT_FOR_RECONFIGURE = common dso_local global i32 0, align 4
@FS_CONTEXT_AWAITING_RECONF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_clean_context(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %3 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %4 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %14 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %13, i32 0, i32 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %16, align 8
  %18 = icmp ne i32 (%struct.fs_context*)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %21 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %20, i32 0, i32 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %23, align 8
  %25 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %26 = call i32 %24(%struct.fs_context* %25)
  br label %27

27:                                               ; preds = %19, %12, %7, %1
  %28 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %29 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %31 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %30, i32 0, i32 7
  store i32* null, i32** %31, align 8
  %32 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %32, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %35 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %37 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %36, i32 0, i32 4
  %38 = call i32 @security_free_mnt_opts(i32* %37)
  %39 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %40 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %44 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @FS_CONTEXT_FOR_RECONFIGURE, align 4
  %46 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %47 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @FS_CONTEXT_AWAITING_RECONF, align 4
  %49 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %50 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @security_free_mnt_opts(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
