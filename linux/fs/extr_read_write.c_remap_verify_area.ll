; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_remap_verify_area.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_remap_verify_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i64, i32)* @remap_verify_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remap_verify_area(%struct.file* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi i1 [ true, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %94

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %94

39:                                               ; preds = %28
  %40 = load %struct.inode*, %struct.inode** %10, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i64 @mandatory_lock(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ false, %39 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %57, %58
  %60 = sub nsw i64 %59, 1
  br label %63

61:                                               ; preds = %53
  %62 = load i64, i64* @OFFSET_MAX, align 8
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi i64 [ %60, %56 ], [ %62, %61 ]
  store i64 %64, i64* %11, align 8
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @F_WRLCK, align 4
  br label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @F_RDLCK, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call i32 @locks_mandatory_area(%struct.inode* %65, %struct.file* %66, i64 %67, i64 %68, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %94

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.file*, %struct.file** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @MAY_WRITE, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @MAY_READ, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @security_file_permission(%struct.file* %84, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %80, %36, %25
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mandatory_lock(%struct.inode*) #1

declare dso_local i32 @locks_mandatory_area(%struct.inode*, %struct.file*, i64, i64, i32) #1

declare dso_local i32 @security_file_permission(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
