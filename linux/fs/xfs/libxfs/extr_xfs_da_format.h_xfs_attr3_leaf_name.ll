; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.h_xfs_attr3_leaf_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.h_xfs_attr3_leaf_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_attr_leaf_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @xfs_attr3_leaf_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xfs_attr3_leaf_name(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_attr_leaf_entry*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32* %6)
  store %struct.xfs_attr_leaf_entry* %7, %struct.xfs_attr_leaf_entry** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %10, i64 %12
  %14 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be16_to_cpu(i32 %15)
  %17 = getelementptr inbounds i8, i8* %9, i64 %16
  ret i8* %17
}

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(i32*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
