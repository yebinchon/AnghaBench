; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_make_node_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_make_node_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32, i32)* @make_node_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_node_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %35 [
    i32 129, label %13
    i32 128, label %19
    i32 130, label %25
    i32 131, label %30
  ]

13:                                               ; preds = %5
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @make_nnode_dirty(%struct.ubifs_info* %14, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %38

19:                                               ; preds = %5
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @make_pnode_dirty(%struct.ubifs_info* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  br label %38

25:                                               ; preds = %5
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @make_ltab_dirty(%struct.ubifs_info* %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %38

30:                                               ; preds = %5
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @make_lsave_dirty(%struct.ubifs_info* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30, %25, %19, %13
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @make_nnode_dirty(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @make_pnode_dirty(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @make_ltab_dirty(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @make_lsave_dirty(%struct.ubifs_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
