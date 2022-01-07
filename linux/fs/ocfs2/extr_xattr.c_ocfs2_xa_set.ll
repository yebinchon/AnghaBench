; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i32, i32 }
%struct.ocfs2_xattr_set_ctxt = type { i32 }

@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*)* @ocfs2_xa_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_set(%struct.ocfs2_xa_loc* %0, %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_set_ctxt* %2) #0 {
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca %struct.ocfs2_xattr_info*, align 8
  %6 = alloca %struct.ocfs2_xattr_set_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store %struct.ocfs2_xattr_info* %1, %struct.ocfs2_xattr_info** %5, align 8
  store %struct.ocfs2_xattr_set_ctxt* %2, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %9 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ocfs2_xattr_name_hash(i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %23 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %24 = call i32 @ocfs2_xa_journal_access(i32 %21, %struct.ocfs2_xa_loc* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %73

30:                                               ; preds = %3
  %31 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %37 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %38 = call i32 @ocfs2_xa_remove(%struct.ocfs2_xa_loc* %36, %struct.ocfs2_xattr_set_ctxt* %37)
  store i32 %38, i32* %7, align 4
  br label %67

39:                                               ; preds = %30
  %40 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %41 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %44 = call i32 @ocfs2_xa_prepare_entry(%struct.ocfs2_xa_loc* %40, %struct.ocfs2_xattr_info* %41, i32 %42, %struct.ocfs2_xattr_set_ctxt* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ENOSPC, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %67

56:                                               ; preds = %39
  %57 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %58 = load %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_info** %5, align 8
  %59 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %60 = call i32 @ocfs2_xa_store_value(%struct.ocfs2_xa_loc* %57, %struct.ocfs2_xattr_info* %58, %struct.ocfs2_xattr_set_ctxt* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %55, %35
  %68 = load %struct.ocfs2_xattr_set_ctxt*, %struct.ocfs2_xattr_set_ctxt** %6, align 8
  %69 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %72 = call i32 @ocfs2_xa_journal_dirty(i32 %70, %struct.ocfs2_xa_loc* %71)
  br label %73

73:                                               ; preds = %67, %27
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @ocfs2_xattr_name_hash(i32, i32, i32) #1

declare dso_local i32 @ocfs2_xa_journal_access(i32, %struct.ocfs2_xa_loc*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_xa_remove(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xa_prepare_entry(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, i32, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xa_store_value(%struct.ocfs2_xa_loc*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_xa_journal_dirty(i32, %struct.ocfs2_xa_loc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
