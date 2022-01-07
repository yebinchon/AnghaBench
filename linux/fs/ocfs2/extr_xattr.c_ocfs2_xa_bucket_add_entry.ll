; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_header* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.ocfs2_xattr_entry*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, i64)* @ocfs2_xa_bucket_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_bucket_add_entry(%struct.ocfs2_xa_loc* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ocfs2_xattr_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %11, i32 0, i32 1
  %13 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %12, align 8
  store %struct.ocfs2_xattr_header* %13, %struct.ocfs2_xattr_header** %5, align 8
  %14 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %62, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i1 [ false, %20 ], [ %26, %24 ]
  br i1 %28, label %29, label %63

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %34, i32 0, i32 0
  %36 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %36, i64 %38
  store %struct.ocfs2_xattr_entry* %39, %struct.ocfs2_xattr_entry** %10, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %10, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = icmp sgt i64 %40, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %62

49:                                               ; preds = %29
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %10, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @le32_to_cpu(i32 %53)
  %55 = icmp slt i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %7, align 4
  br label %63

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %46
  br label %20

63:                                               ; preds = %59, %27
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %68, i32 0, i32 0
  %70 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %70, i64 %73
  %75 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %76 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %75, i32 0, i32 0
  %77 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %77, i64 %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memmove(%struct.ocfs2_xattr_entry* %74, %struct.ocfs2_xattr_entry* %80, i32 %86)
  br label %88

88:                                               ; preds = %67, %63
  %89 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %90 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %89, i32 0, i32 1
  %91 = call i32 @le16_add_cpu(i32* %90, i32 1)
  %92 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %93 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %92, i32 0, i32 0
  %94 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %94, i64 %96
  %98 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %99 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %98, i32 0, i32 0
  store %struct.ocfs2_xattr_entry* %97, %struct.ocfs2_xattr_entry** %99, align 8
  %100 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %101 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %100, i32 0, i32 0
  %102 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %101, align 8
  %103 = call i32 @memset(%struct.ocfs2_xattr_entry* %102, i32 0, i32 4)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry*, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memset(%struct.ocfs2_xattr_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
