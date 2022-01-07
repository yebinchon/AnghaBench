; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_alloc_quota_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_local.c_ocfs2_alloc_quota_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_quota_recovery = type { i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@OCFS2_MAXQUOTAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ocfs2_quota_recovery* ()* @ocfs2_alloc_quota_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ocfs2_quota_recovery* @ocfs2_alloc_quota_recovery() #0 {
  %1 = alloca %struct.ocfs2_quota_recovery*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_quota_recovery*, align 8
  %4 = load i32, i32* @GFP_NOFS, align 4
  %5 = call %struct.ocfs2_quota_recovery* @kmalloc(i32 8, i32 %4)
  store %struct.ocfs2_quota_recovery* %5, %struct.ocfs2_quota_recovery** %3, align 8
  %6 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %3, align 8
  %7 = icmp ne %struct.ocfs2_quota_recovery* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.ocfs2_quota_recovery* null, %struct.ocfs2_quota_recovery** %1, align 8
  br label %27

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @OCFS2_MAXQUOTAS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %3, align 8
  %16 = getelementptr inbounds %struct.ocfs2_quota_recovery, %struct.ocfs2_quota_recovery* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %3, align 8
  store %struct.ocfs2_quota_recovery* %26, %struct.ocfs2_quota_recovery** %1, align 8
  br label %27

27:                                               ; preds = %25, %8
  %28 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %1, align 8
  ret %struct.ocfs2_quota_recovery* %28
}

declare dso_local %struct.ocfs2_quota_recovery* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
