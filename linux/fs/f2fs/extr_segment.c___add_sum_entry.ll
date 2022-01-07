; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___add_sum_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___add_sum_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_summary = type { i32 }
%struct.curseg_info = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, %struct.f2fs_summary*)* @__add_sum_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__add_sum_entry(%struct.f2fs_sb_info* %0, i32 %1, %struct.f2fs_summary* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_summary*, align 8
  %7 = alloca %struct.curseg_info*, align 8
  %8 = alloca i8*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.f2fs_summary* %2, %struct.f2fs_summary** %6, align 8
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %9, i32 %10)
  store %struct.curseg_info* %11, %struct.curseg_info** %7, align 8
  %12 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %13 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.curseg_info*, %struct.curseg_info** %7, align 8
  %16 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr i8, i8* %20, i64 %19
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.f2fs_summary*, %struct.f2fs_summary** %6, align 8
  %24 = call i32 @memcpy(i8* %22, %struct.f2fs_summary* %23, i32 4)
  ret void
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.f2fs_summary*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
