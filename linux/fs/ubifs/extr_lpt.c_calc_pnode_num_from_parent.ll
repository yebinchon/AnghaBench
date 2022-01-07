; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_calc_pnode_num_from_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_calc_pnode_num_from_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_nnode = type { i32 }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_nnode*, i32)* @calc_pnode_num_from_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pnode_num_from_parent(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %35, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
