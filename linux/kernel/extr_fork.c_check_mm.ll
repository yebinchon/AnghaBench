; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_check_mm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_check_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@resident_page_types = common dso_local global i32* null, align 8
@NR_MM_COUNTERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Please make sure 'struct resident_page_types[]' is updated as well\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"BUG: Bad rss-counter state mm:%p type:%s val:%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"BUG: non-zero pgtables_bytes on freeing mm: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @check_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = load i32*, i32** @resident_page_types, align 8
  %6 = call i32 @ARRAY_SIZE(i32* %5)
  %7 = load i32, i32* @NR_MM_COUNTERS, align 4
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON_MSG(i32 %9, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %37, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NR_MM_COUNTERS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i64 @atomic_long_read(i32* %22)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @unlikely(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %29 = load i32*, i32** @resident_page_types, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i8*, %struct.mm_struct*, ...) @pr_alert(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.mm_struct* %28, i32 %33, i64 %34)
  br label %36

36:                                               ; preds = %27, %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %11

40:                                               ; preds = %11
  %41 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %42 = call i32 @mm_pgtables_bytes(%struct.mm_struct* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %46 = call i32 @mm_pgtables_bytes(%struct.mm_struct* %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.mm_struct*
  %49 = call i32 (i8*, %struct.mm_struct*, ...) @pr_alert(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), %struct.mm_struct* %48)
  br label %50

50:                                               ; preds = %44, %40
  ret void
}

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @pr_alert(i8*, %struct.mm_struct*, ...) #1

declare dso_local i32 @mm_pgtables_bytes(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
