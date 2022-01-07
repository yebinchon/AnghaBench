; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_ipu_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_submit_ipu_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.bio = type { i32 }
%struct.page = type { i32 }

@DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.bio**, %struct.page*)* @f2fs_submit_ipu_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f2fs_submit_ipu_bio(%struct.f2fs_sb_info* %0, %struct.bio** %1, %struct.page* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.bio**, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store %struct.bio** %1, %struct.bio*** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %7 = load %struct.bio**, %struct.bio*** %5, align 8
  %8 = icmp ne %struct.bio** %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %24

10:                                               ; preds = %3
  %11 = load %struct.bio**, %struct.bio*** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i32 @__has_merged_page(%struct.bio* %12, i32* null, %struct.page* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %24

17:                                               ; preds = %10
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %19 = load %struct.bio**, %struct.bio*** %5, align 8
  %20 = load %struct.bio*, %struct.bio** %19, align 8
  %21 = load i32, i32* @DATA, align 4
  %22 = call i32 @__submit_bio(%struct.f2fs_sb_info* %18, %struct.bio* %20, i32 %21)
  %23 = load %struct.bio**, %struct.bio*** %5, align 8
  store %struct.bio* null, %struct.bio** %23, align 8
  br label %24

24:                                               ; preds = %17, %16, %9
  ret void
}

declare dso_local i32 @__has_merged_page(%struct.bio*, i32*, %struct.page*, i32) #1

declare dso_local i32 @__submit_bio(%struct.f2fs_sb_info*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
