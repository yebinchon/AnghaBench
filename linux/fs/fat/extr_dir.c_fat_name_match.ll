; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_name_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_name_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdos_sb_info*, i8*, i32, i8*, i32)* @fat_name_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_name_match(%struct.msdos_sb_info* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.msdos_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %42

16:                                               ; preds = %5
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 115
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %7, align 8
  %25 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @nls_strnicmp(i32 %26, i8* %27, i8* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %42

34:                                               ; preds = %16
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @memcmp(i8* %35, i8* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %23, %15
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @nls_strnicmp(i32, i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
