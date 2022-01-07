; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_setup_src_node_conf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_setup_src_node_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, i32 }
%struct.ct_atc_pcm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.src_node_conf_t = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_atc*, %struct.ct_atc_pcm*, %struct.src_node_conf_t*, i32*)* @setup_src_node_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_src_node_conf(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1, %struct.src_node_conf_t* %2, i32* %3) #0 {
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca %struct.ct_atc_pcm*, align 8
  %7 = alloca %struct.src_node_conf_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %5, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %6, align 8
  store %struct.src_node_conf_t* %2, %struct.src_node_conf_t** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %11 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %14 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %18 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @atc_get_pitch(i32 %16, i32 %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %28 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 1, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %4
  %32 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %42 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %41, i64 0
  %43 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %45 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %44, i64 0
  %46 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %48 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %47, i64 0
  %49 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %51 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %50, i64 0
  %52 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %54 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %53, i64 0
  %55 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %54, i32 0, i32 4
  store i32 1, i32* %55, align 4
  br label %157

56:                                               ; preds = %4
  %57 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %58 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 2, %59
  br i1 %60, label %61, label %156

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = icmp ult i32 134217728, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %61
  %65 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %66 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 24
  %69 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %70 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %69, i64 0
  %71 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %73 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %72, i64 0
  %74 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %76 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %75, i64 0
  %77 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %79 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %82 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %81, i64 0
  %83 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %85 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %84, i64 0
  %86 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %85, i32 0, i32 4
  store i32 0, i32* %86, align 4
  %87 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %88 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %91 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @atc_get_pitch(i32 %89, i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %100 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %99, i64 1
  %101 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %103 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %102, i64 1
  %104 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %103, i32 0, i32 2
  store i32 1, i32* %104, align 4
  %105 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %106 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %105, i64 1
  %107 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %109 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %108, i64 1
  %110 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %109, i32 0, i32 3
  store i32 1, i32* %110, align 4
  %111 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %112 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %111, i64 1
  %113 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %112, i32 0, i32 4
  store i32 1, i32* %113, align 4
  %114 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %115 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, 2
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  br label %155

123:                                              ; preds = %61
  %124 = load i32, i32* %9, align 4
  %125 = icmp ult i32 16777216, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %129 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %128, i64 0
  %130 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %129, i32 0, i32 0
  store i32 %127, i32* %130, align 4
  %131 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %132 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %135 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %134, i64 0
  %136 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %135, i32 0, i32 2
  store i32 %133, i32* %136, align 4
  %137 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %138 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %137, i64 0
  %139 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %138, i32 0, i32 1
  store i32 %133, i32* %139, align 4
  %140 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %141 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %140, i64 0
  %142 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %141, i32 0, i32 3
  store i32 %133, i32* %142, align 4
  %143 = load %struct.src_node_conf_t*, %struct.src_node_conf_t** %7, align 8
  %144 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %143, i64 0
  %145 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %144, i32 0, i32 4
  store i32 1, i32* %145, align 4
  %146 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %6, align 8
  %147 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  br label %154

154:                                              ; preds = %126, %123
  br label %155

155:                                              ; preds = %154, %64
  br label %156

156:                                              ; preds = %155, %56
  br label %157

157:                                              ; preds = %156, %31
  ret void
}

declare dso_local i8* @atc_get_pitch(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
