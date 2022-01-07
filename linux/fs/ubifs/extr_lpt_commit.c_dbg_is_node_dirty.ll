; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_node_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_node_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32)* @dbg_is_node_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_is_node_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %31 [
    i32 129, label %11
    i32 128, label %16
    i32 130, label %21
    i32 131, label %26
  ]

11:                                               ; preds = %4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @dbg_is_nnode_dirty(%struct.ubifs_info* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %32

16:                                               ; preds = %4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dbg_is_pnode_dirty(%struct.ubifs_info* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %32

21:                                               ; preds = %4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @dbg_is_ltab_dirty(%struct.ubifs_info* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @dbg_is_lsave_dirty(%struct.ubifs_info* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %26, %21, %16, %11
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dbg_is_nnode_dirty(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_is_pnode_dirty(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_is_ltab_dirty(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_is_lsave_dirty(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
