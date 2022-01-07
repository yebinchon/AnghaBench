; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.h_ocfs2_quota_trans_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.h_ocfs2_quota_trans_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@OCFS2_FEATURE_RO_COMPAT_USRQUOTA = common dso_local global i32 0, align 4
@OCFS2_QWRITE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_FEATURE_RO_COMPAT_GRPQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ocfs2_quota_trans_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_quota_trans_credits(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_USRQUOTA, align 4
  %6 = call i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @OCFS2_QWRITE_CREDITS, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, %9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = load i32, i32* @OCFS2_FEATURE_RO_COMPAT_GRPQUOTA, align 4
  %17 = call i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i64, i64* @OCFS2_QWRITE_CREDITS, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @OCFS2_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
