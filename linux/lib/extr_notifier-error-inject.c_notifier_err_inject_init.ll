; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_notifier-error-inject.c_notifier_err_inject_init.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_notifier-error-inject.c_notifier_err_inject_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.notifier_err_inject = type { %struct.notifier_err_inject_action*, %struct.TYPE_2__ }
%struct.notifier_err_inject_action = type { i8*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@notifier_err_inject_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"actions\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @notifier_err_inject_init(i8* %0, %struct.dentry* %1, %struct.notifier_err_inject* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.notifier_err_inject*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.notifier_err_inject_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.notifier_err_inject* %2, %struct.notifier_err_inject** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @S_IFREG, align 4
  %15 = load i32, i32* @S_IRUSR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @notifier_err_inject_callback, align 4
  %20 = load %struct.notifier_err_inject*, %struct.notifier_err_inject** %7, align 8
  %21 = getelementptr inbounds %struct.notifier_err_inject, %struct.notifier_err_inject* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.notifier_err_inject*, %struct.notifier_err_inject** %7, align 8
  %25 = getelementptr inbounds %struct.notifier_err_inject, %struct.notifier_err_inject* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call %struct.dentry* @debugfs_create_dir(i8* %27, %struct.dentry* %28)
  store %struct.dentry* %29, %struct.dentry** %11, align 8
  %30 = load %struct.dentry*, %struct.dentry** %11, align 8
  %31 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %12, align 8
  %32 = load %struct.notifier_err_inject*, %struct.notifier_err_inject** %7, align 8
  %33 = getelementptr inbounds %struct.notifier_err_inject, %struct.notifier_err_inject* %32, i32 0, i32 0
  %34 = load %struct.notifier_err_inject_action*, %struct.notifier_err_inject_action** %33, align 8
  store %struct.notifier_err_inject_action* %34, %struct.notifier_err_inject_action** %9, align 8
  br label %35

35:                                               ; preds = %51, %4
  %36 = load %struct.notifier_err_inject_action*, %struct.notifier_err_inject_action** %9, align 8
  %37 = getelementptr inbounds %struct.notifier_err_inject_action, %struct.notifier_err_inject_action* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.notifier_err_inject_action*, %struct.notifier_err_inject_action** %9, align 8
  %42 = getelementptr inbounds %struct.notifier_err_inject_action, %struct.notifier_err_inject_action* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.dentry*, %struct.dentry** %12, align 8
  %45 = call %struct.dentry* @debugfs_create_dir(i8* %43, %struct.dentry* %44)
  store %struct.dentry* %45, %struct.dentry** %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.dentry*, %struct.dentry** %13, align 8
  %48 = load %struct.notifier_err_inject_action*, %struct.notifier_err_inject_action** %9, align 8
  %49 = getelementptr inbounds %struct.notifier_err_inject_action, %struct.notifier_err_inject_action* %48, i32 0, i32 1
  %50 = call i32 @debugfs_create_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %46, %struct.dentry* %47, i32* %49)
  br label %51

51:                                               ; preds = %40
  %52 = load %struct.notifier_err_inject_action*, %struct.notifier_err_inject_action** %9, align 8
  %53 = getelementptr inbounds %struct.notifier_err_inject_action, %struct.notifier_err_inject_action* %52, i32 1
  store %struct.notifier_err_inject_action* %53, %struct.notifier_err_inject_action** %9, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  ret %struct.dentry* %55
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @debugfs_create_errno(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
