; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_ubifs_shrink_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_ubifs_shrink_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrinker = type { i32 }
%struct.shrink_control = type { i32 }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ubifs_shrink_count(%struct.shrinker* %0, %struct.shrink_control* %1) #0 {
  %3 = alloca %struct.shrinker*, align 8
  %4 = alloca %struct.shrink_control*, align 8
  %5 = alloca i64, align 8
  store %struct.shrinker* %0, %struct.shrinker** %3, align 8
  store %struct.shrink_control* %1, %struct.shrink_control** %4, align 8
  %6 = call i64 @atomic_long_read(i32* @ubifs_clean_zn_cnt)
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i64 [ %10, %9 ], [ 1, %11 ]
  ret i64 %13
}

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
