; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_connect_dai.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_connect_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr = type { i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src.0*)* }
%struct.src = type opaque
%struct.src.0 = type opaque
%struct.dai = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct.dai*)*, i32 (%struct.dai*, i32)*, i32 (%struct.dai*, i32)*, i32 (%struct.dai*, i32*)*, i32 (%struct.dai*, i32*)* }
%struct.TYPE_5__ = type { %struct.rsc, %struct.rsc }
%struct.rsc = type { i32 }
%struct.src.1 = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.src.1*)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)* }
%struct.srcimp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.srcimp*, %struct.src.1*, %struct.rsc*)* }

@SRC_STATE_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.src_mgr*, %struct.dai*, %struct.src.1**, %struct.srcimp**)* @atc_connect_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_connect_dai(%struct.src_mgr* %0, %struct.dai* %1, %struct.src.1** %2, %struct.srcimp** %3) #0 {
  %5 = alloca %struct.src_mgr*, align 8
  %6 = alloca %struct.dai*, align 8
  %7 = alloca %struct.src.1**, align 8
  %8 = alloca %struct.srcimp**, align 8
  %9 = alloca [2 x %struct.rsc*], align 16
  %10 = alloca %struct.src.1*, align 8
  %11 = alloca %struct.srcimp*, align 8
  %12 = alloca i32, align 4
  store %struct.src_mgr* %0, %struct.src_mgr** %5, align 8
  store %struct.dai* %1, %struct.dai** %6, align 8
  store %struct.src.1** %2, %struct.src.1*** %7, align 8
  store %struct.srcimp** %3, %struct.srcimp*** %8, align 8
  %13 = bitcast [2 x %struct.rsc*]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  %14 = load %struct.dai*, %struct.dai** %6, align 8
  %15 = getelementptr inbounds %struct.dai, %struct.dai* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds [2 x %struct.rsc*], [2 x %struct.rsc*]* %9, i64 0, i64 0
  store %struct.rsc* %16, %struct.rsc** %17, align 16
  %18 = load %struct.dai*, %struct.dai** %6, align 8
  %19 = getelementptr inbounds %struct.dai, %struct.dai* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.rsc*], [2 x %struct.rsc*]* %9, i64 0, i64 1
  store %struct.rsc* %20, %struct.rsc** %21, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %55, %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.src.1**, %struct.src.1*** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.src.1*, %struct.src.1** %26, i64 %28
  %30 = load %struct.src.1*, %struct.src.1** %29, align 8
  store %struct.src.1* %30, %struct.src.1** %10, align 8
  %31 = load %struct.srcimp**, %struct.srcimp*** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.srcimp*, %struct.srcimp** %31, i64 %33
  %35 = load %struct.srcimp*, %struct.srcimp** %34, align 8
  store %struct.srcimp* %35, %struct.srcimp** %11, align 8
  %36 = load %struct.srcimp*, %struct.srcimp** %11, align 8
  %37 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32 (%struct.srcimp*, %struct.src.1*, %struct.rsc*)*, i32 (%struct.srcimp*, %struct.src.1*, %struct.rsc*)** %39, align 8
  %41 = load %struct.srcimp*, %struct.srcimp** %11, align 8
  %42 = load %struct.src.1*, %struct.src.1** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x %struct.rsc*], [2 x %struct.rsc*]* %9, i64 0, i64 %44
  %46 = load %struct.rsc*, %struct.rsc** %45, align 8
  %47 = call i32 %40(%struct.srcimp* %41, %struct.src.1* %42, %struct.rsc* %46)
  %48 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %49 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %48, i32 0, i32 2
  %50 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %49, align 8
  %51 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %52 = load %struct.src.1*, %struct.src.1** %10, align 8
  %53 = bitcast %struct.src.1* %52 to %struct.src.0*
  %54 = call i32 %50(%struct.src_mgr* %51, %struct.src.0* %53)
  br label %55

