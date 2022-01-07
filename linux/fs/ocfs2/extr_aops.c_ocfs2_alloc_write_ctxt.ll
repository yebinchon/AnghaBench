; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_alloc_write_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_alloc_write_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_write_ctxt = type { i32, i32, i32, i32, i32, i32, %struct.buffer_head*, i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_write_ctxt**, %struct.ocfs2_super*, i32, i32, i32, %struct.buffer_head*)* @ocfs2_alloc_write_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_alloc_write_ctxt(%struct.ocfs2_write_ctxt** %0, %struct.ocfs2_super* %1, i32 %2, i32 %3, i32 %4, %struct.buffer_head* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_write_ctxt**, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_write_ctxt*, align 8
  store %struct.ocfs2_write_ctxt** %0, %struct.ocfs2_write_ctxt*** %8, align 8
  store %struct.ocfs2_super* %1, %struct.ocfs2_super** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.buffer_head* %5, %struct.buffer_head** %13, align 8
  %16 = load i32, i32* @GFP_NOFS, align 4
  %17 = call %struct.ocfs2_write_ctxt* @kzalloc(i32 40, i32 %16)
  store %struct.ocfs2_write_ctxt* %17, %struct.ocfs2_write_ctxt** %15, align 8
  %18 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %19 = icmp ne %struct.ocfs2_write_ctxt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %81

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = lshr i32 %24, %27
  %29 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %30 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @UINT_MAX, align 4
  %32 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %33 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %34, %35
  %37 = sub i32 %36, 1
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = lshr i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %44 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub i32 %42, %45
  %47 = add i32 %46, 1
  %48 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %49 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %51 = call i32 @get_bh(%struct.buffer_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %53 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %54 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %53, i32 0, i32 6
  store %struct.buffer_head* %52, %struct.buffer_head** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %57 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ugt i32 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %23
  %67 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %68 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %72

69:                                               ; preds = %23
  %70 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %71 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %74 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %73, i32 0, i32 4
  %75 = call i32 @ocfs2_init_dealloc_ctxt(i32* %74)
  %76 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %77 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %76, i32 0, i32 3
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %15, align 8
  %80 = load %struct.ocfs2_write_ctxt**, %struct.ocfs2_write_ctxt*** %8, align 8
  store %struct.ocfs2_write_ctxt* %79, %struct.ocfs2_write_ctxt** %80, align 8
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %72, %20
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.ocfs2_write_ctxt* @kzalloc(i32, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
