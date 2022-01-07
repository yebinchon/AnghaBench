; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_block_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, i32)* @ocfs2_xa_block_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_block_add_entry(%struct.ocfs2_xa_loc* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_xa_loc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @le16_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @le16_add_cpu(i32* %25, i32 1)
  %27 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
