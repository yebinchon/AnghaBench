; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_find_order_for_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_find_order_for_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_buddy*, i32)* @mb_find_order_for_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_find_order_for_block(%struct.ext4_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %9 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %10 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %15 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %18 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 3
  %28 = shl i32 1, %27
  %29 = icmp sge i32 %23, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %33 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  br label %35

35:                                               ; preds = %51, %2
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = icmp sle i32 %36, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @mb_test_bit(i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %35

60:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mb_test_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
