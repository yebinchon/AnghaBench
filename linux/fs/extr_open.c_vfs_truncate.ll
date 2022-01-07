; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_vfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@EISDIR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAY_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vfs_truncate(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.path*, %struct.path** %4, align 8
  %9 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISDIR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @EISDIR, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %3, align 8
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISREG(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub nsw i64 0, %28
  store i64 %29, i64* %3, align 8
  br label %94

30:                                               ; preds = %21
  %31 = load %struct.path*, %struct.path** %4, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @mnt_want_write(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %92

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load i32, i32* @MAY_WRITE, align 4
  %41 = call i64 @inode_permission(%struct.inode* %39, i32 %40)
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %87

45:                                               ; preds = %38
  %46 = load i64, i64* @EPERM, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %7, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = call i64 @IS_APPEND(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i64 @get_write_access(%struct.inode* %53)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %87

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load i32, i32* @O_WRONLY, align 4
  %61 = call i64 @break_lease(%struct.inode* %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %84

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @locks_verify_truncate(%struct.inode* %66, i32* null, i32 %67)
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load %struct.path*, %struct.path** %4, align 8
  %73 = call i64 @security_path_truncate(%struct.path* %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %71, %65
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load %struct.path*, %struct.path** %4, align 8
  %79 = getelementptr inbounds %struct.path, %struct.path* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @do_truncate(%struct.TYPE_2__* %80, i32 %81, i32 0, i32* null)
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %77, %74
  br label %84

84:                                               ; preds = %83, %64
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = call i32 @put_write_access(%struct.inode* %85)
  br label %87

87:                                               ; preds = %84, %57, %51, %44
  %88 = load %struct.path*, %struct.path** %4, align 8
  %89 = getelementptr inbounds %struct.path, %struct.path* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mnt_drop_write(i32 %90)
  br label %92

92:                                               ; preds = %87, %37
  %93 = load i64, i64* %7, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %92, %27, %18
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @mnt_want_write(i32) #1

declare dso_local i64 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @get_write_access(%struct.inode*) #1

declare dso_local i64 @break_lease(%struct.inode*, i32) #1

declare dso_local i64 @locks_verify_truncate(%struct.inode*, i32*, i32) #1

declare dso_local i64 @security_path_truncate(%struct.path*) #1

declare dso_local i64 @do_truncate(%struct.TYPE_2__*, i32, i32, i32*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
