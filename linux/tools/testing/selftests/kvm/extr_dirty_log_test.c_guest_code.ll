; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/extr_dirty_log_test.c_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/extr_dirty_log_test.c_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@guest_num_pages = common dso_local global i32 0, align 4
@guest_test_virt_mem = common dso_local global i32 0, align 4
@guest_page_size = common dso_local global i32 0, align 4
@iteration = common dso_local global i32 0, align 4
@TEST_PAGES_PER_LOOP = common dso_local global i32 0, align 4
@random_array = common dso_local global i32* null, align 8
@host_page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @guest_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guest_code() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @guest_num_pages, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, i32* @guest_test_virt_mem, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @guest_page_size, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %8, %11
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @iteration, align 4
  %14 = call i32 @READ_ONCE(i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i32*
  store i32 %14, i32* %17, align 4
  br label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %3

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %54
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @TEST_PAGES_PER_LOOP, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i32, i32* @guest_test_virt_mem, align 4
  store i32 %28, i32* %1, align 4
  %29 = load i32*, i32** @random_array, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @READ_ONCE(i32 %33)
  %35 = load i32, i32* @guest_num_pages, align 4
  %36 = srem i32 %34, %35
  %37 = load i32, i32* @guest_page_size, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* @host_page_size, align 4
  %42 = sub nsw i32 %41, 1
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %1, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* @iteration, align 4
  %47 = call i32 @READ_ONCE(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i32*
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %27
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %23

54:                                               ; preds = %23
  %55 = call i32 @GUEST_SYNC(i32 1)
  br label %22
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @GUEST_SYNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
