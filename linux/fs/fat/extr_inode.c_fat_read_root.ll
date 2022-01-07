; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_read_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_inode.c_fat_read_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.msdos_sb_info = type { i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }

@MSDOS_ROOT_INO = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@fat_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @fat_read_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_read_root(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.msdos_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %8)
  store %struct.msdos_sb_info* %9, %struct.msdos_sb_info** %4, align 8
  %10 = load i32, i32* @MSDOS_ROOT_INO, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 %10, i32* %13, align 8
  %14 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @inode_inc_iversion(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %31 = load i32, i32* @ATTR_DIR, align 4
  %32 = load i32, i32* @S_IRWXUGO, align 4
  %33 = call i32 @fat_make_mode(%struct.msdos_sb_info* %30, i32 %31, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %37 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  store i32* @fat_dir_operations, i32** %42, align 8
  %43 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %44 = call i64 @is_fat32(%struct.msdos_sb_info* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %1
  %47 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %48 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  %53 = load %struct.inode*, %struct.inode** %3, align 8
  %54 = call i32 @fat_calc_dir_size(%struct.inode* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %125

59:                                               ; preds = %46
  br label %72

60:                                               ; preds = %1
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %65 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %60, %59
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %77 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = add nsw i32 %75, %79
  %81 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %4, align 8
  %82 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = xor i32 %84, -1
  %86 = and i32 %80, %85
  %87 = ashr i32 %86, 9
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = call %struct.TYPE_10__* @MSDOS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = load i32, i32* @ATTR_DIR, align 4
  %101 = call i32 @fat_save_attrs(%struct.inode* %99, i32 %100)
  %102 = load %struct.inode*, %struct.inode** %3, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.inode*, %struct.inode** %3, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.inode*, %struct.inode** %3, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i64 0, i64* %116, align 8
  %117 = load %struct.inode*, %struct.inode** %3, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  %120 = load %struct.inode*, %struct.inode** %3, align 8
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = call i64 @fat_subdirs(%struct.inode* %121)
  %123 = add nsw i64 %122, 2
  %124 = call i32 @set_nlink(%struct.inode* %120, i64 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %72, %57
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local %struct.TYPE_10__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local i32 @fat_make_mode(%struct.msdos_sb_info*, i32, i32) #1

declare dso_local i64 @is_fat32(%struct.msdos_sb_info*) #1

declare dso_local i32 @fat_calc_dir_size(%struct.inode*) #1

declare dso_local i32 @fat_save_attrs(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i64) #1

declare dso_local i64 @fat_subdirs(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
