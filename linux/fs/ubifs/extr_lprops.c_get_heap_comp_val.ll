; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_get_heap_comp_val.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_get_heap_comp_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_lprops*, i32)* @get_heap_comp_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_heap_comp_val(%struct.ubifs_lprops* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_lprops* %0, %struct.ubifs_lprops** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 128, label %7
    i32 129, label %11
  ]

7:                                                ; preds = %2
  %8 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %16 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %21 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %11, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
