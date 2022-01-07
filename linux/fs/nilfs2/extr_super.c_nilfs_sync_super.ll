; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_sync_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_sync_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i64, %struct.nilfs_super_block**, i64*, i32, i32 }
%struct.nilfs_super_block = type { i32, i32 }

@BARRIER = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unable to write superblock: err=%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@NILFS_SB_COMMIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @nilfs_sync_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_sync_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %5, align 8
  br label %11

11:                                               ; preds = %62, %2
  %12 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %13 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %12, i32 0, i32 3
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @set_buffer_dirty(i64 %16)
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %19 = load i32, i32* @BARRIER, align 4
  %20 = call i64 @nilfs_test_opt(%struct.the_nilfs* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %24 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @REQ_SYNC, align 4
  %29 = load i32, i32* @REQ_PREFLUSH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @REQ_FUA, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @__sync_dirty_buffer(i64 %27, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %42

34:                                               ; preds = %11
  %35 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %36 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %35, i32 0, i32 3
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @sync_dirty_buffer(i64 %39)
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34, %22
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %42
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @nilfs_msg(%struct.super_block* %47, i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %46
  %56 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %57 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %55
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %64 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %63, i32 0, i32 2
  %65 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %64, align 8
  %66 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %65, i64 1
  %67 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %66, align 8
  %68 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %69 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %68, i32 0, i32 2
  %70 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %69, align 8
  %71 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %70, i64 0
  %72 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %71, align 8
  %73 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %74 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(%struct.nilfs_super_block* %67, %struct.nilfs_super_block* %72, i32 %75)
  %77 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %78 = call i32 @nilfs_fall_back_super_block(%struct.the_nilfs* %77)
  br label %11

79:                                               ; preds = %55, %46
  br label %156

80:                                               ; preds = %42
  %81 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %82 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %81, i32 0, i32 2
  %83 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %82, align 8
  %84 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %83, i64 0
  %85 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %84, align 8
  store %struct.nilfs_super_block* %85, %struct.nilfs_super_block** %7, align 8
  %86 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %87 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %91 = call i32 @clear_nilfs_discontinued(%struct.the_nilfs* %90)
  %92 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %93 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %80
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @NILFS_SB_COMMIT_ALL, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %104 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @set_buffer_dirty(i64 %107)
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %110 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %109, i32 0, i32 3
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @sync_dirty_buffer(i64 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %102
  br label %157

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %98
  %119 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %120 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %119, i32 0, i32 2
  %121 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %120, align 8
  %122 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %121, i64 1
  %123 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %122, align 8
  %124 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @le64_to_cpu(i32 %125)
  %127 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %128 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %127, i32 0, i32 2
  %129 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %128, align 8
  %130 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %129, i64 0
  %131 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %130, align 8
  %132 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @le64_to_cpu(i32 %133)
  %135 = icmp slt i64 %126, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %118
  %137 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %138 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %137, i32 0, i32 2
  %139 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %138, align 8
  %140 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %139, i64 1
  %141 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %140, align 8
  store %struct.nilfs_super_block* %141, %struct.nilfs_super_block** %7, align 8
  br label %142

142:                                              ; preds = %136, %118
  br label %143

143:                                              ; preds = %142, %80
  %144 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %145 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %144, i32 0, i32 0
  %146 = call i32 @spin_lock(i32* %145)
  %147 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %7, align 8
  %148 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le64_to_cpu(i32 %149)
  %151 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %152 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %154 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock(i32* %154)
  br label %156

156:                                              ; preds = %143, %79
  br label %157

157:                                              ; preds = %156, %116
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @set_buffer_dirty(i64) #1

declare dso_local i64 @nilfs_test_opt(%struct.the_nilfs*, i32) #1

declare dso_local i32 @__sync_dirty_buffer(i64, i32) #1

declare dso_local i64 @sync_dirty_buffer(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.nilfs_super_block*, %struct.nilfs_super_block*, i32) #1

declare dso_local i32 @nilfs_fall_back_super_block(%struct.the_nilfs*) #1

declare dso_local i32 @clear_nilfs_discontinued(%struct.the_nilfs*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
