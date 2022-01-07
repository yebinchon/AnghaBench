; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_file.c_ocfs2_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_space_resv = type { i8*, i8*, i64 }

@OCFS2_IOC_RESVSP64 = common dso_local global i32 0, align 4
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@OCFS2_IOC_UNRESVSP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @ocfs2_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_space_resv, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = call %struct.inode* @file_inode(%struct.file* %15)
  store %struct.inode* %16, %struct.inode** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %10, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ocfs2_super* @OCFS2_SB(i32 %19)
  store %struct.ocfs2_super* %20, %struct.ocfs2_super** %11, align 8
  store i32 1, i32* %13, align 4
  %21 = load i32, i32* @OCFS2_IOC_RESVSP64, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %24 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %22, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EOPNOTSUPP, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %65

32:                                               ; preds = %4
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %34 = call i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @EOPNOTSUPP, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %5, align 8
  br label %65

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @OCFS2_IOC_UNRESVSP64, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %12, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %12, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %12, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i64 @__ocfs2_change_file_space(i32* null, %struct.inode* %60, i64 %61, i32 %62, %struct.ocfs2_space_resv* %12, i32 %63)
  store i64 %64, i64* %5, align 8
  br label %65

65:                                               ; preds = %52, %36, %29
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super*) #1

declare dso_local i64 @__ocfs2_change_file_space(i32*, %struct.inode*, i64, i32, %struct.ocfs2_space_resv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
