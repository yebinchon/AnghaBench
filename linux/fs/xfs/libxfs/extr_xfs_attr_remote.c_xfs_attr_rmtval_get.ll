; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_remote.c_xfs_attr_rmtval_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }

@ATTR_RMTVALUE_MAPSIZE = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@XFS_BMAPI_ATTRFORK = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@xfs_attr3_rmt_buf_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_rmtval_get(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %19 = load i32, i32* @ATTR_RMTVALUE_MAPSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %4, align 8
  %22 = alloca %struct.xfs_bmbt_irec, i64 %20, align 16
  store i64 %20, i64* %5, align 8
  %23 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %23, i32 0, i32 5
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %26, align 8
  store %struct.xfs_mount* %27, %struct.xfs_mount** %6, align 8
  %28 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %35 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %38 = call i32 @trace_xfs_attr_rmtval_get(%struct.xfs_da_args* %37)
  %39 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATTR_KERNOVAL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %49 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %52 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %177, %1
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %178

63:                                               ; preds = %60
  %64 = load i32, i32* @ATTR_RMTVALUE_MAPSIZE, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @XFS_BMAPI_ATTRFORK, align 4
  %72 = call i32 @xfs_bmapi_read(%struct.TYPE_2__* %67, i32 %69, i32 %70, %struct.xfs_bmbt_irec* %22, i32* %11, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %183

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  %79 = icmp sge i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %174, %77
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 0
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi i1 [ false, %82 ], [ %88, %86 ]
  br i1 %90, label %91, label %177

91:                                               ; preds = %89
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %93
  %95 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 16
  %97 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %101
  %103 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 16
  %105 = load i64, i64* @HOLESTARTBLOCK, align 8
  %106 = icmp ne i64 %104, %105
  br label %107

107:                                              ; preds = %99, %91
  %108 = phi i1 [ false, %91 ], [ %106, %99 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @ASSERT(i32 %109)
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %113
  %115 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 16
  %117 = call i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount* %111, i64 %116)
  store i32 %117, i32* %17, align 4
  %118 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %120
  %122 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @XFS_FSB_TO_BB(%struct.xfs_mount* %118, i64 %123)
  store i32 %124, i32* %18, align 4
  %125 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %126 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %127 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %130 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @xfs_trans_read_buf(%struct.xfs_mount* %125, i32 %128, i32 %131, i32 %132, i32 %133, i32 0, %struct.xfs_buf** %7, i32* @xfs_attr3_rmt_buf_ops)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %107
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %183

139:                                              ; preds = %107
  %140 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %141 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %142 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %143 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %142, i32 0, i32 5
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @xfs_attr_rmtval_copyout(%struct.xfs_mount* %140, %struct.xfs_buf* %141, i32 %146, i32* %15, i32* %10, i32** %9)
  store i32 %147, i32* %12, align 4
  %148 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %149 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %152 = call i32 @xfs_trans_brelse(i32 %150, %struct.xfs_buf* %151)
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %139
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %183

157:                                              ; preds = %139
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %159
  %161 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = add nsw i64 %163, %162
  store i64 %164, i64* %8, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i64 %166
  %168 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %157
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %82

177:                                              ; preds = %89
  br label %60

178:                                              ; preds = %60
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @ASSERT(i32 %181)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %16, align 4
  br label %183

183:                                              ; preds = %178, %155, %137, %75
  %184 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_xfs_attr_rmtval_get(%struct.xfs_da_args*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @xfs_bmapi_read(%struct.TYPE_2__*, i32, i32, %struct.xfs_bmbt_irec*, i32*, i32) #2

declare dso_local i32 @XFS_FSB_TO_DADDR(%struct.xfs_mount*, i64) #2

declare dso_local i32 @XFS_FSB_TO_BB(%struct.xfs_mount*, i64) #2

declare dso_local i32 @xfs_trans_read_buf(%struct.xfs_mount*, i32, i32, i32, i32, i32, %struct.xfs_buf**, i32*) #2

declare dso_local i32 @xfs_attr_rmtval_copyout(%struct.xfs_mount*, %struct.xfs_buf*, i32, i32*, i32*, i32**) #2

declare dso_local i32 @xfs_trans_brelse(i32, %struct.xfs_buf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
