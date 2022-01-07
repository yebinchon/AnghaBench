; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fat_slot_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.msdos_sb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, %struct.fat_slot_info*)* @msdos_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_find(%struct.inode* %0, i8* %1, i32 %2, %struct.fat_slot_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fat_slot_info*, align 8
  %10 = alloca %struct.msdos_sb_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fat_slot_info* %3, %struct.fat_slot_info** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %17)
  store %struct.msdos_sb_info* %18, %struct.msdos_sb_info** %10, align 8
  %19 = load i32, i32* @MSDOS_NAME, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %26 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %25, i32 0, i32 0
  %27 = call i32 @msdos_format_name(i8* %23, i32 %24, i8* %22, %struct.TYPE_4__* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %88

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.fat_slot_info*, %struct.fat_slot_info** %9, align 8
  %36 = call i32 @fat_scan(%struct.inode* %34, i8* %22, %struct.fat_slot_info* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %86, label %39

39:                                               ; preds = %33
  %40 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %41 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.fat_slot_info*, %struct.fat_slot_info** %9, align 8
  %53 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ATTR_HIDDEN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %51
  br label %77

64:                                               ; preds = %45
  %65 = load %struct.fat_slot_info*, %struct.fat_slot_info** %9, align 8
  %66 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ATTR_HIDDEN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %64
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.fat_slot_info*, %struct.fat_slot_info** %9, align 8
  %82 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @brelse(i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %39, %33
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %88

88:                                               ; preds = %86, %30
  %89 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @fat_scan(%struct.inode*, i8*, %struct.fat_slot_info*) #1

declare dso_local i32 @brelse(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
