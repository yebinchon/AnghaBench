; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_remount_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"old flags %#lx, new flags %#x\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid or unknown remount parameter\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/W due to prior errors\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/W - UBI volume is R/O\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"cannot re-mount R/O due to prior errors\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"disable bulk-read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @ubifs_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 1
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  store %struct.ubifs_info* %12, %struct.ubifs_info** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call i32 @sync_filesystem(%struct.super_block* %13)
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @ubifs_parse_options(%struct.ubifs_info* %21, i8* %22, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %28 = call i32 @ubifs_err(%struct.ubifs_info* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %133

30:                                               ; preds = %3
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SB_RDONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %35
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %48 = call i32 @ubifs_msg(%struct.ubifs_info* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EROFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %133

51:                                               ; preds = %41
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %58 = call i32 @ubifs_msg(%struct.ubifs_info* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EROFS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %133

61:                                               ; preds = %51
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %63 = call i32 @ubifs_remount_rw(%struct.ubifs_info* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %133

68:                                               ; preds = %61
  br label %94

69:                                               ; preds = %35, %30
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SB_RDONLY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %87 = call i32 @ubifs_msg(%struct.ubifs_info* %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i32, i32* @EROFS, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %133

90:                                               ; preds = %80
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %92 = call i32 @ubifs_remount_ro(%struct.ubifs_info* %91)
  br label %93

93:                                               ; preds = %90, %74, %69
  br label %94

94:                                               ; preds = %93, %68
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %101 = call i32 @bu_init(%struct.ubifs_info* %100)
  br label %118

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 3
  %106 = call i32 @mutex_lock(i32* %105)
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @kfree(i32* %110)
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32* null, i32** %114, align 8
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 3
  %117 = call i32 @mutex_unlock(i32* %116)
  br label %118

118:                                              ; preds = %102, %99
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %132, label %123

123:                                              ; preds = %118
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ubifs_assert(%struct.ubifs_info* %124, i32 %130)
  br label %132

132:                                              ; preds = %123, %118
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %85, %66, %56, %46, %26
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @ubifs_parse_options(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubifs_remount_rw(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_remount_ro(%struct.ubifs_info*) #1

declare dso_local i32 @bu_init(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
