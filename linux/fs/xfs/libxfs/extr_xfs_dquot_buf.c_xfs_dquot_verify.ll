; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dquot_buf.c_xfs_dquot_verify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dquot_buf.c_xfs_dquot_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32, i64, i64, i32, i64, i64, i32, i64, i64, i32 }

@XFS_DQUOT_MAGIC = common dso_local global i32 0, align 4
@__this_address = common dso_local global i32* null, align 8
@XFS_DQUOT_VERSION = common dso_local global i64 0, align 8
@XFS_DQ_USER = common dso_local global i64 0, align 8
@XFS_DQ_PROJ = common dso_local global i64 0, align 8
@XFS_DQ_GROUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xfs_dquot_verify(%struct.xfs_mount* %0, %struct.TYPE_3__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @XFS_DQUOT_MAGIC, align 4
  %14 = call i64 @cpu_to_be16(i32 %13)
  %15 = icmp ne i64 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32*, i32** @__this_address, align 8
  store i32* %17, i32** %5, align 8
  br label %142

18:                                               ; preds = %4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XFS_DQUOT_VERSION, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32*, i32** @__this_address, align 8
  store i32* %25, i32** %5, align 8
  br label %142

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32*, i32** @__this_address, align 8
  store i32* %36, i32** %5, align 8
  br label %142

37:                                               ; preds = %29, %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @XFS_DQ_USER, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XFS_DQ_PROJ, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XFS_DQ_GROUP, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32*, i32** @__this_address, align 8
  store i32* %56, i32** %5, align 8
  br label %142

57:                                               ; preds = %49, %43, %37
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = icmp ne i32 %61, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32*, i32** @__this_address, align 8
  store i32* %68, i32** %5, align 8
  br label %142

69:                                               ; preds = %60, %57
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32* null, i32** %5, align 8
  br label %142

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @be64_to_cpu(i64 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @be64_to_cpu(i64 %87)
  %89 = icmp sgt i64 %84, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = load i32*, i32** @__this_address, align 8
  store i32* %96, i32** %5, align 8
  br label %142

97:                                               ; preds = %90, %80, %75
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @be64_to_cpu(i64 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @be64_to_cpu(i64 %109)
  %111 = icmp sgt i64 %106, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32*, i32** @__this_address, align 8
  store i32* %118, i32** %5, align 8
  br label %142

119:                                              ; preds = %112, %102, %97
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @be64_to_cpu(i64 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @be64_to_cpu(i64 %131)
  %133 = icmp sgt i64 %128, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %124
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %134
  %140 = load i32*, i32** @__this_address, align 8
  store i32* %140, i32** %5, align 8
  br label %142

141:                                              ; preds = %134, %124, %119
  store i32* null, i32** %5, align 8
  br label %142

142:                                              ; preds = %141, %139, %117, %95, %74, %67, %55, %35, %24, %16
  %143 = load i32*, i32** %5, align 8
  ret i32* %143
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
