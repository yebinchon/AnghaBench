; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_pool_index.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_pool_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SG_CHUNK_SIZE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @sg_pool_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_pool_index(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %4 = load i16, i16* %2, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @SG_CHUNK_SIZE, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp sgt i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i16, i16* %2, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp sle i32 %12, 8
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i16, i16* %2, align 2
  %17 = call i32 @get_count_order(i16 zeroext %16)
  %18 = sub nsw i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_count_order(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
