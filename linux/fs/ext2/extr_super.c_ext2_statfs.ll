; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.kstatfs = type { i64, i8*, i8*, %struct.TYPE_2__, i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.ext2_sb_info = type { i64, i8*, i64, i32, i32, %struct.ext2_super_block* }
%struct.ext2_super_block = type { i64, i8*, i32, i32, i8*, i32, i32 }

@MINIX_DF = common dso_local global i32 0, align 4
@EXT2_SUPER_MAGIC = common dso_local global i32 0, align 4
@EXT2_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ext2_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext2_sb_info*, align 8
  %7 = alloca %struct.ext2_super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %14)
  store %struct.ext2_sb_info* %15, %struct.ext2_sb_info** %6, align 8
  %16 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %17 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %16, i32 0, i32 5
  %18 = load %struct.ext2_super_block*, %struct.ext2_super_block** %17, align 8
  store %struct.ext2_super_block* %18, %struct.ext2_super_block** %7, align 8
  %19 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %20 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %19, i32 0, i32 4
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load i32, i32* @MINIX_DF, align 4
  %24 = call i64 @test_opt(%struct.super_block* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %28 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %34 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = icmp ne i8* %32, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %29
  store i64 0, i64* %10, align 8
  %39 = call i32 (...) @smp_rmb()
  %40 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %41 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @le32_to_cpu(i32 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %61, %38
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.super_block*, %struct.super_block** %5, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i64 @ext2_bg_has_super(%struct.super_block* %52, i64 %53)
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @ext2_bg_num_gdb(%struct.super_block* %55, i64 %56)
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %10, align 8
  br label %61

61:                                               ; preds = %51
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %45

64:                                               ; preds = %45
  %65 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %69 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 2, %70
  %72 = sext i32 %71 to i64
  %73 = mul i64 %67, %72
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %78 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = call i32 (...) @smp_wmb()
  %80 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %81 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @le32_to_cpu(i32 %82)
  %84 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %85 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %64, %29
  br label %87

87:                                               ; preds = %86, %26
  %88 = load i32, i32* @EXT2_SUPER_MAGIC, align 4
  %89 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %90 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %89, i32 0, i32 8
  store i32 %88, i32* %90, align 4
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %95 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %94, i32 0, i32 7
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %97 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %101 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 0, %102
  %104 = getelementptr i8, i8* %99, i64 %103
  %105 = ptrtoint i8* %104 to i64
  %106 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %107 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.super_block*, %struct.super_block** %5, align 8
  %109 = call i8* @ext2_count_free_blocks(%struct.super_block* %108)
  %110 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %111 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %113 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @cpu_to_le32(i8* %114)
  %116 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %117 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %119 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %122 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32_to_cpu(i32 %123)
  %125 = ptrtoint i8* %120 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %130 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %129, i32 0, i32 6
  store i8* %128, i8** %130, align 8
  %131 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %132 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %135 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le32_to_cpu(i32 %136)
  %138 = icmp ult i8* %133, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %87
  %140 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %141 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %140, i32 0, i32 6
  store i8* null, i8** %141, align 8
  br label %142

142:                                              ; preds = %139, %87
  %143 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %144 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i8* @le32_to_cpu(i32 %145)
  %147 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %148 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load %struct.super_block*, %struct.super_block** %5, align 8
  %150 = call i8* @ext2_count_free_inodes(%struct.super_block* %149)
  %151 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %152 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  %153 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %154 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @cpu_to_le32(i8* %155)
  %157 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %158 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* @EXT2_NAME_LEN, align 4
  %160 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %161 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 8
  %162 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %163 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = call i32 @le64_to_cpup(i8* %165)
  %167 = load %struct.ext2_super_block*, %struct.ext2_super_block** %7, align 8
  %168 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i8*
  %171 = getelementptr i8, i8* %170, i64 4
  %172 = call i32 @le64_to_cpup(i8* %171)
  %173 = xor i32 %166, %172
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = and i64 %175, 4294967295
  %177 = trunc i64 %176 to i32
  %178 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %179 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %177, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = ashr i32 %183, 32
  %185 = sext i32 %184 to i64
  %186 = and i64 %185, 4294967295
  %187 = trunc i64 %186 to i32
  %188 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %189 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  store i32 %187, i32* %192, align 4
  %193 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %6, align 8
  %194 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %193, i32 0, i32 4
  %195 = call i32 @spin_unlock(i32* %194)
  ret i32 0
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @ext2_bg_has_super(%struct.super_block*, i64) #1

declare dso_local i64 @ext2_bg_num_gdb(%struct.super_block*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i8* @ext2_count_free_blocks(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i8* @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @le64_to_cpup(i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
