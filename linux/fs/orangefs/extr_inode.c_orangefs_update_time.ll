; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_update_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.timespec64 = type { i32 }
%struct.iattr = type { i32 }

@GOSSIP_INODE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"orangefs_update_time: %pU\0A\00", align 1
@S_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@S_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_update_time(%struct.inode* %0, %struct.timespec64* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @get_khandle_from_ino(%struct.inode* %9)
  %11 = call i32 @gossip_debug(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @generic_update_time(%struct.inode* %12, %struct.timespec64* %13, i32 %14)
  %16 = call i32 @memset(%struct.iattr* %7, i32 0, i32 4)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_ATIME, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @ATTR_ATIME, align 4
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @S_CTIME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @ATTR_CTIME, align 4
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @S_MTIME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @ATTR_MTIME, align 4
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @__orangefs_setattr(%struct.inode* %47, %struct.iattr* %7)
  ret i32 %48
}

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @get_khandle_from_ino(%struct.inode*) #1

declare dso_local i32 @generic_update_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @memset(%struct.iattr*, i32, i32) #1

declare dso_local i32 @__orangefs_setattr(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
