; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_new_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_new_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i32, i64, i32 }
%struct.buffer_head = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, i32, %struct.buffer_head*)* @dio_new_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_new_bio(%struct.dio* %0, %struct.dio_submit* %1, i32 %2, %struct.buffer_head* %3) #0 {
  %5 = alloca %struct.dio*, align 8
  %6 = alloca %struct.dio_submit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dio* %0, %struct.dio** %5, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %12 = load %struct.dio*, %struct.dio** %5, align 8
  %13 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %14 = call i32 @dio_bio_reap(%struct.dio* %12, %struct.dio_submit* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %44

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %21 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 9
  %24 = shl i32 %19, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %26 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BIO_MAX_PAGES, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp sle i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.dio*, %struct.dio** %5, align 8
  %35 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dio_bio_alloc(%struct.dio* %34, %struct.dio_submit* %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.dio_submit*, %struct.dio_submit** %6, align 8
  %43 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %18, %17
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @dio_bio_reap(%struct.dio*, %struct.dio_submit*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dio_bio_alloc(%struct.dio*, %struct.dio_submit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
