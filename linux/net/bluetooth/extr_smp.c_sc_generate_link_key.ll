; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_generate_link_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_generate_link_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32*, i32, i32*, i32 }

@__const.sc_generate_link_key.lebr = private unnamed_addr constant [4 x i32] [i32 114, i32 98, i32 101, i32 108], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMP_FLAG_CT2 = common dso_local global i32 0, align 4
@__const.sc_generate_link_key.tmp1 = private unnamed_addr constant [4 x i32] [i32 49, i32 112, i32 109, i32 116], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @sc_generate_link_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_generate_link_key(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca [4 x i32], align 16
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %6 = bitcast [4 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @__const.sc_generate_link_key.lebr to i8*), i64 16, i1 false)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kzalloc(i32 16, i32 %7)
  %9 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %10 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %12 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %91

16:                                               ; preds = %1
  %17 = load i32, i32* @SMP_FLAG_CT2, align 4
  %18 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %19 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %18, i32 0, i32 3
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %16
  %23 = bitcast [16 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 64, i1 false)
  %24 = bitcast i8* %23 to <{ i32, i32, i32, i32, [12 x i32] }>*
  %25 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %24, i32 0, i32 0
  store i32 49, i32* %25, align 16
  %26 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %24, i32 0, i32 1
  store i32 112, i32* %26, align 4
  %27 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %24, i32 0, i32 2
  store i32 109, i32* %27, align 8
  %28 = getelementptr inbounds <{ i32, i32, i32, i32, [12 x i32] }>, <{ i32, i32, i32, i32, [12 x i32] }>* %24, i32 0, i32 3
  store i32 116, i32* %28, align 4
  %29 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %30 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %33 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %36 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %37 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @smp_h7(i32 %31, i32* %34, i32* %35, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %43 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kzfree(i32* %44)
  %46 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %47 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %91

48:                                               ; preds = %22
  br label %71

49:                                               ; preds = %16
  %50 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([4 x i32]* @__const.sc_generate_link_key.tmp1 to i8*), i64 16, i1 false)
  %51 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %55 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %58 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %59 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @smp_h6(i32 %53, i32* %56, i32* %57, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %65 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @kzfree(i32* %66)
  %68 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %69 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %91

70:                                               ; preds = %49
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %73 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %76 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %79 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %80 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @smp_h6(i32 %74, i32* %77, i32* %78, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %71
  %85 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %86 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @kzfree(i32* %87)
  %89 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %90 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %89, i32 0, i32 0
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %15, %41, %63, %84, %71
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @smp_h7(i32, i32*, i32*, i32*) #2

declare dso_local i32 @kzfree(i32*) #2

declare dso_local i64 @smp_h6(i32, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
