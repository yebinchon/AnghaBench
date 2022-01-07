; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.nilfs_super_data = type { i32, %struct.super_block*, i64 }
%struct.super_block = type { i64, i32, i32, i32, i32, i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@nilfs_test_bdev_super = common dso_local global i32 0, align 4
@nilfs_set_bdev_super = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pg\00", align 1
@SB_SILENT = common dso_local global i32 0, align 4
@SB_ACTIVE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"the device already has a %s mount.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"read/write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @nilfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @nilfs_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nilfs_super_data, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* @FMODE_READ, align 4
  %17 = load i32, i32* @FMODE_EXCL, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SB_RDONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = load i32, i32* %12, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %31 = call %struct.super_block* @blkdev_get_by_path(i8* %28, i32 %29, %struct.file_system_type* %30)
  %32 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  store %struct.super_block* %31, %struct.super_block** %32, align 8
  %33 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %34 = load %struct.super_block*, %struct.super_block** %33, align 8
  %35 = call i64 @IS_ERR(%struct.super_block* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %39 = load %struct.super_block*, %struct.super_block** %38, align 8
  %40 = call %struct.dentry* @ERR_CAST(%struct.super_block* %39)
  store %struct.dentry* %40, %struct.dentry** %5, align 8
  br label %207

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @nilfs_identify(i8* %45, %struct.nilfs_super_data* %10)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %196

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %53 = load %struct.super_block*, %struct.super_block** %52, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 5
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %57 = load %struct.super_block*, %struct.super_block** %56, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %63 = load %struct.super_block*, %struct.super_block** %62, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 5
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %196

68:                                               ; preds = %51
  %69 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %70 = load i32, i32* @nilfs_test_bdev_super, align 4
  %71 = load i32, i32* @nilfs_set_bdev_super, align 4
  %72 = load i32, i32* %7, align 4
  %73 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %74 = load %struct.super_block*, %struct.super_block** %73, align 8
  %75 = call %struct.super_block* @sget(%struct.file_system_type* %69, i32 %70, i32 %71, i32 %72, %struct.super_block* %74)
  store %struct.super_block* %75, %struct.super_block** %11, align 8
  %76 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %77 = load %struct.super_block*, %struct.super_block** %76, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 5
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.super_block*, %struct.super_block** %11, align 8
  %81 = call i64 @IS_ERR(%struct.super_block* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.super_block*, %struct.super_block** %11, align 8
  %85 = call i32 @PTR_ERR(%struct.super_block* %84)
  store i32 %85, i32* %14, align 4
  br label %196

86:                                               ; preds = %68
  %87 = load %struct.super_block*, %struct.super_block** %11, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %86
  store i32 1, i32* %15, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.super_block*, %struct.super_block** %11, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.super_block*, %struct.super_block** %11, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %99 = load %struct.super_block*, %struct.super_block** %98, align 8
  %100 = call i32 @snprintf(i32 %97, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.super_block* %99)
  %101 = load %struct.super_block*, %struct.super_block** %11, align 8
  %102 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %103 = load %struct.super_block*, %struct.super_block** %102, align 8
  %104 = call i32 @block_size(%struct.super_block* %103)
  %105 = call i32 @sb_set_blocksize(%struct.super_block* %101, i32 %104)
  %106 = load %struct.super_block*, %struct.super_block** %11, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SB_SILENT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 1, i32 0
  %114 = call i32 @nilfs_fill_super(%struct.super_block* %106, i8* %107, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %91
  br label %193

118:                                              ; preds = %91
  %119 = load i32, i32* @SB_ACTIVE, align 4
  %120 = load %struct.super_block*, %struct.super_block** %11, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %165

124:                                              ; preds = %86
  %125 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %164, label %128

128:                                              ; preds = %124
  %129 = load %struct.super_block*, %struct.super_block** %11, align 8
  %130 = getelementptr inbounds %struct.super_block, %struct.super_block* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @nilfs_tree_is_busy(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.super_block*, %struct.super_block** %11, align 8
  %137 = getelementptr inbounds %struct.super_block, %struct.super_block* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %135, %138
  %140 = load i32, i32* @SB_RDONLY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %134
  %144 = load %struct.super_block*, %struct.super_block** %11, align 8
  %145 = load i32, i32* @KERN_ERR, align 4
  %146 = load %struct.super_block*, %struct.super_block** %11, align 8
  %147 = call i64 @sb_rdonly(%struct.super_block* %146)
  %148 = icmp ne i64 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)
  %151 = call i32 @nilfs_msg(%struct.super_block* %144, i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* @EBUSY, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %14, align 4
  br label %193

154:                                              ; preds = %134
  br label %163

155:                                              ; preds = %128
  %156 = load %struct.super_block*, %struct.super_block** %11, align 8
  %157 = load i8*, i8** %9, align 8
  %158 = call i32 @nilfs_remount(%struct.super_block* %156, i32* %7, i8* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %193

162:                                              ; preds = %155
  br label %163

163:                                              ; preds = %162, %154
  br label %164

164:                                              ; preds = %163, %124
  br label %165

165:                                              ; preds = %164, %118
  %166 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load %struct.super_block*, %struct.super_block** %11, align 8
  %171 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @nilfs_attach_snapshot(%struct.super_block* %170, i64 %172, %struct.dentry** %13)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %193

177:                                              ; preds = %169
  br label %183

178:                                              ; preds = %165
  %179 = load %struct.super_block*, %struct.super_block** %11, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call %struct.dentry* @dget(i32 %181)
  store %struct.dentry* %182, %struct.dentry** %13, align 8
  br label %183

183:                                              ; preds = %178, %177
  %184 = load i32, i32* %15, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %188 = load %struct.super_block*, %struct.super_block** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @blkdev_put(%struct.super_block* %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %183
  %192 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %192, %struct.dentry** %5, align 8
  br label %207

193:                                              ; preds = %176, %161, %143, %117
  %194 = load %struct.super_block*, %struct.super_block** %11, align 8
  %195 = call i32 @deactivate_locked_super(%struct.super_block* %194)
  br label %196

196:                                              ; preds = %193, %83, %61, %48
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %10, i32 0, i32 1
  %201 = load %struct.super_block*, %struct.super_block** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 @blkdev_put(%struct.super_block* %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %196
  %205 = load i32, i32* %14, align 4
  %206 = call %struct.dentry* @ERR_PTR(i32 %205)
  store %struct.dentry* %206, %struct.dentry** %5, align 8
  br label %207

207:                                              ; preds = %204, %191, %37
  %208 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %208
}

declare dso_local %struct.super_block* @blkdev_get_by_path(i8*, i32, %struct.file_system_type*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.super_block*) #1

declare dso_local i64 @nilfs_identify(i8*, %struct.nilfs_super_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, i32, %struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.super_block*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @block_size(%struct.super_block*) #1

declare dso_local i32 @nilfs_fill_super(%struct.super_block*, i8*, i32) #1

declare dso_local i64 @nilfs_tree_is_busy(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i8*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @nilfs_remount(%struct.super_block*, i32*, i8*) #1

declare dso_local i32 @nilfs_attach_snapshot(%struct.super_block*, i64, %struct.dentry**) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @blkdev_put(%struct.super_block*, i32) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
