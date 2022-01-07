; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_xenix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detected_xenix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i8*, i8*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.xenix_super_block = type { i32, i32, i32, i32, i32*, i32, i32, i32*, i32 }

@XENIX_LINK_MAX = common dso_local global i32 0, align 4
@XENIX_NICINOD = common dso_local global i32 0, align 4
@XENIX_NICFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysv_sb_info*, i32*)* @detected_xenix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detected_xenix(%struct.sysv_sb_info* %0, i32* %1) #0 {
  %3 = alloca %struct.sysv_sb_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.xenix_super_block*, align 8
  %8 = alloca %struct.xenix_super_block*, align 8
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %9, i32 0, i32 14
  %11 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %11, %struct.buffer_head** %5, align 8
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %12, i32 0, i32 13
  %14 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %14, %struct.buffer_head** %6, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = icmp ne %struct.buffer_head* %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %23, %struct.xenix_super_block** %8, align 8
  store %struct.xenix_super_block* %23, %struct.xenix_super_block** %7, align 8
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %29, %struct.xenix_super_block** %7, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 512
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.xenix_super_block*
  store %struct.xenix_super_block* %35, %struct.xenix_super_block** %8, align 8
  br label %36

36:                                               ; preds = %24, %18
  %37 = load i32, i32* @XENIX_LINK_MAX, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @XENIX_NICINOD, align 4
  %40 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %41 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @XENIX_NICFREE, align 4
  %43 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 8
  %45 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %46 = bitcast %struct.xenix_super_block* %45 to i8*
  %47 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %48 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.xenix_super_block*, %struct.xenix_super_block** %8, align 8
  %50 = bitcast %struct.xenix_super_block* %49 to i8*
  %51 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %52 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %54 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %53, i32 0, i32 8
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 10
  store i32* %54, i32** %56, align 8
  %57 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %58 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %57, i32 0, i32 7
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %62 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %61, i32 0, i32 9
  store i32* %60, i32** %62, align 8
  %63 = load %struct.xenix_super_block*, %struct.xenix_super_block** %8, align 8
  %64 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %63, i32 0, i32 6
  %65 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %66 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %65, i32 0, i32 8
  store i32* %64, i32** %66, align 8
  %67 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %68 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %67, i32 0, i32 5
  %69 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %69, i32 0, i32 7
  store i32* %68, i32** %70, align 8
  %71 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %72 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %76 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  %77 = load %struct.xenix_super_block*, %struct.xenix_super_block** %8, align 8
  %78 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %77, i32 0, i32 3
  %79 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %80 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %79, i32 0, i32 5
  store i32* %78, i32** %80, align 8
  %81 = load %struct.xenix_super_block*, %struct.xenix_super_block** %8, align 8
  %82 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %81, i32 0, i32 2
  %83 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %84 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %83, i32 0, i32 4
  store i32* %82, i32** %84, align 8
  %85 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %86 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %87 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %85, i32 %88)
  %90 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %91 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %93 = load %struct.xenix_super_block*, %struct.xenix_super_block** %7, align 8
  %94 = getelementptr inbounds %struct.xenix_super_block, %struct.xenix_super_block* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %92, i32 %95)
  %97 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
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
