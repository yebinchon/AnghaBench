; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_check_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_bucket_check_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_xattr_info = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*)* @ocfs2_xa_bucket_check_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_bucket_check_space(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.super_block*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %5, align 8
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %19 = call i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %21 = call i32 @ocfs2_xi_entry_usage(%struct.ocfs2_xattr_info* %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %23 = call i32 @namevalue_size_xi(%struct.ocfs2_xattr_info* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %27, align 8
  store %struct.super_block* %28, %struct.super_block** %11, align 8
  %29 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %35 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %36 = call i64 @ocfs2_xa_can_reuse_entry(%struct.ocfs2_xa_loc* %34, %struct.ocfs2_xattr_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %53
  br label %74

60:                                               ; preds = %45
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @ocfs2_xa_check_space_helper(i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %79

69:                                               ; preds = %60
  %70 = load %struct.super_block*, %struct.super_block** %11, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ocfs2_bucket_align_free_start(%struct.super_block* %70, i32 %71, i32 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %69, %59
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ocfs2_xa_check_space_helper(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %67, %56
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_xa_get_free_start(%struct.ocfs2_xa_loc*) #1

declare dso_local i32 @ocfs2_xi_entry_usage(%struct.ocfs2_xattr_info*) #1

declare dso_local i32 @namevalue_size_xi(%struct.ocfs2_xattr_info*) #1

declare dso_local i64 @ocfs2_xa_can_reuse_entry(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_xa_check_space_helper(i32, i32, i32) #1

declare dso_local i32 @ocfs2_bucket_align_free_start(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
