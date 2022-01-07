; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_li_request_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_li_request_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_li_request = type { i64, i32, %struct.ext4_sb_info*, %struct.super_block* }
%struct.ext4_sb_info = type { i32 }
%struct.super_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EXT4_DEF_LI_MAX_START_DELAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext4_li_request* (%struct.super_block*, i32)* @ext4_li_request_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext4_li_request* @ext4_li_request_new(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ext4_li_request*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.ext4_li_request*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %8)
  store %struct.ext4_sb_info* %9, %struct.ext4_sb_info** %6, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ext4_li_request* @kzalloc(i32 32, i32 %10)
  store %struct.ext4_li_request* %11, %struct.ext4_li_request** %7, align 8
  %12 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %13 = icmp ne %struct.ext4_li_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.ext4_li_request* null, %struct.ext4_li_request** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %18 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %17, i32 0, i32 3
  store %struct.super_block* %16, %struct.super_block** %18, align 8
  %19 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %20 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %21 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %20, i32 0, i32 2
  store %struct.ext4_sb_info* %19, %struct.ext4_sb_info** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %24 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* @jiffies, align 8
  %26 = call i32 (...) @prandom_u32()
  %27 = load i32, i32* @EXT4_DEF_LI_MAX_START_DELAY, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = srem i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  %33 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  %34 = getelementptr inbounds %struct.ext4_li_request, %struct.ext4_li_request* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ext4_li_request*, %struct.ext4_li_request** %7, align 8
  store %struct.ext4_li_request* %35, %struct.ext4_li_request** %3, align 8
  br label %36

36:                                               ; preds = %15, %14
  %37 = load %struct.ext4_li_request*, %struct.ext4_li_request** %3, align 8
  ret %struct.ext4_li_request* %37
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_li_request* @kzalloc(i32, i32) #1

declare dso_local i32 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
