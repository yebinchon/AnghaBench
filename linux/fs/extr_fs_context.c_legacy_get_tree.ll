; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.dentry*, i32, i32, %struct.TYPE_2__*, %struct.legacy_fs_context* }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* (%struct.TYPE_2__*, i32, i32, i32)* }
%struct.legacy_fs_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @legacy_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.legacy_fs_context*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %7 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %8 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i32 0, i32 4
  %9 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %8, align 8
  store %struct.legacy_fs_context* %9, %struct.legacy_fs_context** %4, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %11 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.dentry* (%struct.TYPE_2__*, i32, i32, i32)*, %struct.dentry* (%struct.TYPE_2__*, i32, i32, i32)** %13, align 8
  %15 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %22 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %4, align 8
  %25 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dentry* %14(%struct.TYPE_2__* %17, i32 %20, i32 %23, i32 %26)
  store %struct.dentry* %27, %struct.dentry** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  store i32 %33, i32* %2, align 4
  br label %46

34:                                               ; preds = %1
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.super_block*, %struct.super_block** %36, align 8
  store %struct.super_block* %37, %struct.super_block** %5, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = icmp ne %struct.super_block* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %45 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %44, i32 0, i32 0
  store %struct.dentry* %43, %struct.dentry** %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %31
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
