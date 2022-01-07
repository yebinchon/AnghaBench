; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_failure.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32, %struct.page**, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ocfs2_write_ctxt*, i32, i32)* @ocfs2_write_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_write_failure(%struct.inode* %0, %struct.ocfs2_write_ctxt* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_write_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_write_ctxt* %1, %struct.ocfs2_write_ctxt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %21 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %26 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ocfs2_zero_new_buffers(i64 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %70, %31
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %35 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %39, i32 0, i32 2
  %41 = load %struct.page**, %struct.page*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  store %struct.page* %45, %struct.page** %12, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = icmp ne %struct.page* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %38
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = call i64 @page_has_buffers(%struct.page* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i64 @ocfs2_should_order_data(%struct.inode* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %6, align 8
  %58 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ocfs2_jbd2_inode_add_write(i32 %59, %struct.inode* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %52
  %65 = load %struct.page*, %struct.page** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @block_commit_write(%struct.page* %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %48, %38
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %32

73:                                               ; preds = %32
  ret void
}

declare dso_local i32 @ocfs2_zero_new_buffers(i64, i32, i32) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @ocfs2_should_order_data(%struct.inode*) #1

declare dso_local i32 @ocfs2_jbd2_inode_add_write(i32, %struct.inode*, i32, i32) #1

declare dso_local i32 @block_commit_write(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
