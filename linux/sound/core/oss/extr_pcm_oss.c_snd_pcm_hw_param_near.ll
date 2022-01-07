; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_near.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_oss.c_snd_pcm_hw_param_near.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32*)* @snd_pcm_hw_param_near to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_param_near(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_hw_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.snd_pcm_hw_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.snd_pcm_hw_params*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.snd_pcm_hw_params* null, %struct.snd_pcm_hw_params** %12, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @INT_MAX, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @INT_MAX, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %17, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %20, align 4
  store i32 %37, i32* %19, align 4
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %19, align 4
  br label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %19, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %19, align 4
  br label %48

45:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %45, %44
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.snd_pcm_hw_params* @kmalloc(i32 4, i32 %50)
  store %struct.snd_pcm_hw_params* %51, %struct.snd_pcm_hw_params** %12, align 8
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %53 = icmp eq %struct.snd_pcm_hw_params* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %162

57:                                               ; preds = %49
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %60 = bitcast %struct.snd_pcm_hw_params* %58 to i8*
  %61 = bitcast %struct.snd_pcm_hw_params* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @snd_pcm_hw_param_min(%struct.snd_pcm_substream* %63, %struct.snd_pcm_hw_params* %64, i32 %65, i32 %66, i32* %18)
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %125

70:                                               ; preds = %57
  %71 = load i32, i32* %17, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %143

74:                                               ; preds = %70
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %143

83:                                               ; preds = %78, %74
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call %struct.snd_pcm_hw_params* @kmalloc(i32 4, i32 %84)
  store %struct.snd_pcm_hw_params* %85, %struct.snd_pcm_hw_params** %21, align 8
  %86 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %87 = icmp eq %struct.snd_pcm_hw_params* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %90 = call i32 @kfree(%struct.snd_pcm_hw_params* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %162

93:                                               ; preds = %83
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %95 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %96 = bitcast %struct.snd_pcm_hw_params* %94 to i8*
  %97 = bitcast %struct.snd_pcm_hw_params* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %99 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @snd_pcm_hw_param_max(%struct.snd_pcm_substream* %98, %struct.snd_pcm_hw_params* %99, i32 %100, i32 %101, i32* %19)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %107 = call i32 @kfree(%struct.snd_pcm_hw_params* %106)
  br label %143

108:                                              ; preds = %93
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %18, align 4
  %115 = call i64 @boundary_nearer(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %119 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %120 = bitcast %struct.snd_pcm_hw_params* %118 to i8*
  %121 = bitcast %struct.snd_pcm_hw_params* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 4, i1 false)
  store i32 1, i32* %15, align 4
  br label %122

122:                                              ; preds = %117, %108
  %123 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %21, align 8
  %124 = call i32 @kfree(%struct.snd_pcm_hw_params* %123)
  br label %142

125:                                              ; preds = %57
  %126 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %127 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %128 = bitcast %struct.snd_pcm_hw_params* %126 to i8*
  %129 = bitcast %struct.snd_pcm_hw_params* %127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 4, i1 false)
  %130 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %131 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %17, align 4
  %134 = call i32 @snd_pcm_hw_param_max(%struct.snd_pcm_substream* %130, %struct.snd_pcm_hw_params* %131, i32 %132, i32 %133, i32* %19)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %125
  %138 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %139 = call i32 @kfree(%struct.snd_pcm_hw_params* %138)
  %140 = load i32, i32* %17, align 4
  store i32 %140, i32* %6, align 4
  br label %162

141:                                              ; preds = %125
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %105, %82, %73
  %144 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %12, align 8
  %145 = call i32 @kfree(%struct.snd_pcm_hw_params* %144)
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %150 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream* %149, %struct.snd_pcm_hw_params* %150, i32 %151, i32* %152)
  store i32 %153, i32* %13, align 4
  br label %160

154:                                              ; preds = %143
  %155 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %156 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = call i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream* %155, %struct.snd_pcm_hw_params* %156, i32 %157, i32* %158)
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %154, %148
  %161 = load i32, i32* %13, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %137, %88, %54
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local %struct.snd_pcm_hw_params* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_pcm_hw_param_min(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_hw_param_max(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32, i32*) #1

declare dso_local i64 @boundary_nearer(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
