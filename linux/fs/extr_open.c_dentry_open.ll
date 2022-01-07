; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_dentry_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_dentry_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.path = type { i32 }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @dentry_open(%struct.path* %0, i32 %1, %struct.cred* %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cred* %2, %struct.cred** %6, align 8
  %9 = load %struct.cred*, %struct.cred** %6, align 8
  %10 = call i32 @validate_creds(%struct.cred* %9)
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.cred*, %struct.cred** %6, align 8
  %20 = call %struct.file* @alloc_empty_file(i32 %18, %struct.cred* %19)
  store %struct.file* %20, %struct.file** %8, align 8
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = call i32 @IS_ERR(%struct.file* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %3
  %25 = load %struct.path*, %struct.path** %4, align 8
  %26 = load %struct.file*, %struct.file** %8, align 8
  %27 = call i32 @vfs_open(%struct.path* %25, %struct.file* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.file*, %struct.file** %8, align 8
  %32 = call i32 @fput(%struct.file* %31)
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.file* @ERR_PTR(i32 %33)
  store %struct.file* %34, %struct.file** %8, align 8
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.file*, %struct.file** %8, align 8
  ret %struct.file* %37
}

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.file* @alloc_empty_file(i32, %struct.cred*) #1

declare dso_local i32 @IS_ERR(%struct.file*) #1

declare dso_local i32 @vfs_open(%struct.path*, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
