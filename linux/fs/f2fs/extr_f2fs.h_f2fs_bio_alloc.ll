; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_bio_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_bio_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.f2fs_sb_info = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@FAULT_ALLOC_BIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.f2fs_sb_info*, i32, i32)* @f2fs_bio_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @f2fs_bio_alloc(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.bio* @bio_alloc(i32 %12, i32 %13)
  store %struct.bio* %14, %struct.bio** %8, align 8
  %15 = load %struct.bio*, %struct.bio** %8, align 8
  %16 = icmp ne %struct.bio* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = load i32, i32* @__GFP_NOFAIL, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.bio* @bio_alloc(i32 %20, i32 %21)
  store %struct.bio* %22, %struct.bio** %8, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.bio*, %struct.bio** %8, align 8
  store %struct.bio* %24, %struct.bio** %4, align 8
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %27 = load i32, i32* @FAULT_ALLOC_BIO, align 4
  %28 = call i64 @time_to_inject(%struct.f2fs_sb_info* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @FAULT_ALLOC_BIO, align 4
  %32 = call i32 @f2fs_show_injection_info(i32 %31)
  store %struct.bio* null, %struct.bio** %4, align 8
  br label %37

33:                                               ; preds = %25
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.bio* @bio_alloc(i32 %34, i32 %35)
  store %struct.bio* %36, %struct.bio** %4, align 8
  br label %37

37:                                               ; preds = %33, %30, %23
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  ret %struct.bio* %38
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
