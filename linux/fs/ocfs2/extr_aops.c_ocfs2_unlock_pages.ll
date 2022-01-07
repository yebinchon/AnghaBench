; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_unlock_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_unlock_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_write_ctxt = type { i32, i32**, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_write_ctxt*)* @ocfs2_unlock_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_unlock_pages(%struct.ocfs2_write_ctxt* %0) #0 {
  %2 = alloca %struct.ocfs2_write_ctxt*, align 8
  %3 = alloca i32, align 4
  store %struct.ocfs2_write_ctxt* %0, %struct.ocfs2_write_ctxt** %2, align 8
  %4 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %42, %8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %24 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %27 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %25, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %36 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %45

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %16

45:                                               ; preds = %34, %16
  %46 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mark_page_accessed(i32* %48)
  %50 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @put_page(i32* %52)
  br label %54

54:                                               ; preds = %45, %1
  %55 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %56 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %2, align 8
  %59 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ocfs2_unlock_and_free_pages(i32** %57, i32 %60)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mark_page_accessed(i32*) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local i32 @ocfs2_unlock_and_free_pages(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
