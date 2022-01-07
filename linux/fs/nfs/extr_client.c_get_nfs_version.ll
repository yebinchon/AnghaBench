; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_get_nfs_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_client.c_get_nfs_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_subversion = type { i32 }

@nfs_version_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nfsv%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfs_subversion* @get_nfs_version(i32 %0) #0 {
  %2 = alloca %struct.nfs_subversion*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_subversion*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.nfs_subversion* @find_nfs_version(i32 %5)
  store %struct.nfs_subversion* %6, %struct.nfs_subversion** %4, align 8
  %7 = load %struct.nfs_subversion*, %struct.nfs_subversion** %4, align 8
  %8 = call i64 @IS_ERR(%struct.nfs_subversion* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @nfs_version_mutex)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @request_module(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.nfs_subversion* @find_nfs_version(i32 %14)
  store %struct.nfs_subversion* %15, %struct.nfs_subversion** %4, align 8
  %16 = call i32 @mutex_unlock(i32* @nfs_version_mutex)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.nfs_subversion*, %struct.nfs_subversion** %4, align 8
  %19 = call i64 @IS_ERR(%struct.nfs_subversion* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load %struct.nfs_subversion*, %struct.nfs_subversion** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.nfs_subversion* @ERR_PTR(i32 %29)
  store %struct.nfs_subversion* %30, %struct.nfs_subversion** %2, align 8
  br label %33

31:                                               ; preds = %21, %17
  %32 = load %struct.nfs_subversion*, %struct.nfs_subversion** %4, align 8
  store %struct.nfs_subversion* %32, %struct.nfs_subversion** %2, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.nfs_subversion*, %struct.nfs_subversion** %2, align 8
  ret %struct.nfs_subversion* %34
}

declare dso_local %struct.nfs_subversion* @find_nfs_version(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_subversion*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @request_module(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.nfs_subversion* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