55:                                               ; preds = %25
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %60 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %59, i32 0, i32 0
  %61 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %60, align 8
  %62 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %63 = call i32 %61(%struct.src_mgr* %62)
  %64 = load %struct.src.1**, %struct.src.1*** %7, align 8
  %65 = getelementptr inbounds %struct.src.1*, %struct.src.1** %64, i64 0
  %66 = load %struct.src.1*, %struct.src.1** %65, align 8
  store %struct.src.1* %66, %struct.src.1** %10, align 8
  %67 = load %struct.src.1*, %struct.src.1** %10, align 8
  %68 = getelementptr inbounds %struct.src.1, %struct.src.1* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %70, align 8
  %72 = load %struct.src.1*, %struct.src.1** %10, align 8
  %73 = call i32 %71(%struct.src.1* %72, i32 1)
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %105, %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load %struct.src.1**, %struct.src.1*** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.src.1*, %struct.src.1** %78, i64 %80
  %82 = load %struct.src.1*, %struct.src.1** %81, align 8
  store %struct.src.1* %82, %struct.src.1** %10, align 8
  %83 = load %struct.src.1*, %struct.src.1** %10, align 8
  %84 = getelementptr inbounds %struct.src.1, %struct.src.1* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %86, align 8
  %88 = load %struct.src.1*, %struct.src.1** %10, align 8
  %89 = load i32, i32* @SRC_STATE_RUN, align 4
  %90 = call i32 %87(%struct.src.1* %88, i32 %89)
  %91 = load %struct.src.1*, %struct.src.1** %10, align 8
  %92 = getelementptr inbounds %struct.src.1, %struct.src.1* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32 (%struct.src.1*)*, i32 (%struct.src.1*)** %94, align 8
  %96 = load %struct.src.1*, %struct.src.1** %10, align 8
  %97 = call i32 %95(%struct.src.1* %96)
  %98 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %99 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %98, i32 0, i32 1
  %100 = load i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src*)** %99, align 8
  %101 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %102 = load %struct.src.1*, %struct.src.1** %10, align 8
  %103 = bitcast %struct.src.1* %102 to %struct.src*
  %104 = call i32 %100(%struct.src_mgr* %101, %struct.src* %103)
  br label %105

105:                                              ; preds = %77
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %74

108:                                              ; preds = %74
  %109 = load %struct.dai*, %struct.dai** %6, align 8
  %110 = getelementptr inbounds %struct.dai, %struct.dai* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 4
  %113 = load i32 (%struct.dai*, i32*)*, i32 (%struct.dai*, i32*)** %112, align 8
  %114 = load %struct.dai*, %struct.dai** %6, align 8
  %115 = load %struct.src.1**, %struct.src.1*** %7, align 8
  %116 = getelementptr inbounds %struct.src.1*, %struct.src.1** %115, i64 0
  %117 = load %struct.src.1*, %struct.src.1** %116, align 8
  %118 = getelementptr inbounds %struct.src.1, %struct.src.1* %117, i32 0, i32 0
  %119 = call i32 %113(%struct.dai* %114, i32* %118)
  %120 = load %struct.dai*, %struct.dai** %6, align 8
  %121 = getelementptr inbounds %struct.dai, %struct.dai* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32 (%struct.dai*, i32*)*, i32 (%struct.dai*, i32*)** %123, align 8
  %125 = load %struct.dai*, %struct.dai** %6, align 8
  %126 = load %struct.src.1**, %struct.src.1*** %7, align 8
  %127 = getelementptr inbounds %struct.src.1*, %struct.src.1** %126, i64 1
  %128 = load %struct.src.1*, %struct.src.1** %127, align 8
  %129 = getelementptr inbounds %struct.src.1, %struct.src.1* %128, i32 0, i32 0
  %130 = call i32 %124(%struct.dai* %125, i32* %129)
  %131 = load %struct.dai*, %struct.dai** %6, align 8
  %132 = getelementptr inbounds %struct.dai, %struct.dai* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32 (%struct.dai*, i32)*, i32 (%struct.dai*, i32)** %134, align 8
  %136 = load %struct.dai*, %struct.dai** %6, align 8
  %137 = call i32 %135(%struct.dai* %136, i32 1)
  %138 = load %struct.dai*, %struct.dai** %6, align 8
  %139 = getelementptr inbounds %struct.dai, %struct.dai* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load i32 (%struct.dai*, i32)*, i32 (%struct.dai*, i32)** %141, align 8
  %143 = load %struct.dai*, %struct.dai** %6, align 8
  %144 = call i32 %142(%struct.dai* %143, i32 1)
  %145 = load %struct.dai*, %struct.dai** %6, align 8
  %146 = getelementptr inbounds %struct.dai, %struct.dai* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32 (%struct.dai*)*, i32 (%struct.dai*)** %148, align 8
  %150 = load %struct.dai*, %struct.dai** %6, align 8
  %151 = call i32 %149(%struct.dai* %150)
  %152 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %153 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %152, i32 0, i32 0
  %154 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %153, align 8
  %155 = load %struct.src_mgr*, %struct.src_mgr** %5, align 8
  %156 = call i32 %154(%struct.src_mgr* %155)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
