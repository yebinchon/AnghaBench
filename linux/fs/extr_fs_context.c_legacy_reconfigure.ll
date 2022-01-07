; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, %struct.TYPE_3__*, %struct.legacy_fs_context* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.super_block*, i32*, i32*)* }
%struct.legacy_fs_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @legacy_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_reconfigure(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.legacy_fs_context*, align 8
  %5 = alloca %struct.super_block*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %6, i32 0, i32 2
  %8 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %7, align 8
  store %struct.legacy_fs_context* %8, %struct.legacy_fs_context** %4, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.super_block*, i32*, i32*)*, i32 (%struct.super_block*, i32*, i32*)** %17, align 8
  %19 = icmp ne i32 (%struct.super_block*, i32*, i32*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

21:                                               ; preds = %1
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.super_block*, i32*, i32*)*, i32 (%struct.super_block*, i32*, i32*)** %25, align 8
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %29 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %28, i32 0, i32 0
  %30 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %4, align 8
  %31 = icmp ne %struct.legacy_fs_context* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %4, align 8
  %34 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32* [ %35, %32 ], [ null, %36 ]
  %39 = call i32 %26(%struct.super_block* %27, i32* %29, i32* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %20
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
