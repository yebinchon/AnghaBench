; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.ubi_volume_desc = type { i64, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.super_block = type { i64, i32, %struct.ubifs_info* }

@.str = private unnamed_addr constant [19 x i8] c"name %s, flags %#x\00", align 1
@UBI_READONLY = common dso_local global i32 0, align 4
@SB_SILENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"UBIFS error (pid: %d): cannot open \22%s\22, error %d\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"opened ubi%d_%d\00", align 1
@sb_test = common dso_local global i32 0, align 4
@sb_set = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"this ubi volume is already mounted\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@CONFIG_UBIFS_ATIME_SUPPORT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"full atime support is enabled.\00", align 1
@SB_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @ubifs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ubifs_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubi_volume_desc*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_info*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @UBI_READONLY, align 4
  %20 = call %struct.ubi_volume_desc* @open_ubi(i8* %18, i32 %19)
  store %struct.ubi_volume_desc* %20, %struct.ubi_volume_desc** %10, align 8
  %21 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %22 = call i64 @IS_ERR(%struct.ubi_volume_desc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SB_SILENT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %35 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %34)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %32, i8* %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %39 = call %struct.dentry* @ERR_CAST(%struct.ubi_volume_desc* %38)
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  br label %153

40:                                               ; preds = %4
  %41 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %42 = call %struct.ubifs_info* @alloc_ubifs_info(%struct.ubi_volume_desc* %41)
  store %struct.ubifs_info* %42, %struct.ubifs_info** %11, align 8
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %44 = icmp ne %struct.ubifs_info* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %148

48:                                               ; preds = %40
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %56)
  %58 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %59 = load i32, i32* @sb_test, align 4
  %60 = load i32, i32* @sb_set, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %63 = call %struct.ubi_volume_desc* @sget(%struct.file_system_type* %58, i32 %59, i32 %60, i32 %61, %struct.ubifs_info* %62)
  %64 = bitcast %struct.ubi_volume_desc* %63 to %struct.super_block*
  store %struct.super_block* %64, %struct.super_block** %12, align 8
  %65 = load %struct.super_block*, %struct.super_block** %12, align 8
  %66 = bitcast %struct.super_block* %65 to %struct.ubi_volume_desc*
  %67 = call i64 @IS_ERR(%struct.ubi_volume_desc* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %48
  %70 = load %struct.super_block*, %struct.super_block** %12, align 8
  %71 = bitcast %struct.super_block* %70 to %struct.ubi_volume_desc*
  %72 = call i32 @PTR_ERR(%struct.ubi_volume_desc* %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %74 = call i32 @kfree(%struct.ubifs_info* %73)
  br label %148

75:                                               ; preds = %48
  %76 = load %struct.super_block*, %struct.super_block** %12, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %75
  %81 = load %struct.super_block*, %struct.super_block** %12, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 2
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %82, align 8
  store %struct.ubifs_info* %83, %struct.ubifs_info** %14, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %85 = call i32 @kfree(%struct.ubifs_info* %84)
  %86 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @SB_RDONLY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %14, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %93, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %80
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %13, align 4
  br label %144

101:                                              ; preds = %80
  br label %137

102:                                              ; preds = %75
  %103 = load %struct.super_block*, %struct.super_block** %12, align 8
  %104 = bitcast %struct.super_block* %103 to %struct.ubi_volume_desc*
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @SB_SILENT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = call i32 @ubifs_fill_super(%struct.ubi_volume_desc* %104, i8* %105, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %117 = call i32 @kfree(%struct.ubifs_info* %116)
  br label %144

118:                                              ; preds = %102
  %119 = load i32, i32* @SB_ACTIVE, align 4
  %120 = load %struct.super_block*, %struct.super_block** %12, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @CONFIG_UBIFS_ATIME_SUPPORT, align 4
  %125 = call i64 @IS_ENABLED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %129 = call i32 @ubifs_msg(%struct.ubifs_info* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %136

130:                                              ; preds = %118
  %131 = load i32, i32* @SB_NOATIME, align 4
  %132 = load %struct.super_block*, %struct.super_block** %12, align 8
  %133 = getelementptr inbounds %struct.super_block, %struct.super_block* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %127
  br label %137

137:                                              ; preds = %136, %101
  %138 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %139 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %138)
  %140 = load %struct.super_block*, %struct.super_block** %12, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call %struct.dentry* @dget(i64 %142)
  store %struct.dentry* %143, %struct.dentry** %5, align 8
  br label %153

144:                                              ; preds = %115, %98
  %145 = load %struct.super_block*, %struct.super_block** %12, align 8
  %146 = bitcast %struct.super_block* %145 to %struct.ubi_volume_desc*
  %147 = call i32 @deactivate_locked_super(%struct.ubi_volume_desc* %146)
  br label %148

148:                                              ; preds = %144, %69, %45
  %149 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %10, align 8
  %150 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %149)
  %151 = load i32, i32* %13, align 4
  %152 = call %struct.dentry* @ERR_PTR(i32 %151)
  store %struct.dentry* %152, %struct.dentry** %5, align 8
  br label %153

153:                                              ; preds = %148, %137, %37
  %154 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %154
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local %struct.ubi_volume_desc* @open_ubi(i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_volume_desc*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_volume_desc*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.ubi_volume_desc*) #1

declare dso_local %struct.ubifs_info* @alloc_ubifs_info(%struct.ubi_volume_desc*) #1

declare dso_local %struct.ubi_volume_desc* @sget(%struct.file_system_type*, i32, i32, i32, %struct.ubifs_info*) #1

declare dso_local i32 @kfree(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_fill_super(%struct.ubi_volume_desc*, i8*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @ubi_close_volume(%struct.ubi_volume_desc*) #1

declare dso_local %struct.dentry* @dget(i64) #1

declare dso_local i32 @deactivate_locked_super(%struct.ubi_volume_desc*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
