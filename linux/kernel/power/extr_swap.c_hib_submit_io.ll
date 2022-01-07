; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_hib_submit_io.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_hib_submit_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hib_bio_batch = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { %struct.hib_bio_batch*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_HIGH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@hib_resume_bdev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Adding page to bio failed at %llu\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@hib_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, %struct.hib_bio_batch*)* @hib_submit_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hib_submit_io(i32 %0, i32 %1, i32 %2, i8* %3, %struct.hib_bio_batch* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hib_bio_batch*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.hib_bio_batch* %4, %struct.hib_bio_batch** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call %struct.page* @virt_to_page(i8* %15)
  store %struct.page* %16, %struct.page** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @GFP_NOIO, align 4
  %18 = load i32, i32* @__GFP_HIGH, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.bio* @bio_alloc(i32 %19, i32 1)
  store %struct.bio* %20, %struct.bio** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = ashr i32 %22, 9
  %24 = mul nsw i32 %21, %23
  %25 = load %struct.bio*, %struct.bio** %13, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bio*, %struct.bio** %13, align 8
  %29 = load i32, i32* @hib_resume_bdev, align 4
  %30 = call i32 @bio_set_dev(%struct.bio* %28, i32 %29)
  %31 = load %struct.bio*, %struct.bio** %13, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @bio_set_op_attrs(%struct.bio* %31, i32 %32, i32 %33)
  %35 = load %struct.bio*, %struct.bio** %13, align 8
  %36 = load %struct.page*, %struct.page** %12, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @bio_add_page(%struct.bio* %35, %struct.page* %36, i32 %37, i32 0)
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %5
  %42 = load %struct.bio*, %struct.bio** %13, align 8
  %43 = getelementptr inbounds %struct.bio, %struct.bio* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.bio*, %struct.bio** %13, align 8
  %49 = call i32 @bio_put(%struct.bio* %48)
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %74

52:                                               ; preds = %5
  %53 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %11, align 8
  %54 = icmp ne %struct.hib_bio_batch* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* @hib_end_io, align 4
  %57 = load %struct.bio*, %struct.bio** %13, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %11, align 8
  %60 = load %struct.bio*, %struct.bio** %13, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 0
  store %struct.hib_bio_batch* %59, %struct.hib_bio_batch** %61, align 8
  %62 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %11, align 8
  %63 = getelementptr inbounds %struct.hib_bio_batch, %struct.hib_bio_batch* %62, i32 0, i32 0
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load %struct.bio*, %struct.bio** %13, align 8
  %66 = call i32 @submit_bio(%struct.bio* %65)
  br label %72

67:                                               ; preds = %52
  %68 = load %struct.bio*, %struct.bio** %13, align 8
  %69 = call i32 @submit_bio_wait(%struct.bio* %68)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.bio*, %struct.bio** %13, align 8
  %71 = call i32 @bio_put(%struct.bio* %70)
  br label %72

72:                                               ; preds = %67, %55
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %41
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
