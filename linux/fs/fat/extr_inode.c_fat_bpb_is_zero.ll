; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_bpb_is_zero.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_bpb_is_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_boot_sector = type { i64, i64, i64, i64, i32, i32, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fat_boot_sector*)* @fat_bpb_is_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_bpb_is_zero(%struct.fat_boot_sector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fat_boot_sector*, align 8
  store %struct.fat_boot_sector* %0, %struct.fat_boot_sector** %3, align 8
  %4 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %5 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %4, i32 0, i32 9
  %6 = call i64 @get_unaligned_le16(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

9:                                                ; preds = %1
  %10 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %11 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %10, i32 0, i32 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %9
  %16 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %17 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %64

21:                                               ; preds = %15
  %22 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %23 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %64

27:                                               ; preds = %21
  %28 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %29 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %28, i32 0, i32 5
  %30 = call i64 @get_unaligned_le16(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %64

33:                                               ; preds = %27
  %34 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %35 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %34, i32 0, i32 4
  %36 = call i64 @get_unaligned_le16(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %64

39:                                               ; preds = %33
  %40 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %41 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %64

45:                                               ; preds = %39
  %46 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %47 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %45
  %52 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %53 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %64

57:                                               ; preds = %51
  %58 = load %struct.fat_boot_sector*, %struct.fat_boot_sector** %3, align 8
  %59 = getelementptr inbounds %struct.fat_boot_sector, %struct.fat_boot_sector* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %64

63:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %56, %50, %44, %38, %32, %26, %20, %14, %8
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
