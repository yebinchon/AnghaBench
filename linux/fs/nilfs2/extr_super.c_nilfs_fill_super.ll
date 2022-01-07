; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32*, %struct.TYPE_2__*, i32, i32, i32*, i32*, %struct.the_nilfs* }
%struct.TYPE_2__ = type { i32 }
%struct.the_nilfs = type { i32, i32, i32, i32 }
%struct.nilfs_root = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@nilfs_sops = common dso_local global i32 0, align 4
@nilfs_export_ops = common dso_local global i32 0, align 4
@NILFS_LINK_MAX = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"error %d while loading last checkpoint (checkpoint number=%llu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @nilfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca %struct.nilfs_root*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.the_nilfs* @alloc_nilfs(%struct.super_block* %12)
  store %struct.the_nilfs* %13, %struct.the_nilfs** %8, align 8
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %15 = icmp ne %struct.the_nilfs* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 7
  store %struct.the_nilfs* %20, %struct.the_nilfs** %22, align 8
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @init_nilfs(%struct.the_nilfs* %23, %struct.super_block* %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %126

30:                                               ; preds = %19
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 6
  store i32* @nilfs_sops, i32** %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 5
  store i32* @nilfs_export_ops, i32** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* @NILFS_LINK_MAX, align 4
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bdi_get(i32 %46)
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = call i32 @load_nilfs(%struct.the_nilfs* %50, %struct.super_block* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %30
  br label %126

56:                                               ; preds = %30
  %57 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %58 = call i64 @nilfs_last_cno(%struct.the_nilfs* %57)
  store i64 %58, i64* %10, align 8
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @nilfs_attach_checkpoint(%struct.super_block* %59, i64 %60, i32 1, %struct.nilfs_root** %9)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @nilfs_msg(%struct.super_block* %65, i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %68)
  br label %113

70:                                               ; preds = %56
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = call i32 @sb_rdonly(%struct.super_block* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %70
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = load %struct.nilfs_root*, %struct.nilfs_root** %9, align 8
  %77 = call i32 @nilfs_attach_log_writer(%struct.super_block* %75, %struct.nilfs_root* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %110

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %70
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = load %struct.nilfs_root*, %struct.nilfs_root** %9, align 8
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 1
  %87 = call i32 @nilfs_get_root_dentry(%struct.super_block* %83, %struct.nilfs_root* %84, i32** %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %107

91:                                               ; preds = %82
  %92 = load %struct.nilfs_root*, %struct.nilfs_root** %9, align 8
  %93 = call i32 @nilfs_put_root(%struct.nilfs_root* %92)
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = call i32 @sb_rdonly(%struct.super_block* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %91
  %98 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %99 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %98, i32 0, i32 3
  %100 = call i32 @down_write(i32* %99)
  %101 = load %struct.super_block*, %struct.super_block** %5, align 8
  %102 = call i32 @nilfs_setup_super(%struct.super_block* %101, i32 1)
  %103 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %104 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %103, i32 0, i32 3
  %105 = call i32 @up_write(i32* %104)
  br label %106

106:                                              ; preds = %97, %91
  store i32 0, i32* %4, align 4
  br label %130

107:                                              ; preds = %90
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = call i32 @nilfs_detach_log_writer(%struct.super_block* %108)
  br label %110

110:                                              ; preds = %107, %80
  %111 = load %struct.nilfs_root*, %struct.nilfs_root** %9, align 8
  %112 = call i32 @nilfs_put_root(%struct.nilfs_root* %111)
  br label %113

113:                                              ; preds = %110, %64
  %114 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %115 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @iput(i32 %116)
  %118 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %119 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @iput(i32 %120)
  %122 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %123 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @iput(i32 %124)
  br label %126

126:                                              ; preds = %113, %55, %29
  %127 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %128 = call i32 @destroy_nilfs(%struct.the_nilfs* %127)
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %106, %16
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.the_nilfs* @alloc_nilfs(%struct.super_block*) #1

declare dso_local i32 @init_nilfs(%struct.the_nilfs*, %struct.super_block*, i8*) #1

declare dso_local i32 @bdi_get(i32) #1

declare dso_local i32 @load_nilfs(%struct.the_nilfs*, %struct.super_block*) #1

declare dso_local i64 @nilfs_last_cno(%struct.the_nilfs*) #1

declare dso_local i32 @nilfs_attach_checkpoint(%struct.super_block*, i64, i32, %struct.nilfs_root**) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32, i64) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @nilfs_attach_log_writer(%struct.super_block*, %struct.nilfs_root*) #1

declare dso_local i32 @nilfs_get_root_dentry(%struct.super_block*, %struct.nilfs_root*, i32**) #1

declare dso_local i32 @nilfs_put_root(%struct.nilfs_root*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nilfs_setup_super(%struct.super_block*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @nilfs_detach_log_writer(%struct.super_block*) #1

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @destroy_nilfs(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
