; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_do_root_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4super.c_nfs_do_root_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.file_system_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[%s]:/\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s:/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.file_system_type*, i32, i8*, i8*)* @nfs_do_root_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @nfs_do_root_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 5
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i64 %17, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.vfsmount* @ERR_PTR(i32 %24)
  store %struct.vfsmount* %25, %struct.vfsmount** %5, align 8
  br label %49

26:                                               ; preds = %4
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strchr(i8* %27, i8 signext 58)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %40

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %41, i32 %42, i8* %43, i8* %44)
  store %struct.vfsmount* %45, %struct.vfsmount** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %48, %struct.vfsmount** %5, align 8
  br label %49

49:                                               ; preds = %40, %22
  %50 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type*, i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
