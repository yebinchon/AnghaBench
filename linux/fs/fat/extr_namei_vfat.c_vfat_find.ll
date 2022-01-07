; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.fat_slot_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.fat_slot_info*)* @vfat_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_find(%struct.inode* %0, %struct.qstr* %1, %struct.fat_slot_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.fat_slot_info*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.fat_slot_info* %2, %struct.fat_slot_info** %7, align 8
  %9 = load %struct.qstr*, %struct.qstr** %6, align 8
  %10 = call i32 @vfat_striptail_len(%struct.qstr* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.fat_slot_info*, %struct.fat_slot_info** %7, align 8
  %23 = call i32 @fat_search_long(%struct.inode* %17, i32 %20, i32 %21, %struct.fat_slot_info* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @vfat_striptail_len(%struct.qstr*) #1

declare dso_local i32 @fat_search_long(%struct.inode*, i32, i32, %struct.fat_slot_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
