; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_list_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_list_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_MOUNT_NOUSERXATTR = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i64, i64*, i32, i8*, i32)* @ocfs2_xattr_list_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_list_entry(%struct.super_block* %0, i8* %1, i64 %2, i64* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %16, align 8
  %24 = load i32, i32* %13, align 4
  switch i32 %24, label %50 [
    i32 128, label %25
    i32 131, label %35
    i32 130, label %35
    i32 129, label %44
  ]

25:                                               ; preds = %7
  %26 = load %struct.super_block*, %struct.super_block** %9, align 8
  %27 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OCFS2_MOUNT_NOUSERXATTR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %97

34:                                               ; preds = %25
  br label %50

35:                                               ; preds = %7, %7
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SB_POSIXACL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %97

43:                                               ; preds = %35
  br label %50

44:                                               ; preds = %7
  %45 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %46 = call i32 @capable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %97

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %7, %49, %43, %34
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @ocfs2_xattr_prefix(i32 %51)
  store i8* %52, i8** %17, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %97

56:                                               ; preds = %50
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @strlen(i8* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** %12, align 8
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %97

71:                                               ; preds = %56
  %72 = load i64*, i64** %12, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @ERANGE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %97

79:                                               ; preds = %71
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @memcpy(i8* %80, i8* %81, i32 %82)
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @memcpy(i8* %87, i8* %88, i32 %89)
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  store i8 0, i8* %96, align 1
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %79, %76, %70, %55, %48, %42, %33
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i8* @ocfs2_xattr_prefix(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
