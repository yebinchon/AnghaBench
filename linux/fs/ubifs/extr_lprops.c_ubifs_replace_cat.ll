; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_replace_cat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_replace_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_lprops = type { i32, i32 }

@LPROPS_CAT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_replace_cat(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1, %struct.ubifs_lprops* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  %6 = alloca %struct.ubifs_lprops*, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  store %struct.ubifs_lprops* %2, %struct.ubifs_lprops** %6, align 8
  %8 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %9 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @LPROPS_CAT_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %25 [
    i32 134, label %14
    i32 133, label %14
    i32 130, label %14
    i32 128, label %19
    i32 132, label %19
    i32 129, label %19
    i32 131, label %19
  ]

14:                                               ; preds = %3, %3, %3
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %16 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @lpt_heap_replace(%struct.ubifs_info* %15, %struct.ubifs_lprops* %16, i32 %17)
  br label %28

19:                                               ; preds = %3, %3, %3, %3
  %20 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %21 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %20, i32 0, i32 1
  %22 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %22, i32 0, i32 1
  %24 = call i32 @list_replace(i32* %21, i32* %23)
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = call i32 @ubifs_assert(%struct.ubifs_info* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %19, %14
  ret void
}

declare dso_local i32 @lpt_heap_replace(%struct.ubifs_info*, %struct.ubifs_lprops*, i32) #1

declare dso_local i32 @list_replace(i32*, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
