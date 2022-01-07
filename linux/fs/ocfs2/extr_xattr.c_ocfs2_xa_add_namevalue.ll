; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_add_namevalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_add_namevalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.ocfs2_xa_loc*, i32)* }
%struct.ocfs2_xattr_info = type { i64, i32, i32, i32 }

@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*)* @ocfs2_xa_add_namevalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_add_namevalue(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca %struct.ocfs2_xattr_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %4, align 8
  %8 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %9 = call i32 @namevalue_size_xi(%struct.ocfs2_xattr_info* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.ocfs2_xa_loc*, i32)*, i32 (%struct.ocfs2_xa_loc*, i32)** %13, align 8
  %15 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 %14(%struct.ocfs2_xa_loc* %15, i32 %16)
  %18 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cpu_to_le64(i64 %20)
  %22 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i32 %21, i32* %25, align 4
  %26 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %27 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ocfs2_xattr_set_type(%struct.TYPE_5__* %35, i32 %38)
  %40 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %47 = icmp sle i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ocfs2_xattr_set_local(%struct.TYPE_5__* %42, i32 %48)
  %50 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc* %56, i32 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @memset(i8* %59, i32 0, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %64 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %4, align 8
  %67 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i8* %62, i32 %65, i32 %68)
  ret void
}

declare dso_local i32 @namevalue_size_xi(%struct.ocfs2_xattr_info*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @ocfs2_xattr_set_type(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ocfs2_xattr_set_local(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
