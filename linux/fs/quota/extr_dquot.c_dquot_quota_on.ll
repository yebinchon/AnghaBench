; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_on.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_dquot_quota_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.path = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }

@EXDEV = common dso_local global i32 0, align 4
@DQUOT_USAGE_ENABLED = common dso_local global i32 0, align 4
@DQUOT_LIMITS_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_quota_on(%struct.super_block* %0, i32 %1, i32 %2, %struct.path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.path*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.path* %3, %struct.path** %9, align 8
  %11 = load %struct.path*, %struct.path** %9, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = call i32 @security_quota_on(%struct.TYPE_3__* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.path*, %struct.path** %9, align 8
  %21 = getelementptr inbounds %struct.path, %struct.path* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = icmp ne %struct.super_block* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EXDEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %41

30:                                               ; preds = %19
  %31 = load %struct.path*, %struct.path** %9, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = call i32 @d_inode(%struct.TYPE_3__* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @DQUOT_USAGE_ENABLED, align 4
  %38 = load i32, i32* @DQUOT_LIMITS_ENABLED, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @vfs_load_quota_inode(i32 %34, i32 %35, i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %30, %27
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @security_quota_on(%struct.TYPE_3__*) #1

declare dso_local i32 @vfs_load_quota_inode(i32, i32, i32, i32) #1

declare dso_local i32 @d_inode(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
