; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_search = type { i32, %struct.ocfs2_xattr_entry*, %struct.TYPE_2__* }
%struct.ocfs2_xattr_entry = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_find_entry(i32 %0, i8* %1, %struct.ocfs2_xattr_search* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ocfs2_xattr_search*, align 8
  %8 = alloca %struct.ocfs2_xattr_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.ocfs2_xattr_search* %2, %struct.ocfs2_xattr_search** %7, align 8
  store i32 1, i32* %11, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %20, i32 0, i32 1
  %22 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %21, align 8
  store %struct.ocfs2_xattr_entry* %22, %struct.ocfs2_xattr_entry** %8, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %68, %17
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %35 = call i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry* %34)
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %39, %32
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = add nsw i32 %53, %57
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcmp(i8* %50, i32 %58, i64 %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %49, %46
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %71

65:                                               ; preds = %61
  %66 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %66, i64 1
  store %struct.ocfs2_xattr_entry* %67, %struct.ocfs2_xattr_entry** %8, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %23

71:                                               ; preds = %64, %23
  %72 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %73 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %7, align 8
  %74 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %73, i32 0, i32 1
  store %struct.ocfs2_xattr_entry* %72, %struct.ocfs2_xattr_entry** %74, align 8
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENODATA, align 4
  %79 = sub nsw i32 0, %78
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %14
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @memcmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
