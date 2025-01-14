; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_initcon_files.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_make_initcon_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32* }

@SECINITSID_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@sel_initcon_ops = common dso_local global i32 0, align 4
@SEL_INITCON_INO_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @sel_make_initcon_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_initcon_files(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 1, i32* %4, align 4
  br label %7

7:                                                ; preds = %47, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SECINITSID_NUM, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @security_get_initial_sid_context(i32 %13)
  %15 = call %struct.dentry* @d_alloc_name(%struct.dentry* %12, i32 %14)
  store %struct.dentry* %15, %struct.dentry** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %11
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @S_IFREG, align 4
  %26 = load i32, i32* @S_IRUGO, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.inode* @sel_make_inode(i32 %24, i32 %27)
  store %struct.inode* %28, %struct.inode** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i32 @dput(%struct.dentry* %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %21
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  store i32* @sel_initcon_ops, i32** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SEL_INITCON_INO_OFFSET, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @d_add(%struct.dentry* %44, %struct.inode* %45)
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %7

50:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %31, %18
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i32) #1

declare dso_local i32 @security_get_initial_sid_context(i32) #1

declare dso_local %struct.inode* @sel_make_inode(i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
