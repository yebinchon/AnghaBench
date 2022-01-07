; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_v7.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.v7_super_block = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@V7_LINK_MAX = common dso_local global i32 0, align 4
@V7_NICINOD = common dso_local global i32 0, align 4
@V7_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*, i32*)* @detected_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_v7(%struct.sysv_sb_info* %0, i32* %1) #0 {
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.v7_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %7, i32 0, i32 13
  %9 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %9, %struct.buffer_head** %5, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.v7_super_block*
  store %struct.v7_super_block* %13, %struct.v7_super_block** %6, align 8
  %14 = load i32, i32* @V7_LINK_MAX, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @V7_NICINOD, align 4
  %17 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @V7_NICFREE, align 4
  %20 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %23 = bitcast %struct.v7_super_block* %22 to i8*
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %27 = bitcast %struct.v7_super_block* %26 to i8*
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %31 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %30, i32 0, i32 8
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 10
  store i32* %31, i32** %33, align 8
  %34 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %35 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %39 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %38, i32 0, i32 9
  store i32* %37, i32** %39, align 8
  %40 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %41 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %40, i32 0, i32 6
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 8
  store i32* %41, i32** %43, align 8
  %44 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %45 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %44, i32 0, i32 5
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 7
  store i32* %45, i32** %47, align 8
  %48 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %49 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %53 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %52, i32 0, i32 6
  store i32* %51, i32** %53, align 8
  %54 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %55 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %54, i32 0, i32 3
  %56 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %59 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %58, i32 0, i32 2
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  %62 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %63 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %64 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %62, i32 %65)
  %67 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %68 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %70 = load %struct.v7_super_block*, %struct.v7_super_block** %6, align 8
  %71 = getelementptr inbounds %struct.v7_super_block, %struct.v7_super_block* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %69, i32 %72)
  %74 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %75 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
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
