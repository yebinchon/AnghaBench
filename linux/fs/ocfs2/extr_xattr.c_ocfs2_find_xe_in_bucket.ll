; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_find_xe_in_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_find_xe_in_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }
%struct.ocfs2_xattr_entry = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i32, i8*, i64, i32*, i32*)* @ocfs2_find_xe_in_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_xe_in_bucket(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i32 %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_xattr_header*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ocfs2_xattr_entry*, align 8
  %23 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %24 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %9, align 8
  %25 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %24)
  store %struct.ocfs2_xattr_header* %25, %struct.ocfs2_xattr_header** %20, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %21, align 8
  store %struct.ocfs2_xattr_entry* null, %struct.ocfs2_xattr_entry** %22, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %105, %7
  %29 = load i32, i32* %15, align 4
  %30 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %20, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %28
  %36 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %20, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %36, i32 0, i32 0
  %38 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %37, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %38, i64 %40
  store %struct.ocfs2_xattr_entry* %41, %struct.ocfs2_xattr_entry** %22, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %22, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = icmp sgt i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %105

49:                                               ; preds = %35
  %50 = load i64, i64* %12, align 8
  %51 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %22, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %108

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %22, align 8
  %61 = call i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry* %60)
  %62 = sub nsw i32 %59, %61
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load i64, i64* %21, align 8
  %67 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %22, align 8
  %68 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub i64 %66, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %65, %58
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %105

76:                                               ; preds = %72
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %20, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @ocfs2_xattr_bucket_get_name_value(i32 %79, %struct.ocfs2_xattr_header* %80, i32 %81, i32* %18, i32* %19)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %108

88:                                               ; preds = %76
  %89 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %9, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call i8* @bucket_block(%struct.ocfs2_xattr_bucket* %89, i32 %90)
  %92 = load i32, i32* %19, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %23, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %23, align 8
  %97 = load i64, i64* %21, align 8
  %98 = call i32 @memcmp(i8* %95, i8* %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %14, align 8
  store i32 1, i32* %103, align 4
  store i32 0, i32* %16, align 4
  br label %108

104:                                              ; preds = %88
  br label %105

105:                                              ; preds = %104, %75, %48
  %106 = load i32, i32* %15, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %28

108:                                              ; preds = %100, %85, %56, %28
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xattr_get_type(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xattr_bucket_get_name_value(i32, %struct.ocfs2_xattr_header*, i32, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @bucket_block(%struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
