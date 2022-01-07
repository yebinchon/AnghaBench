; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_hib_end_io.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_hib_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_2__, %struct.hib_bio_batch* }
%struct.TYPE_2__ = type { i64 }
%struct.hib_bio_batch = type { i32, i32, i64 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Read-error on swap-device (%u:%u:%Lu)\0A\00", align 1
@WRITE = common dso_local global i64 0, align 8
@clean_pages_on_read = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @hib_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hib_end_io(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.hib_bio_batch*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 2
  %7 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %6, align 8
  store %struct.hib_bio_batch* %7, %struct.hib_bio_batch** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = call %struct.page* @bio_first_page_all(%struct.bio* %8)
  store %struct.page* %9, %struct.page** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = call i32 @bio_dev(%struct.bio* %15)
  %17 = call i32 @MAJOR(i32 %16)
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = call i32 @bio_dev(%struct.bio* %18)
  %20 = call i32 @MINOR(i32 %19)
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pr_alert(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i64 %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = call i64 @bio_data_dir(%struct.bio* %27)
  %29 = load i64, i64* @WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %4, align 8
  %33 = call i32 @put_page(%struct.page* %32)
  br label %46

34:                                               ; preds = %26
  %35 = load i64, i64* @clean_pages_on_read, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i64 @page_address(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i64 @page_address(%struct.page* %40)
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = add i64 %41, %42
  %44 = call i32 @flush_icache_range(i64 %39, i64 %43)
  br label %45

45:                                               ; preds = %37, %34
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %3, align 8
  %53 = getelementptr inbounds %struct.hib_bio_batch, %struct.hib_bio_batch* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %3, align 8
  %61 = getelementptr inbounds %struct.hib_bio_batch, %struct.hib_bio_batch* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %51, %46
  %63 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %3, align 8
  %64 = getelementptr inbounds %struct.hib_bio_batch, %struct.hib_bio_batch* %63, i32 0, i32 1
  %65 = call i64 @atomic_dec_and_test(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %3, align 8
  %69 = getelementptr inbounds %struct.hib_bio_batch, %struct.hib_bio_batch* %68, i32 0, i32 0
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = call i32 @bio_put(%struct.bio* %72)
  ret void
}

declare dso_local %struct.page* @bio_first_page_all(%struct.bio*) #1

declare dso_local i32 @pr_alert(i8*, i32, i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @bio_dev(%struct.bio*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
