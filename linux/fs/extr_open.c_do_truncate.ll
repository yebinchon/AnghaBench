; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_do_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_do_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file = type { i32 }
%struct.iattr = type { i32, %struct.file*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_FILE = common dso_local global i32 0, align 4
@ATTR_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_truncate(%struct.dentry* %0, i64 %1, i32 %2, %struct.file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.file* %3, %struct.file** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %62

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 2
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* @ATTR_SIZE, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load %struct.file*, %struct.file** %9, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.file*, %struct.file** %9, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store %struct.file* %27, %struct.file** %28, align 8
  %29 = load i32, i32* @ATTR_FILE, align 4
  %30 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %26, %17
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call i32 @dentry_needs_remove_privs(%struct.dentry* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %62

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @ATTR_FORCE, align 4
  %46 = or i32 %44, %45
  %47 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @inode_lock(i32 %53)
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = call i32 @notify_change(%struct.dentry* %55, %struct.iattr* %11, i32* null)
  store i32 %56, i32* %10, align 4
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @inode_unlock(i32 %59)
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %50, %38, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @dentry_needs_remove_privs(%struct.dentry*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
