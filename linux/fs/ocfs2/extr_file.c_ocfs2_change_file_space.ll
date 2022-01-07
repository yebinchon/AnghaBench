; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_change_file_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_change_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.ocfs2_space_resv = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_IOC_RESVSP = common dso_local global i32 0, align 4
@OCFS2_IOC_RESVSP64 = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@OCFS2_IOC_UNRESVSP = common dso_local global i32 0, align 4
@OCFS2_IOC_UNRESVSP64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_change_file_space(%struct.file* %0, i32 %1, %struct.ocfs2_space_resv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_space_resv*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_space_resv* %2, %struct.ocfs2_space_resv** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.inode* @file_inode(%struct.file* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @OCFS2_IOC_RESVSP, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OCFS2_IOC_RESVSP64, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20, %3
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %26 = call i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOTTY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %85

31:                                               ; preds = %24, %20
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @OCFS2_IOC_UNRESVSP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @OCFS2_IOC_UNRESVSP64, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35, %31
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %41 = call i32 @ocfs2_sparse_alloc(%struct.ocfs2_super* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOTTY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %85

46:                                               ; preds = %39, %35
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @S_ISREG(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %85

56:                                               ; preds = %47
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @FMODE_WRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EBADF, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %85

66:                                               ; preds = %56
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = call i32 @mnt_want_write_file(%struct.file* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %85

73:                                               ; preds = %66
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %7, align 8
  %81 = call i32 @__ocfs2_change_file_space(%struct.file* %74, %struct.inode* %75, i32 %78, i32 %79, %struct.ocfs2_space_resv* %80, i32 0)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = call i32 @mnt_drop_write_file(%struct.file* %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %73, %71, %63, %53, %43, %28
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @__ocfs2_change_file_space(%struct.file*, %struct.inode*, i32, i32, %struct.ocfs2_space_resv*, i32) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
