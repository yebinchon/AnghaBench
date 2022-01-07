; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_setup_pcm_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_setup_pcm_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_pcm_stream*, %struct.hda_pcm_stream*, %struct.hda_pcm_stream*, i64)* @setup_pcm_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pcm_stream(%struct.hda_pcm_stream* %0, %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream* %2, i64 %3) #0 {
  %5 = alloca %struct.hda_pcm_stream*, align 8
  %6 = alloca %struct.hda_pcm_stream*, align 8
  %7 = alloca %struct.hda_pcm_stream*, align 8
  %8 = alloca i64, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %5, align 8
  store %struct.hda_pcm_stream* %1, %struct.hda_pcm_stream** %6, align 8
  store %struct.hda_pcm_stream* %2, %struct.hda_pcm_stream** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %10 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %6, align 8
  %11 = bitcast %struct.hda_pcm_stream* %9 to i8*
  %12 = bitcast %struct.hda_pcm_stream* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 56, i1 false)
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %18 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %17, i32 0, i32 6
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %21 = icmp ne %struct.hda_pcm_stream* %20, null
  br i1 %21, label %22, label %89

22:                                               ; preds = %19
  %23 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %24 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %29 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %32 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %35 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %40 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %43 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %42, i32 0, i32 4
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %46 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %51 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %54 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %57 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %62 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %65 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %68 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %73 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %76 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %79 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %7, align 8
  %84 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %5, align 8
  %87 = getelementptr inbounds %struct.hda_pcm_stream, %struct.hda_pcm_stream* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
