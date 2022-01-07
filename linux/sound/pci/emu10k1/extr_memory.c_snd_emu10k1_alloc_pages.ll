; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_memory.c_snd_emu10k1_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_util_memblk = type { i32 }
%struct.snd_emu10k1 = type { i32, i32**, i32*, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.snd_util_memhdr*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snd_util_memhdr = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i64, i64 }
%struct.snd_emu10k1_memblk = type { i32, i32, i32 }

@MAXPAGES1 = common dso_local global i32 0, align 4
@MAXPAGES0 = common dso_local global i32 0, align 4
@EMUPAGESIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"emu: failure page = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_util_memblk* @snd_emu10k1_alloc_pages(%struct.snd_emu10k1* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.snd_util_memblk*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_util_memhdr*, align 8
  %8 = alloca %struct.snd_emu10k1_memblk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %6, align 8
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %18 = icmp ne %struct.snd_emu10k1* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @MAXPAGES1, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @MAXPAGES0, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32, i32* @EMUPAGESIZE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = icmp sge i32 %32, %44
  br label %46

46:                                               ; preds = %41, %24
  %47 = phi i1 [ true, %24 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @snd_BUG_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

52:                                               ; preds = %46
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %54 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %53, i32 0, i32 5
  %55 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %54, align 8
  store %struct.snd_util_memhdr* %55, %struct.snd_util_memhdr** %7, align 8
  %56 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %57 = icmp ne %struct.snd_util_memhdr* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @snd_BUG_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

63:                                               ; preds = %52
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 2
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i32 [ %75, %71 ], [ 0, %76 ]
  store i32 %78, i32* %11, align 4
  %79 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %80 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = call %struct.snd_emu10k1_memblk* @search_empty(%struct.snd_emu10k1* %82, i32 %87)
  store %struct.snd_emu10k1_memblk* %88, %struct.snd_emu10k1_memblk** %8, align 8
  %89 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %90 = icmp eq %struct.snd_emu10k1_memblk* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %77
  %92 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %93 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

95:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  %96 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %155, %95
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %102 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %100, %103
  br i1 %104, label %105, label %160

105:                                              ; preds = %99
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @PAGE_SHIFT, align 4
  %108 = shl i32 %106, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp uge i64 %110, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %105
  %117 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %118 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %13, align 4
  br label %125

121:                                              ; preds = %105
  %122 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream* %122, i64 %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @is_valid_page(%struct.snd_emu10k1* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %125
  %131 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %132 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %131, i32 0, i32 3
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @dev_err_ratelimited(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %139 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

141:                                              ; preds = %125
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %144 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %150 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  store i32* null, i32** %154, align 8
  br label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %99

160:                                              ; preds = %99
  %161 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %162 = getelementptr inbounds %struct.snd_emu10k1_memblk, %struct.snd_emu10k1_memblk* %161, i32 0, i32 2
  store i32 1, i32* %162, align 4
  %163 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %164 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %165 = call i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1* %163, %struct.snd_emu10k1_memblk* %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %160
  %169 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %170 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %171 = bitcast %struct.snd_emu10k1_memblk* %170 to %struct.snd_util_memblk*
  %172 = call i32 @__snd_util_mem_free(%struct.snd_util_memhdr* %169, %struct.snd_util_memblk* %171)
  %173 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %174 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %173, i32 0, i32 0
  %175 = call i32 @mutex_unlock(i32* %174)
  store %struct.snd_util_memblk* null, %struct.snd_util_memblk** %3, align 8
  br label %182

176:                                              ; preds = %160
  %177 = load %struct.snd_util_memhdr*, %struct.snd_util_memhdr** %7, align 8
  %178 = getelementptr inbounds %struct.snd_util_memhdr, %struct.snd_util_memhdr* %177, i32 0, i32 0
  %179 = call i32 @mutex_unlock(i32* %178)
  %180 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %8, align 8
  %181 = bitcast %struct.snd_emu10k1_memblk* %180 to %struct.snd_util_memblk*
  store %struct.snd_util_memblk* %181, %struct.snd_util_memblk** %3, align 8
  br label %182

182:                                              ; preds = %176, %168, %130, %91, %62, %51, %23
  %183 = load %struct.snd_util_memblk*, %struct.snd_util_memblk** %3, align 8
  ret %struct.snd_util_memblk* %183
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_emu10k1_memblk* @search_empty(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_sgbuf_get_addr(%struct.snd_pcm_substream*, i64) #1

declare dso_local i32 @is_valid_page(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @snd_emu10k1_memblk_map(%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*) #1

declare dso_local i32 @__snd_util_mem_free(%struct.snd_util_memhdr*, %struct.snd_util_memblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
