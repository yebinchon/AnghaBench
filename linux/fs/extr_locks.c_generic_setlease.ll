; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_generic_setlease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_generic_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32 }

@CAP_LEASE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file_lock**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = call %struct.inode* @locks_inode(%struct.file* %12)
  store %struct.inode* %13, %struct.inode** %10, align 8
  %14 = call i32 (...) @current_fsuid()
  %15 = load %struct.inode*, %struct.inode** %10, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @uid_eq(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @CAP_LEASE, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %72

27:                                               ; preds = %20, %4
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISREG(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %72

36:                                               ; preds = %27
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @security_file_lock(%struct.file* %37, i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load i64, i64* %7, align 8
  switch i64 %45, label %69 [
    i64 129, label %46
    i64 130, label %51
    i64 128, label %51
  ]

46:                                               ; preds = %44
  %47 = load %struct.file*, %struct.file** %6, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @generic_delete_lease(%struct.file* %47, i8* %49)
  store i32 %50, i32* %5, align 4
  br label %72

51:                                               ; preds = %44, %44
  %52 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %53 = load %struct.file_lock*, %struct.file_lock** %52, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = call i32 @WARN_ON_ONCE(i32 1)
  %61 = load i32, i32* @ENOLCK, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %51
  %64 = load %struct.file*, %struct.file** %6, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.file_lock**, %struct.file_lock*** %8, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = call i32 @generic_add_lease(%struct.file* %64, i64 %65, %struct.file_lock** %66, i8** %67)
  store i32 %68, i32* %5, align 4
  br label %72

69:                                               ; preds = %44
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %63, %59, %46, %42, %33, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.inode* @locks_inode(%struct.file*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @security_file_lock(%struct.file*, i64) #1

declare dso_local i32 @generic_delete_lease(%struct.file*, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @generic_add_lease(%struct.file*, i64, %struct.file_lock**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
