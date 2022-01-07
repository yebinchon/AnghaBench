; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h__ubh_isblockset_.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h__ubh_isblockset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32, i32)* @_ubh_isblockset_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ubh_isblockset_(%struct.ufs_sb_private_info* %0, %struct.ufs_buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.ufs_buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %6, align 8
  store %struct.ufs_buffer_head* %1, %struct.ufs_buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %12 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %73 [
    i32 8, label %14
    i32 4, label %23
    i32 2, label %40
    i32 1, label %57
  ]

14:                                               ; preds = %4
  %15 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add i32 %16, %17
  %19 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %15, i32 %18)
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 255
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %74

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 1
  %26 = shl i32 %25, 2
  %27 = shl i32 15, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = lshr i32 %30, 1
  %32 = add i32 %29, %31
  %33 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %28, i32 %32)
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 3
  %43 = shl i32 %42, 1
  %44 = shl i32 3, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = lshr i32 %47, 2
  %49 = add i32 %46, %48
  %50 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %45, i32 %49)
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 7
  %60 = shl i32 1, %59
  store i32 %60, i32* %10, align 4
  %61 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = lshr i32 %63, 3
  %65 = add i32 %62, %64
  %66 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %61, i32 %65)
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %57, %40, %23, %14
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32* @ubh_get_addr(%struct.ufs_buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
