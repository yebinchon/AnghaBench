; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_rec_contig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_rec_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REF_CONTIG_NONE = common dso_local global i32 0, align 4
@REF_CONTIG_RIGHT = common dso_local global i32 0, align 4
@REF_CONTIG_LEFTRIGHT = common dso_local global i32 0, align 4
@REF_CONTIG_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_refcount_block*, i32)* @ocfs2_refcount_rec_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refcount_rec_contig(%struct.ocfs2_refcount_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_refcount_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_refcount_block* %0, %struct.ocfs2_refcount_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @REF_CONTIG_NONE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %8, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ocfs2_refcount_rec_adjacent(%struct.ocfs2_refcount_block* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 1
  %27 = call i32 @ocfs2_refcount_rec_adjacent(%struct.ocfs2_refcount_block* %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @REF_CONTIG_RIGHT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REF_CONTIG_RIGHT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @REF_CONTIG_LEFTRIGHT, align 4
  store i32 %36, i32* %5, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @REF_CONTIG_LEFT, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_refcount_rec_adjacent(%struct.ocfs2_refcount_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
