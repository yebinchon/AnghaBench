; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_swap.c_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hib_bio_batch = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.hib_bio_batch*)* @write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_page(i8* %0, i32 %1, %struct.hib_bio_batch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hib_bio_batch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hib_bio_batch* %2, %struct.hib_bio_batch** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %7, align 8
  %17 = icmp ne %struct.hib_bio_batch* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = load i32, i32* @GFP_NOIO, align 4
  %20 = load i32, i32* @__GFP_NOWARN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @__GFP_NORETRY, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @__get_free_page(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @copy_page(i8* %29, i8* %30)
  br label %57

32:                                               ; preds = %18
  %33 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %7, align 8
  %34 = call i32 @hib_wait_io(%struct.hib_bio_batch* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %67

39:                                               ; preds = %32
  %40 = load i32, i32* @GFP_NOIO, align 4
  %41 = load i32, i32* @__GFP_NOWARN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_NORETRY, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @__get_free_page(i32 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @copy_page(i8* %50, i8* %51)
  br label %56

53:                                               ; preds = %39
  %54 = call i32 @WARN_ON_ONCE(i32 1)
  store %struct.hib_bio_batch* null, %struct.hib_bio_batch** %7, align 8
  %55 = load i8*, i8** %5, align 8
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %53, %49
  br label %57

57:                                               ; preds = %56, %28
  br label %60

58:                                               ; preds = %15
  %59 = load i8*, i8** %5, align 8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = load i32, i32* @REQ_OP_WRITE, align 4
  %62 = load i32, i32* @REQ_SYNC, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.hib_bio_batch*, %struct.hib_bio_batch** %7, align 8
  %66 = call i32 @hib_submit_io(i32 %61, i32 %62, i32 %63, i8* %64, %struct.hib_bio_batch* %65)
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %37, %12
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @hib_wait_io(%struct.hib_bio_batch*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @hib_submit_io(i32, i32, i32, i8*, %struct.hib_bio_batch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
