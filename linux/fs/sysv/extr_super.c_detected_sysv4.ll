; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_sysv4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_sysv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.sysv4_super_block = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@SYSV_LINK_MAX = common dso_local global i32 0, align 4
@SYSV_NICINOD = common dso_local global i32 0, align 4
@SYSV_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*, i32*)* @detected_sysv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_sysv4(%struct.sysv_sb_info* %0, i32* %1) #0 {
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sysv4_super_block*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %8, i32 0, i32 15
  %10 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %10, %struct.buffer_head** %6, align 8
  %11 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %11, i32 0, i32 14
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %7, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %16 = icmp eq %struct.buffer_head* %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @BLOCK_SIZE, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = inttoptr i64 %24 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %25, %struct.sysv4_super_block** %5, align 8
  br label %31

26:                                               ; preds = %2
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %30, %struct.sysv4_super_block** %5, align 8
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* @SYSV_LINK_MAX, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @SYSV_NICINOD, align 4
  %35 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %36 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @SYSV_NICFREE, align 4
  %38 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %41 = bitcast %struct.sysv4_super_block* %40 to i8*
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %45 = bitcast %struct.sysv4_super_block* %44 to i8*
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %49 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %48, i32 0, i32 9
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %51 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %50, i32 0, i32 11
  store i32* %49, i32** %51, align 8
  %52 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %53 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %56, i32 0, i32 10
  store i32* %55, i32** %57, align 8
  %58 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %59 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %58, i32 0, i32 7
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 9
  store i32* %59, i32** %61, align 8
  %62 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %63 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %62, i32 0, i32 6
  %64 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %65 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %64, i32 0, i32 8
  store i32* %63, i32** %65, align 8
  %66 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %67 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %71 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %70, i32 0, i32 7
  store i32* %69, i32** %71, align 8
  %72 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %73 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %72, i32 0, i32 4
  %74 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %75 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %74, i32 0, i32 6
  store i32* %73, i32** %75, align 8
  %76 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %77 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %76, i32 0, i32 3
  %78 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %79 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %81 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %80, i32 0, i32 2
  %82 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %83 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %82, i32 0, i32 4
  store i32* %81, i32** %83, align 8
  %84 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %85 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %86 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %84, i32 %87)
  %89 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %90 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %92 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %5, align 8
  %93 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %91, i32 %94)
  %96 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %97 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  ret void
}

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
