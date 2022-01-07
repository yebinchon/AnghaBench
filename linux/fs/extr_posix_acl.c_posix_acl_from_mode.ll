; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_from_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@ACL_OTHER = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @posix_acl_from_mode(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.posix_acl* @posix_acl_alloc(i32 3, i32 %7)
  store %struct.posix_acl* %8, %struct.posix_acl** %6, align 8
  %9 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %10 = icmp ne %struct.posix_acl* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.posix_acl* @ERR_PTR(i32 %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %3, align 8
  br label %61

15:                                               ; preds = %2
  %16 = load i32, i32* @ACL_USER_OBJ, align 4
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %16, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @S_IRWXU, align 4
  %24 = and i32 %22, %23
  %25 = ashr i32 %24, 6
  %26 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %27 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %32 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %33 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @S_IRWXG, align 4
  %39 = and i32 %37, %38
  %40 = ashr i32 %39, 3
  %41 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %42 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @ACL_OTHER, align 4
  %47 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %48 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %46, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @S_IRWXO, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %56 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %60, %struct.posix_acl** %3, align 8
  br label %61

61:                                               ; preds = %15, %11
  %62 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %62
}

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
