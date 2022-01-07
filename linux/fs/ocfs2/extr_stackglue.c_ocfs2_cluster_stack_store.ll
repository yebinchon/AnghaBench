; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_stack_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_stack_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@OCFS2_STACK_LABEL_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ocfs2_stack_lock = common dso_local global i32 0, align 4
@active_stack = common dso_local global i64 0, align 8
@cluster_stack_name = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @ocfs2_cluster_stack_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_cluster_stack_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %5, align 8
  br label %66

17:                                               ; preds = %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = sub i64 %19, 1
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i64, i64* %10, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @OCFS2_STACK_LABEL_LEN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i64 @strnlen(i8* %33, i64 %34)
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %28
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %66

41:                                               ; preds = %32
  %42 = call i32 @spin_lock(i32* @ocfs2_stack_lock)
  %43 = load i64, i64* @active_stack, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @cluster_stack_name, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @strncmp(i8* %46, i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %11, align 8
  br label %56

53:                                               ; preds = %45
  %54 = load i64, i64* @EBUSY, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %53, %51
  br label %63

57:                                               ; preds = %41
  %58 = load i32, i32* @cluster_stack_name, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @memcpy(i32 %58, i8* %59, i64 %60)
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %11, align 8
  br label %63

63:                                               ; preds = %57, %56
  %64 = call i32 @spin_unlock(i32* @ocfs2_stack_lock)
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %63, %38, %15
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
