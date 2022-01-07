; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_wipe_namevalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_wipe_namevalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_entry* }
%struct.ocfs2_xattr_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*)* @ocfs2_xa_block_wipe_namevalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_block_wipe_namevalue(%struct.ocfs2_xa_loc* %0) #0 {
  %2 = alloca %struct.ocfs2_xa_loc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_xattr_entry*, align 8
  %9 = alloca %struct.ocfs2_xattr_header*, align 8
  %10 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %2, align 8
  %11 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %11, i32 0, i32 1
  %13 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %12, align 8
  store %struct.ocfs2_xattr_entry* %13, %struct.ocfs2_xattr_entry** %8, align 8
  %14 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %14, i32 0, i32 0
  %16 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %15, align 8
  store %struct.ocfs2_xattr_header* %16, %struct.ocfs2_xattr_header** %9, align 8
  %17 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_entry, %struct.ocfs2_xattr_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %8, align 8
  %26 = call i32 @namevalue_size_xe(%struct.ocfs2_xattr_entry* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %28 = call i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc* %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %30 = bitcast %struct.ocfs2_xattr_header* %29 to i8*
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %38 = bitcast %struct.ocfs2_xattr_header* %37 to i8*
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @memmove(i8* %36, i8* %41, i32 %44)
  %46 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %47 = bitcast %struct.ocfs2_xattr_header* %46 to i8*
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memset(i8* %50, i32 0, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %81, %1
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %57
  %71 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @le16_add_cpu(i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %70, %57
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %53

84:                                               ; preds = %53
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @namevalue_size_xe(%struct.ocfs2_xattr_entry*) #1

declare dso_local i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
