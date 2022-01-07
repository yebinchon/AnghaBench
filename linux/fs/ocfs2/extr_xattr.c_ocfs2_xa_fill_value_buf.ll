; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_fill_value_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_fill_value_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*)* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ocfs2_xattr_value_buf = type { %struct.ocfs2_xattr_value_root* }
%struct.ocfs2_xattr_value_root = type { i32 }

@OCFS2_XATTR_ROOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*)* @ocfs2_xa_fill_value_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_fill_value_buf(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_value_buf* %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca %struct.ocfs2_xattr_value_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store %struct.ocfs2_xattr_value_buf* %1, %struct.ocfs2_xattr_value_buf** %4, align 8
  %7 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %8 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @OCFS2_XATTR_SIZE(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @ocfs2_xattr_is_local(%struct.TYPE_5__* %21)
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i64 @namevalue_size_xe(%struct.TYPE_5__* %26)
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @OCFS2_XATTR_ROOT_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp ne i64 %27, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*)*, i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*)** %38, align 8
  %40 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %41 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %4, align 8
  %42 = call i32 %39(%struct.ocfs2_xa_loc* %40, %struct.ocfs2_xattr_value_buf* %41)
  %43 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i64 @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc* %43, i32 %46)
  %48 = inttoptr i64 %47 to %struct.ocfs2_xattr_value_root*
  %49 = load %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_xattr_value_buf** %4, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %49, i32 0, i32 0
  store %struct.ocfs2_xattr_value_root* %48, %struct.ocfs2_xattr_value_root** %50, align 8
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_xattr_is_local(%struct.TYPE_5__*) #1

declare dso_local i64 @namevalue_size_xe(%struct.TYPE_5__*) #1

declare dso_local i64 @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
