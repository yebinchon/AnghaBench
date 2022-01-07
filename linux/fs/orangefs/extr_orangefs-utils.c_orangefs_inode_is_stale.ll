; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_is_stale.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_is_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ORANGEFS_sys_attr_s = type { i32 }
%struct.orangefs_inode_s = type { i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@ORANGEFS_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ORANGEFS_sys_attr_s*, i8*)* @orangefs_inode_is_stale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_inode_is_stale(%struct.inode* %0, %struct.ORANGEFS_sys_attr_s* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ORANGEFS_sys_attr_s*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.orangefs_inode_s*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ORANGEFS_sys_attr_s* %1, %struct.ORANGEFS_sys_attr_s** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode* %10)
  store %struct.orangefs_inode_s* %11, %struct.orangefs_inode_s** %8, align 8
  %12 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %6, align 8
  %13 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @orangefs_inode_type(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %3
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @orangefs_make_bad_inode(%struct.inode* %26)
  store i32 1, i32* %4, align 4
  br label %44

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @S_IFLNK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %8, align 8
  %34 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @ORANGEFS_NAME_MAX, align 4
  %38 = call i64 @strncmp(i32 %35, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @orangefs_make_bad_inode(%struct.inode* %41)
  store i32 1, i32* %4, align 4
  br label %44

43:                                               ; preds = %32, %28
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %25
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i32 @orangefs_inode_type(i32) #1

declare dso_local i32 @orangefs_make_bad_inode(%struct.inode*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
