; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.buffer_head = type { i32, %struct.buffer_head* }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_invalidatepage(i32* %0, %struct.page* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %19, %20
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br label %28

28:                                               ; preds = %24, %4
  %29 = phi i1 [ true, %4 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = call i32 @PageLocked(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i32 @page_has_buffers(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %115

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ult i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i1 [ true, %41 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.page*, %struct.page** %7, align 8
  %54 = call %struct.buffer_head* @page_buffers(%struct.page* %53)
  store %struct.buffer_head* %54, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %54, %struct.buffer_head** %10, align 8
  br label %55

55:                                               ; preds = %92, %49
  %56 = load i32, i32* %14, align 4
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add i32 %56, %59
  store i32 %60, i32* %18, align 4
  %61 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 1
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  store %struct.buffer_head* %63, %struct.buffer_head** %12, align 8
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %115

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ule i32 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %68
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = call i32 @lock_buffer(%struct.buffer_head* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @journal_unmap_buffer(i32* %75, %struct.buffer_head* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %80 = call i32 @unlock_buffer(%struct.buffer_head* %79)
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %5, align 4
  br label %115

85:                                               ; preds = %72
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %68
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %14, align 4
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %91, %struct.buffer_head** %11, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %95 = icmp ne %struct.buffer_head* %93, %94
  br i1 %95, label %55, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load %struct.page*, %struct.page** %7, align 8
  %104 = call i64 @try_to_free_buffers(%struct.page* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.page*, %struct.page** %7, align 8
  %108 = call i32 @page_has_buffers(%struct.page* %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @J_ASSERT(i32 %111)
  br label %113

113:                                              ; preds = %106, %102, %99
  br label %114

114:                                              ; preds = %113, %96
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %83, %67, %40
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @journal_unmap_buffer(i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @try_to_free_buffers(%struct.page*) #1

declare dso_local i32 @J_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
