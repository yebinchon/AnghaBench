; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i64, i64, i64, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.nilfs_root = type { i32, i32, %struct.the_nilfs* }
%struct.the_nilfs = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.nilfs_root* }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to count free inodes: err=%d\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NILFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@NILFS_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @nilfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_root*, align 8
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %6, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = call %struct.TYPE_6__* @NILFS_I(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.nilfs_root*, %struct.nilfs_root** %23, align 8
  store %struct.nilfs_root* %24, %struct.nilfs_root** %7, align 8
  %25 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %26 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %25, i32 0, i32 2
  %27 = load %struct.the_nilfs*, %struct.the_nilfs** %26, align 8
  store %struct.the_nilfs* %27, %struct.the_nilfs** %8, align 8
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @huge_encode_dev(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %35 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %36, %39
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub i64 %40, %43
  store i64 %44, i64* %10, align 8
  %45 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %46 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %49 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = mul i64 %47, %50
  store i64 %51, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %52 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %53 = call i32 @nilfs_count_free_blocks(%struct.the_nilfs* %52, i64* %13)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %2
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %3, align 4
  br label %142

59:                                               ; preds = %2
  %60 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %61 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nilfs_ifile_count_free_inodes(i32 %62, i32* %14, i32* %15)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load %struct.super_block*, %struct.super_block** %6, align 8
  %69 = load i32, i32* @KERN_WARNING, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @nilfs_msg(%struct.super_block* %68, i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @ERANGE, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %78 = getelementptr inbounds %struct.nilfs_root, %struct.nilfs_root* %77, i32 0, i32 0
  %79 = call i32 @atomic64_read(i32* %78)
  store i32 %79, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %3, align 4
  br label %142

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %59
  %84 = load i32, i32* @NILFS_SUPER_MAGIC, align 4
  %85 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %86 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = getelementptr inbounds %struct.super_block, %struct.super_block* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %91 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = sub i64 %92, %93
  %95 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %96 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %99 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %101 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp uge i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %83
  %106 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %107 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = sub i64 %108, %109
  br label %112

111:                                              ; preds = %83
  br label %112

112:                                              ; preds = %111, %105
  %113 = phi i64 [ %110, %105 ], [ 0, %111 ]
  %114 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %115 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %118 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %121 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @NILFS_NAME_LEN, align 4
  %123 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %124 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %129 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 0
  store i8* %127, i8** %132, align 8
  %133 = load i32, i32* %9, align 4
  %134 = ashr i32 %133, 32
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %138 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  store i8* %136, i8** %141, align 8
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %112, %80, %57
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.TYPE_6__* @NILFS_I(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @nilfs_count_free_blocks(%struct.the_nilfs*, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_ifile_count_free_inodes(i32, i32*, i32*) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
