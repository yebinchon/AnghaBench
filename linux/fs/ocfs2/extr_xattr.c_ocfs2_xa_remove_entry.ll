; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_remove_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_header* }
%struct.ocfs2_xattr_entry = type { i32 }
%struct.ocfs2_xattr_header = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*)* @ocfs2_xa_remove_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_remove_entry(%struct.ocfs2_xa_loc* %0) #0 {
  %2 = alloca %struct.ocfs2_xa_loc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_xattr_header*, align 8
  %6 = alloca %struct.ocfs2_xattr_entry*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %2, align 8
  %7 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %7, i32 0, i32 1
  %9 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  store %struct.ocfs2_xattr_header* %9, %struct.ocfs2_xattr_header** %5, align 8
  %10 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 0
  %12 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %11, align 8
  store %struct.ocfs2_xattr_entry* %12, %struct.ocfs2_xattr_entry** %6, align 8
  %13 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %14 = call i32 @ocfs2_xa_wipe_namevalue(%struct.ocfs2_xa_loc* %13)
  %15 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %15, i32 0, i32 0
  store %struct.ocfs2_xattr_entry* null, %struct.ocfs2_xattr_entry** %16, align 8
  %17 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %17, i32 0, i32 1
  %19 = call i32 @le16_add_cpu(i32* %18, i32 -1)
  %20 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %1
  %27 = load %struct.ocfs2_xattr_entry*, %struct.ocfs2_xattr_entry** %6, align 8
  %28 = bitcast %struct.ocfs2_xattr_entry* %27 to i8*
  %29 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %29, i32 0, i32 0
  %31 = bitcast i32** %30 to i8*
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memmove(i32* %42, i32* %49, i32 %55)
  %57 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %5, align 8
  %58 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  br label %64

64:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @ocfs2_xa_wipe_namevalue(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
