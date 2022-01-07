; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_sanitize_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_file.c_fat_sanitize_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdos_sb_info*, %struct.inode*, i32*)* @fat_sanitize_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_sanitize_mode(%struct.msdos_sb_info* %0, %struct.inode* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISREG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S_IFMT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @S_IRUGO, align 4
  %35 = load i32, i32* @S_IXUGO, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load i32, i32* @S_IXUGO, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %37, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %91

49:                                               ; preds = %25
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i64 @fat_mode_can_hold_ro(%struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @S_IWUGO, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @S_IWUGO, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @S_IWUGO, align 4
  %63 = load i32, i32* %8, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @EPERM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %91

70:                                               ; preds = %58, %53
  br label %84

71:                                               ; preds = %49
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @S_IWUGO, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @S_IWUGO, align 4
  %76 = load i32, i32* %8, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EPERM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %91

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %70
  %85 = load i32, i32* @S_IFMT, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %85, %86
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %87
  store i32 %90, i32* %88, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %84, %80, %67, %46
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @fat_mode_can_hold_ro(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
