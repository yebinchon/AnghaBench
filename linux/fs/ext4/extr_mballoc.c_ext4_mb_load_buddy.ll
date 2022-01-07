; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_load_buddy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_ext4_mb_load_buddy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_buddy = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.ext4_buddy*)* @ext4_mb_load_buddy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_load_buddy(%struct.super_block* %0, i32 %1, %struct.ext4_buddy* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_buddy*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_buddy* %2, %struct.ext4_buddy** %6, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call i32 @ext4_mb_load_buddy_gfp(%struct.super_block* %7, i32 %8, %struct.ext4_buddy* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @ext4_mb_load_buddy_gfp(%struct.super_block*, i32, %struct.ext4_buddy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
