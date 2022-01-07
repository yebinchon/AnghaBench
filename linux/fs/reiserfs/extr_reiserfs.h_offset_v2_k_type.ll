; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_offset_v2_k_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_offset_v2_k_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.offset_v2 = type { i32 }

@TYPE_MAXTYPE = common dso_local global i64 0, align 8
@TYPE_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.offset_v2*)* @offset_v2_k_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @offset_v2_k_type(%struct.offset_v2* %0) #0 {
  %2 = alloca %struct.offset_v2*, align 8
  %3 = alloca i64, align 8
  store %struct.offset_v2* %0, %struct.offset_v2** %2, align 8
  %4 = load %struct.offset_v2*, %struct.offset_v2** %2, align 8
  %5 = getelementptr inbounds %struct.offset_v2, %struct.offset_v2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @le64_to_cpu(i32 %6)
  %8 = ashr i32 %7, 60
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @TYPE_MAXTYPE, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @TYPE_ANY, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %14, %13 ], [ %16, %15 ]
  ret i64 %18
}

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
