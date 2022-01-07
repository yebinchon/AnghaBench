; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_f2fs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.super_block* }
%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.kstatfs = type { i64, i64, i64, %struct.TYPE_8__, i32, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i8** }
%struct.f2fs_sb_info = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }

@F2FS_SUPER_MAGIC = common dso_local global i32 0, align 4
@F2FS_RESERVED_NODE_NUM = common dso_local global i64 0, align 8
@F2FS_NAME_LEN = common dso_local global i32 0, align 4
@FI_PROJ_INHERIT = common dso_local global i32 0, align 4
@PRJQUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @f2fs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %5, align 8
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block* %17)
  store %struct.f2fs_sb_info* %18, %struct.f2fs_sb_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @huge_encode_dev(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %26 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %25, i32 0, i32 6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le64_to_cpu(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %32 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %34, i32 0, i32 6
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* @F2FS_SUPER_MAGIC, align 4
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub nsw i64 %48, %49
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 6
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %55 = call i64 @valid_user_blocks(%struct.f2fs_sb_info* %54)
  %56 = sub nsw i64 %53, %55
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %64 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %63, i32 0, i32 4
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %67 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %70 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp sle i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %2
  %77 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %78 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %87

79:                                               ; preds = %2
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %81 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %84 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %79, %76
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %89 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %88, i32 0, i32 4
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %92 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %95 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %93, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %87
  %101 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %102 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %105 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %104)
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 %105, i64* %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %103, %108
  %110 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %111 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  br label %115

112:                                              ; preds = %87
  %113 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %114 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %112, %100
  %116 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %117 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @F2FS_RESERVED_NODE_NUM, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp sgt i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %115
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %127 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  %128 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %129 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %132 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  br label %147

133:                                              ; preds = %115
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %136 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %139 = call i64 @valid_node_count(%struct.f2fs_sb_info* %138)
  %140 = sub nsw i64 %137, %139
  %141 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %142 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @min(i64 %140, i64 %143)
  %145 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %146 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %133, %124
  %148 = load i32, i32* @F2FS_NAME_LEN, align 4
  %149 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %150 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load i64, i64* %7, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %154 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 0
  store i8* %152, i8** %157, align 8
  %158 = load i64, i64* %7, align 8
  %159 = ashr i64 %158, 32
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %162 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 1
  store i8* %160, i8** %165, align 8
  ret i32 0
}

declare dso_local %struct.f2fs_sb_info* @F2FS_SB(%struct.super_block*) #1

declare dso_local i64 @huge_encode_dev(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @valid_user_blocks(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @valid_node_count(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
