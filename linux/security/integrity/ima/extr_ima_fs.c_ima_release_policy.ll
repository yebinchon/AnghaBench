; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_release_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_fs.c_ima_release_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }

@valid_policy = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"completed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"policy update %s\0A\00", align 1
@AUDIT_INTEGRITY_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"policy_update\00", align 1
@IMA_FS_BUSY = common dso_local global i32 0, align 4
@ima_fs_flags = common dso_local global i32 0, align 4
@ima_policy = common dso_local global i32* null, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ima_release_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_release_policy(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @valid_policy, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_ACCMODE, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @O_RDONLY, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = call i32 @seq_release(%struct.inode* %19, %struct.file* %20)
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load i32, i32* @valid_policy, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i64 (...) @ima_check_policy()
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* @valid_policy, align 4
  br label %29

29:                                               ; preds = %28, %25, %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @AUDIT_INTEGRITY_STATUS, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @valid_policy, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @integrity_audit_msg(i32 %32, i32* null, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %37, i32 0)
  %39 = load i32, i32* @valid_policy, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = call i32 (...) @ima_delete_rules()
  store i32 1, i32* @valid_policy, align 4
  %43 = load i32, i32* @IMA_FS_BUSY, align 4
  %44 = call i32 @clear_bit(i32 %43, i32* @ima_fs_flags)
  store i32 0, i32* %3, align 4
  br label %49

45:                                               ; preds = %29
  %46 = call i32 (...) @ima_update_policy()
  %47 = load i32*, i32** @ima_policy, align 8
  %48 = call i32 @securityfs_remove(i32* %47)
  store i32* null, i32** @ima_policy, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %41, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @seq_release(%struct.inode*, %struct.file*) #1

declare dso_local i64 @ima_check_policy(...) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @integrity_audit_msg(i32, i32*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ima_delete_rules(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ima_update_policy(...) #1

declare dso_local i32 @securityfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
