; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }
%struct.xfs_buf = type { i32 }

@XFS_BMAPI_ATTRFORK = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XBF_TRYLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_rmtval_remove(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_bmbt_irec, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %17, align 8
  store %struct.xfs_mount* %18, %struct.xfs_mount** %4, align 8
  %19 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %20 = call i32 @trace_xfs_attr_rmtval_remove(%struct.xfs_da_args* %19)
  %21 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %83, %1
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %94

30:                                               ; preds = %27
  store i32 1, i32* %13, align 4
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %38 = call i32 @xfs_bmapi_read(%struct.TYPE_4__* %33, i32 %35, i32 %36, %struct.xfs_bmbt_irec* %9, i32* %13, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %141

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HOLESTARTBLOCK, align 8
  %56 = icmp ne i64 %54, %55
  br label %57

57:                                               ; preds = %52, %43
  %58 = phi i1 [ false, %43 ], [ %56, %52 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %62 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %61, i64 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %65, i64 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @XBF_TRYLOCK, align 4
  %75 = call %struct.xfs_buf* @xfs_buf_incore(i32 %71, i32 %72, i32 %73, i32 %74)
  store %struct.xfs_buf* %75, %struct.xfs_buf** %10, align 8
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %77 = icmp ne %struct.xfs_buf* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %57
  %79 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %80 = call i32 @xfs_buf_stale(%struct.xfs_buf* %79)
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %82 = call i32 @xfs_buf_relse(%struct.xfs_buf* %81)
  store %struct.xfs_buf* null, %struct.xfs_buf** %10, align 8
  br label %83

83:                                               ; preds = %78, %57
  %84 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %5, align 8
  %88 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %9, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %27

94:                                               ; preds = %27
  %95 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %5, align 8
  %98 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %99 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %139, %94
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br i1 %104, label %105, label %140

105:                                              ; preds = %101
  %106 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %107 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %110 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %115 = call i32 @xfs_bunmapi(i32 %108, %struct.TYPE_4__* %111, i64 %112, i32 %113, i32 %114, i32 1, i32* %8)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %141

120:                                              ; preds = %105
  %121 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %122 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %121, i32 0, i32 2
  %123 = call i32 @xfs_defer_finish(i32* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %141

128:                                              ; preds = %120
  %129 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %130 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %129, i32 0, i32 2
  %131 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %132 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = call i32 @xfs_trans_roll_inode(i32* %130, %struct.TYPE_4__* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %141

139:                                              ; preds = %128
  br label %101

140:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %137, %126, %118, %41
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @trace_xfs_attr_rmtval_remove(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_bmapi_read(%struct.TYPE_4__*, i32, i32, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i64) #1

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i64) #1

declare dso_local %struct.xfs_buf* @xfs_buf_incore(i32, i32, i32, i32) #1

declare dso_local i32 @xfs_buf_stale(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_bunmapi(i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @xfs_defer_finish(i32*) #1

declare dso_local i32 @xfs_trans_roll_inode(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
