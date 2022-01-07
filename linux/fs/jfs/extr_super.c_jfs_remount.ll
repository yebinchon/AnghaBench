; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_remount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_super.c_jfs_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"JFS: resize requires volume to be mounted read-write\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@JFS_NOINTEGRITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @jfs_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = call i32 @sync_filesystem(%struct.super_block* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i32 @parse_options(i8* %18, %struct.super_block* %19, i64* %8, i32* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %139

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = call i64 @sb_rdonly(%struct.super_block* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EROFS, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %139

36:                                               ; preds = %28
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @jfs_extendfs(%struct.super_block* %37, i64 %38, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %139

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call i64 @sb_rdonly(%struct.super_block* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SB_RDONLY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %49
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @truncate_inode_pages(i32 %61, i32 0)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.super_block*, %struct.super_block** %5, align 8
  %65 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.super_block*, %struct.super_block** %5, align 8
  %68 = call i32 @jfs_mount_rw(%struct.super_block* %67, i32 1)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @SB_RDONLY, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = call i32 @dquot_resume(%struct.super_block* %75, i32 -1)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %139

78:                                               ; preds = %49, %45
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = call i64 @sb_rdonly(%struct.super_block* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SB_RDONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load %struct.super_block*, %struct.super_block** %5, align 8
  %90 = call i32 @dquot_suspend(%struct.super_block* %89, i32 -1)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %139

95:                                               ; preds = %88
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = call i32 @jfs_umount_rw(%struct.super_block* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.super_block*, %struct.super_block** %5, align 8
  %100 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %139

103:                                              ; preds = %82, %78
  %104 = load %struct.super_block*, %struct.super_block** %5, align 8
  %105 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %104)
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %103
  %115 = load %struct.super_block*, %struct.super_block** %5, align 8
  %116 = call i64 @sb_rdonly(%struct.super_block* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %114
  %119 = load %struct.super_block*, %struct.super_block** %5, align 8
  %120 = call i32 @jfs_umount_rw(%struct.super_block* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %139

125:                                              ; preds = %118
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.super_block*, %struct.super_block** %5, align 8
  %128 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.super_block*, %struct.super_block** %5, align 8
  %131 = call i32 @jfs_mount_rw(%struct.super_block* %130, i32 1)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %4, align 4
  br label %139

133:                                              ; preds = %114
  br label %134

134:                                              ; preds = %133, %103
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.super_block*, %struct.super_block** %5, align 8
  %137 = call %struct.TYPE_4__* @JFS_SBI(%struct.super_block* %136)
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %134, %125, %123, %95, %93, %55, %42, %32, %22
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_4__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @sync_filesystem(%struct.super_block*) #1

declare dso_local i32 @parse_options(i8*, %struct.super_block*, i64*, i32*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @jfs_extendfs(%struct.super_block*, i64, i32) #1

declare dso_local i32 @truncate_inode_pages(i32, i32) #1

declare dso_local i32 @jfs_mount_rw(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_resume(%struct.super_block*, i32) #1

declare dso_local i32 @dquot_suspend(%struct.super_block*, i32) #1

declare dso_local i32 @jfs_umount_rw(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
