; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_rec_merge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_rec_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_block = type { i32 }

@REF_CONTIG_NONE = common dso_local global i32 0, align 4
@REF_CONTIG_LEFT = common dso_local global i32 0, align 4
@REF_CONTIG_LEFTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_refcount_block*, i32)* @ocfs2_refcount_rec_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_refcount_rec_merge(%struct.ocfs2_refcount_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_refcount_block* %0, %struct.ocfs2_refcount_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @ocfs2_refcount_rec_contig(%struct.ocfs2_refcount_block* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @REF_CONTIG_NONE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @REF_CONTIG_LEFT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @REF_CONTIG_LEFTRIGHT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %17
  %29 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ocfs2_rotate_refcount_rec_left(%struct.ocfs2_refcount_block* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REF_CONTIG_LEFTRIGHT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ocfs2_rotate_refcount_rec_left(%struct.ocfs2_refcount_block* %36, i32 %37)
  br label %39

39:                                               ; preds = %12, %35, %28
  ret void
}

declare dso_local i32 @ocfs2_refcount_rec_contig(%struct.ocfs2_refcount_block*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_rotate_refcount_rec_left(%struct.ocfs2_refcount_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
