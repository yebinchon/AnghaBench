; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @f2fs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %8 = getelementptr inbounds %struct.qstr, %struct.qstr* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call i32 @d_inode(%struct.dentry* %9)
  %11 = call i64 @f2fs_inode_by_name(i32 %10, %struct.qstr* %4, %struct.page** %5)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = call i64 @IS_ERR(%struct.page* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = call %struct.dentry* @ERR_CAST(%struct.page* %19)
  store %struct.dentry* %20, %struct.dentry** %2, align 8
  br label %32

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %2, align 8
  br label %32

25:                                               ; preds = %1
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @f2fs_iget(i32 %28, i64 %29)
  %31 = call %struct.dentry* @d_obtain_alias(i32 %30)
  store %struct.dentry* %31, %struct.dentry** %2, align 8
  br label %32

32:                                               ; preds = %25, %21, %18
  %33 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %33
}

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local i64 @f2fs_inode_by_name(i32, %struct.qstr*, %struct.page**) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.page*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @f2fs_iget(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
