; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_fscounters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_fscounters.c_xchk_fscounters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_4__*, %struct.xchk_fscounters*, %struct.xfs_mount* }
%struct.TYPE_4__ = type { i32 }
%struct.xchk_fscounters = type { i64, i64, i32, i32, i32 }
%struct.xfs_mount = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@XCHK_FSCOUNT_MIN_VARIANCE = common dso_local global i64 0, align 8
@XFS_SCRUB_OFLAG_INCOMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_fscounters(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xchk_fscounters*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %4, align 8
  %13 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %14 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %13, i32 0, i32 1
  %15 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %14, align 8
  store %struct.xchk_fscounters* %15, %struct.xchk_fscounters** %5, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %16, i32 0, i32 2
  %18 = call i64 @percpu_counter_sum(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %19, i32 0, i32 1
  %21 = call i64 @percpu_counter_sum(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %22, i32 0, i32 0
  %24 = call i64 @percpu_counter_sum(i32* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %1
  %34 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %35 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %39 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %45 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %36
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %50 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %60 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i64, i64* @XCHK_FSCOUNT_MIN_VARIANCE, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %73 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %72)
  br label %74

74:                                               ; preds = %71, %65, %61
  %75 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %76 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %77 = call i32 @xchk_fscount_aggregate_agcounts(%struct.xfs_scrub* %75, %struct.xchk_fscounters* %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %80 = call i32 @XFS_SB_BLOCK(%struct.xfs_mount* %79)
  %81 = call i32 @xchk_process_error(%struct.xfs_scrub* %78, i32 0, i32 %80, i32* %9)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %2, align 4
  br label %135

85:                                               ; preds = %74
  %86 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %87 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @XFS_SCRUB_OFLAG_INCOMPLETE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %135

95:                                               ; preds = %85
  %96 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %99 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %98, i32 0, i32 2
  %100 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %101 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @xchk_fscount_within_range(%struct.xfs_scrub* %96, i64 %97, i32* %99, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %95
  %106 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %107 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %106)
  br label %108

108:                                              ; preds = %105, %95
  %109 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %112 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %111, i32 0, i32 1
  %113 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %114 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @xchk_fscount_within_range(%struct.xfs_scrub* %109, i64 %110, i32* %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %108
  %119 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %120 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %119)
  br label %121

121:                                              ; preds = %118, %108
  %122 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %124, i32 0, i32 0
  %126 = load %struct.xchk_fscounters*, %struct.xchk_fscounters** %5, align 8
  %127 = getelementptr inbounds %struct.xchk_fscounters, %struct.xchk_fscounters* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @xchk_fscount_within_range(%struct.xfs_scrub* %122, i64 %123, i32* %125, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %121
  %132 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %133 = call i32 @xchk_set_corrupt(%struct.xfs_scrub* %132)
  br label %134

134:                                              ; preds = %131, %121
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %94, %83
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @percpu_counter_sum(i32*) #1

declare dso_local i32 @xchk_set_corrupt(%struct.xfs_scrub*) #1

declare dso_local i32 @xchk_fscount_aggregate_agcounts(%struct.xfs_scrub*, %struct.xchk_fscounters*) #1

declare dso_local i32 @xchk_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @XFS_SB_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @xchk_fscount_within_range(%struct.xfs_scrub*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
