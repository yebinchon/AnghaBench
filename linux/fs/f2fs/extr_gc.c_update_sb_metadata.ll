; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_update_sb_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_update_sb_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i64 }
%struct.f2fs_super_block = type { i32, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32)* @update_sb_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sb_metadata(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = call %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info* %11)
  store %struct.f2fs_super_block* %12, %struct.f2fs_super_block** %5, align 8
  %13 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %14 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @le32_to_cpu(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %18 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @le32_to_cpu(i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %22 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @le32_to_cpu(i8* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %26 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @le64_to_cpu(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %39 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %45 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %51 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %56 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %54, %57
  %59 = add nsw i64 %52, %58
  %60 = call i32 @cpu_to_le64(i64 %59)
  %61 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %5, align 8
  %62 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  ret void
}

declare dso_local %struct.f2fs_super_block* @F2FS_RAW_SUPER(%struct.f2fs_sb_info*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
