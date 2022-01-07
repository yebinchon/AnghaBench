; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_store_value.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_store_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i32, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 }

@OCFS2_XATTR_INLINE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xa_store_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_store_value(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_set_ctxt* %2) #0 {
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_info*, align 8
  %6 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ocfs2_xattr_value_buf, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %5, align 8
  store %struct.ocfs2_xattr_set_ctxt* %2, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OCFS2_XATTR_SIZE(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc* %22, i32 %23)
  store i8* %24, i8** %10, align 8
  %25 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCFS2_XATTR_INLINE_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %3
  %31 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %32 = call i32 @ocfs2_xa_fill_value_buf(%struct.ocfs2_xa_loc* %31, %struct.ocfs2_xattr_value_buf* %11)
  %33 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__ocfs2_xattr_set_value_outside(i32 %35, i32 %38, %struct.ocfs2_xattr_value_buf* %11, i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %58

46:                                               ; preds = %3
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i8* %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %46, %30
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @OCFS2_XATTR_SIZE(i32) #1

declare dso_local i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc*, i32) #1

declare dso_local i32 @ocfs2_xa_fill_value_buf(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_value_buf*) #1

declare dso_local i32 @__ocfs2_xattr_set_value_outside(i32, i32, %struct.ocfs2_xattr_value_buf*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
