; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.qnx6_sb_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @qnx6_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qnx6_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.qnx6_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %4)
  store %struct.qnx6_sb_info* %5, %struct.qnx6_sb_info** %3, align 8
  %6 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @brelse(i32 %8)
  %10 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iput(i32 %12)
  %14 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @iput(i32 %16)
  %18 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %3, align 8
  %19 = call i32 @kfree(%struct.qnx6_sb_info* %18)
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @kfree(%struct.qnx6_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
