; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agfl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agfl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xchk_agfl_info = type { i32, i64*, i32, %struct.xfs_scrub* }
%struct.xfs_agf = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@xchk_agfl_block = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@xchk_agblock_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_agfl(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xchk_agfl_info, align 8
  %5 = alloca %struct.xfs_agf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %10 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %11 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  store i32 %14, i32* %6, align 4
  %18 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %24 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = call i32 @xchk_ag_read_headers(%struct.xfs_scrub* %18, i32 %19, i32* %22, i32* %25, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @XFS_AGFL_BLOCK(i32 %34)
  %36 = call i32 @xchk_process_error(%struct.xfs_scrub* %30, i32 %31, i32 %35, i32* %9)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %187

39:                                               ; preds = %1
  %40 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EFSCORRUPTED, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %189

48:                                               ; preds = %39
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @xchk_buffer_recheck(%struct.xfs_scrub* %49, i32 %53)
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %56 = call i32 @xchk_agfl_xref(%struct.xfs_scrub* %55)
  %57 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %58 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %48
  br label %187

66:                                               ; preds = %48
  %67 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(i32 %70)
  store %struct.xfs_agf* %71, %struct.xfs_agf** %5, align 8
  %72 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %78 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @xfs_agfl_size(i32 %79)
  %81 = icmp ugt i32 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %66
  %83 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %84 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %85 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %83, i32 %87)
  br label %187

89:                                               ; preds = %66
  %90 = call i32 @memset(%struct.xchk_agfl_info* %4, i32 0, i32 32)
  %91 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %92 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 3
  store %struct.xfs_scrub* %91, %struct.xfs_scrub** %92, align 8
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @KM_MAYFAIL, align 4
  %100 = call i64* @kmem_zalloc(i32 %98, i32 %99)
  %101 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  store i64* %100, i64** %101, align 8
  %102 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %89
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %187

108:                                              ; preds = %89
  %109 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %110 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %113 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(i32 %115)
  %117 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %118 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @xchk_agfl_block, align 4
  %122 = call i32 @xfs_agfl_walk(i32 %111, %struct.xfs_agf* %116, i32 %120, i32 %121, %struct.xchk_agfl_info* %4)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ECANCELED, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %183

128:                                              ; preds = %108
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %183

132:                                              ; preds = %128
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %139 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %140 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %138, i32 %142)
  br label %183

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @xchk_agblock_cmp, align 4
  %150 = call i32 @sort(i64* %146, i32 %148, i32 8, i32 %149, i32* null)
  store i32 1, i32* %8, align 4
  br label %151

151:                                              ; preds = %179, %144
  %152 = load i32, i32* %8, align 4
  %153 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %152, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sub i32 %165, 1
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %162, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %156
  %172 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %173 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %174 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %172, i32 %176)
  br label %182

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %151

182:                                              ; preds = %171, %151
  br label %183

183:                                              ; preds = %182, %137, %131, %127
  %184 = getelementptr inbounds %struct.xchk_agfl_info, %struct.xchk_agfl_info* %4, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = call i32 @kmem_free(i64* %185)
  br label %187

187:                                              ; preds = %183, %105, %82, %65, %38
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %45
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @xchk_ag_read_headers(%struct.xfs_scrub*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @xchk_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @XFS_AGFL_BLOCK(i32) #1

declare dso_local i32 @xchk_buffer_recheck(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xchk_agfl_xref(%struct.xfs_scrub*) #1

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_agfl_size(i32) #1

declare dso_local i32 @xchk_block_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @memset(%struct.xchk_agfl_info*, i32, i32) #1

declare dso_local i64* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @xfs_agfl_walk(i32, %struct.xfs_agf*, i32, i32, %struct.xchk_agfl_info*) #1

declare dso_local i32 @sort(i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @kmem_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
