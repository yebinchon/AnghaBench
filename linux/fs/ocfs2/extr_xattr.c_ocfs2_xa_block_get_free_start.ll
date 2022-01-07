; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_get_free_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_get_free_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32, %struct.ocfs2_xattr_header* }
%struct.ocfs2_xattr_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xa_loc*)* @ocfs2_xa_block_get_free_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xa_block_get_free_start(%struct.ocfs2_xa_loc* %0) #0 {
  %2 = alloca %struct.ocfs2_xa_loc*, align 8
  %3 = alloca %struct.ocfs2_xattr_header*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %2, align 8
  %8 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %8, i32 0, i32 1
  %10 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %9, align 8
  store %struct.ocfs2_xattr_header* %10, %struct.ocfs2_xattr_header** %3, align 8
  %11 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %2, align 8
  %16 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %38, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
