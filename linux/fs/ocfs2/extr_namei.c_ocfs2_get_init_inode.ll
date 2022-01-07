; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_get_init_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_namei.c_ocfs2_get_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"new_inode failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, i32)* @ocfs2_get_init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ocfs2_get_init_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @new_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ML_ERROR, align 4
  %16 = call i32 @mlog(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %3, align 8
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i32 @set_nlink(%struct.inode* %25, i32 2)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @inode_init_owner(%struct.inode* %28, %struct.inode* %29, i32 %30)
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @dquot_initialize(%struct.inode* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.inode* @ERR_PTR(i32 %37)
  store %struct.inode* %38, %struct.inode** %3, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %40, %struct.inode** %3, align 8
  br label %41

41:                                               ; preds = %39, %36, %14
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %42
}

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
