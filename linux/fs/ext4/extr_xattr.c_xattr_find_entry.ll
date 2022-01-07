; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_xattr_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_xattr_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"corrupted xattr entries\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_xattr_entry**, i8*, i32, i8*, i32)* @xattr_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_find_entry(%struct.inode* %0, %struct.ext4_xattr_entry** %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_xattr_entry**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_xattr_entry*, align 8
  %15 = alloca %struct.ext4_xattr_entry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ext4_xattr_entry** %1, %struct.ext4_xattr_entry*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %94

23:                                               ; preds = %6
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %16, align 8
  %26 = load %struct.ext4_xattr_entry**, %struct.ext4_xattr_entry*** %9, align 8
  %27 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %26, align 8
  store %struct.ext4_xattr_entry* %27, %struct.ext4_xattr_entry** %14, align 8
  br label %28

28:                                               ; preds = %81, %23
  %29 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %30 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %83

33:                                               ; preds = %28
  %34 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %35 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %34)
  store %struct.ext4_xattr_entry* %35, %struct.ext4_xattr_entry** %15, align 8
  %36 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %15, align 8
  %37 = bitcast %struct.ext4_xattr_entry* %36 to i8*
  %38 = load i8*, i8** %10, align 8
  %39 = icmp uge i8* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @EXT4_ERROR_INODE(%struct.inode* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EFSCORRUPTED, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %94

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %48 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load i64, i64* %16, align 8
  %55 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %56 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %53, %45
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %66 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 @memcmp(i8* %64, i32 %67, i64 %68)
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i32, i32* %17, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %73
  br label %83

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %15, align 8
  store %struct.ext4_xattr_entry* %82, %struct.ext4_xattr_entry** %14, align 8
  br label %28

83:                                               ; preds = %79, %28
  %84 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %85 = load %struct.ext4_xattr_entry**, %struct.ext4_xattr_entry*** %9, align 8
  store %struct.ext4_xattr_entry* %84, %struct.ext4_xattr_entry** %85, align 8
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @ENODATA, align 4
  %90 = sub nsw i32 0, %89
  br label %92

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i32 [ %90, %88 ], [ 0, %91 ]
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %92, %40, %20
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
