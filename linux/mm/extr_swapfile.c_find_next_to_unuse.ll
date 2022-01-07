; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_find_next_to_unuse.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_find_next_to_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32* }

@SWAP_MAP_BAD = common dso_local global i64 0, align 8
@LATENCY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, i32, i32)* @find_next_to_unuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_to_unuse(%struct.swap_info_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, 1
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %14 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %19 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i8 @READ_ONCE(i32 %24)
  store i8 %25, i8* %8, align 1
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load i8, i8* %8, align 1
  %31 = call i64 @swap_count(i8 zeroext %30)
  %32 = load i64, i64* @SWAP_MAP_BAD, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @frontswap_test(%struct.swap_info_struct* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %34
  br label %55

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %29, %17
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LATENCY_LIMIT, align 4
  %47 = urem i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @cond_resched()
  br label %51

51:                                               ; preds = %49, %44
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %11

55:                                               ; preds = %42, %11
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %58 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local zeroext i8 @READ_ONCE(i32) #1

declare dso_local i64 @swap_count(i8 zeroext) #1

declare dso_local i64 @frontswap_test(%struct.swap_info_struct*, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
