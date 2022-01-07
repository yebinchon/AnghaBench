; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_gfs2_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64, %struct.buffer_head* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @gfs2_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.gfs2_sbd* @GFS2_SB(i32 %17)
  store %struct.gfs2_sbd* %18, %struct.gfs2_sbd** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ true, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @PageLocked(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i32 @ClearPageChecked(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i32 @page_has_buffers(%struct.page* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %83

47:                                               ; preds = %42
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call %struct.buffer_head* @page_buffers(%struct.page* %48)
  store %struct.buffer_head* %49, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %49, %struct.buffer_head** %10, align 8
  br label %50

50:                                               ; preds = %78, %47
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %89

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %68 = call i32 @gfs2_discard(%struct.gfs2_sbd* %66, %struct.buffer_head* %67)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %12, align 8
  %75 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %76 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %75, i32 0, i32 1
  %77 = load %struct.buffer_head*, %struct.buffer_head** %76, align 8
  store %struct.buffer_head* %77, %struct.buffer_head** %10, align 8
  br label %78

78:                                               ; preds = %69
  %79 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %81 = icmp ne %struct.buffer_head* %79, %80
  br i1 %81, label %50, label %82

82:                                               ; preds = %78
  br label %83

83:                                               ; preds = %82, %46
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.page*, %struct.page** %4, align 8
  %88 = call i32 @try_to_release_page(%struct.page* %87, i32 0)
  br label %89

89:                                               ; preds = %59, %86, %83
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @gfs2_discard(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
