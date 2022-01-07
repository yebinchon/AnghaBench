; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_open_realfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_open_realfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

@O_NOATIME = common dso_local global i32 0, align 4
@FMODE_NONOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"open(%p[%pD2/%c], 0%o) -> (%p, 0%o)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.file*, %struct.inode*)* @ovl_open_realfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @ovl_open_realfile(%struct.file* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_NOATIME, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FMODE_NONOTIFY, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cred* @ovl_override_creds(i32 %20)
  store %struct.cred* %21, %struct.cred** %7, align 8
  %22 = load %struct.file*, %struct.file** %3, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 1
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 (...) @current_cred()
  %27 = call %struct.file* @open_with_fake_path(i32* %23, i32 %24, %struct.inode* %25, i32 %26)
  store %struct.file* %27, %struct.file** %6, align 8
  %28 = load %struct.cred*, %struct.cred** %7, align 8
  %29 = call i32 @revert_creds(%struct.cred* %28)
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load %struct.file*, %struct.file** %3, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @ovl_whatisit(%struct.inode* %32, %struct.inode* %33)
  %35 = load %struct.file*, %struct.file** %3, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = call i64 @IS_ERR(%struct.file* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %2
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.file*, %struct.file** %6, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i32 [ 0, %42 ], [ %46, %43 ]
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.file* %30, %struct.file* %31, i32 %34, i32 %37, %struct.file* %38, i32 %48)
  %50 = load %struct.file*, %struct.file** %6, align 8
  ret %struct.file* %50
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local %struct.file* @open_with_fake_path(i32*, i32, %struct.inode*, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @pr_debug(i8*, %struct.file*, %struct.file*, i32, i32, %struct.file*, i32) #1

declare dso_local i32 @ovl_whatisit(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
