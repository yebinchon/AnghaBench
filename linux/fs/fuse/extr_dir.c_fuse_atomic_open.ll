; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.file = type { i32 }
%struct.fuse_conn = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)* @fuse_atomic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_atomic_open(%struct.inode* %0, %struct.dentry* %1, %struct.file* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fuse_conn*, align 8
  %14 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %15)
  store %struct.fuse_conn* %16, %struct.fuse_conn** %13, align 8
  store %struct.dentry* null, %struct.dentry** %14, align 8
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call i64 @d_in_lookup(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call %struct.dentry* @fuse_lookup(%struct.inode* %21, %struct.dentry* %22, i32 0)
  store %struct.dentry* %23, %struct.dentry** %14, align 8
  %24 = load %struct.dentry*, %struct.dentry** %14, align 8
  %25 = call i64 @IS_ERR(%struct.dentry* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.dentry*, %struct.dentry** %14, align 8
  %29 = call i32 @PTR_ERR(%struct.dentry* %28)
  store i32 %29, i32* %6, align 4
  br label %89

30:                                               ; preds = %20
  %31 = load %struct.dentry*, %struct.dentry** %14, align 8
  %32 = icmp ne %struct.dentry* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %34, %struct.dentry** %8, align 8
  br label %35

35:                                               ; preds = %33, %30
  br label %36

36:                                               ; preds = %35, %5
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @O_CREAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = call i64 @d_really_is_positive(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %36
  br label %85

46:                                               ; preds = %41
  %47 = load i32, i32* @FMODE_CREATED, align 4
  %48 = load %struct.file*, %struct.file** %9, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %53 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %76

57:                                               ; preds = %46
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = load %struct.file*, %struct.file** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @fuse_create_open(%struct.inode* %58, %struct.dentry* %59, %struct.file* %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @ENOSYS, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %70 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %76

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %83, %71
  %73 = load %struct.dentry*, %struct.dentry** %14, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %89

76:                                               ; preds = %68, %56
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @fuse_mknod(%struct.inode* %77, %struct.dentry* %78, i32 %79, i32 0)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %72

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %45
  %86 = load %struct.file*, %struct.file** %9, align 8
  %87 = load %struct.dentry*, %struct.dentry** %14, align 8
  %88 = call i32 @finish_no_open(%struct.file* %86, %struct.dentry* %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %72, %27
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @d_in_lookup(%struct.dentry*) #1

declare dso_local %struct.dentry* @fuse_lookup(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @fuse_create_open(%struct.inode*, %struct.dentry*, %struct.file*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fuse_mknod(%struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @finish_no_open(%struct.file*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
