; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_select_gc_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_select_gc_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@BG_GC = common dso_local global i32 0, align 4
@GC_CB = common dso_local global i32 0, align 4
@GC_GREEDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @select_gc_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_gc_type(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @BG_GC, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @GC_CB, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @GC_GREEDY, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  store i32 %14, i32* %5, align 4
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %22 [
    i32 130, label %18
    i32 129, label %20
    i32 128, label %20
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @GC_CB, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %13, %13
  %21 = load i32, i32* @GC_GREEDY, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %13, %20, %18
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
