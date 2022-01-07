; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_hook_entries_grow.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_core.c_nf_hook_entries_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_hook_ops = type { i64, i32, i32 }
%struct.nf_hook_entries = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@dummy_ops = common dso_local global %struct.nf_hook_ops zeroinitializer, align 8
@MAX_HOOK_COUNT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_hook_entries* (%struct.nf_hook_entries*, %struct.nf_hook_ops*)* @nf_hook_entries_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_hook_entries* @nf_hook_entries_grow(%struct.nf_hook_entries* %0, %struct.nf_hook_ops* %1) #0 {
  %3 = alloca %struct.nf_hook_entries*, align 8
  %4 = alloca %struct.nf_hook_entries*, align 8
  %5 = alloca %struct.nf_hook_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_hook_ops**, align 8
  %11 = alloca %struct.nf_hook_ops**, align 8
  %12 = alloca %struct.nf_hook_entries*, align 8
  %13 = alloca i32, align 4
  store %struct.nf_hook_entries* %0, %struct.nf_hook_entries** %4, align 8
  store %struct.nf_hook_ops* %1, %struct.nf_hook_ops** %5, align 8
  store %struct.nf_hook_ops** null, %struct.nf_hook_ops*** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %7, align 4
  %14 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %15 = icmp ne %struct.nf_hook_entries* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %18 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i32 [ %19, %16 ], [ 0, %20 ]
  store i32 %22, i32* %9, align 4
  %23 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %24 = icmp ne %struct.nf_hook_entries* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %27 = call %struct.nf_hook_ops** @nf_hook_entries_get_hook_ops(%struct.nf_hook_entries* %26)
  store %struct.nf_hook_ops** %27, %struct.nf_hook_ops*** %10, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %43, %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %33, i64 %35
  %37 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %36, align 8
  %38 = icmp ne %struct.nf_hook_ops* %37, @dummy_ops
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %28

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MAX_HOOK_COUNT, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @E2BIG, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.nf_hook_entries* @ERR_PTR(i32 %53)
  store %struct.nf_hook_entries* %54, %struct.nf_hook_entries** %3, align 8
  br label %188

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.nf_hook_entries* @allocate_hook_entries_size(i32 %56)
  store %struct.nf_hook_entries* %57, %struct.nf_hook_entries** %12, align 8
  %58 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %59 = icmp ne %struct.nf_hook_entries* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.nf_hook_entries* @ERR_PTR(i32 %62)
  store %struct.nf_hook_entries* %63, %struct.nf_hook_entries** %3, align 8
  br label %188

64:                                               ; preds = %55
  %65 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %66 = call %struct.nf_hook_ops** @nf_hook_entries_get_hook_ops(%struct.nf_hook_entries* %65)
  store %struct.nf_hook_ops** %66, %struct.nf_hook_ops*** %11, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %152, %78, %64
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %155

71:                                               ; preds = %67
  %72 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %10, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %72, i64 %74
  %76 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %75, align 8
  %77 = icmp eq %struct.nf_hook_ops* %76, @dummy_ops
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %67

81:                                               ; preds = %71
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %86 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %88, i64 %90
  %92 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %91, align 8
  %93 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %87, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %84, %81
  %97 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %10, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %97, i64 %99
  %101 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %100, align 8
  %102 = bitcast %struct.nf_hook_ops* %101 to i8*
  %103 = bitcast i8* %102 to %struct.nf_hook_ops*
  %104 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %11, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %104, i64 %106
  store %struct.nf_hook_ops* %103, %struct.nf_hook_ops** %107, align 8
  %108 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %109 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %4, align 8
  %115 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = bitcast %struct.TYPE_2__* %113 to i8*
  %121 = bitcast %struct.TYPE_2__* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %120, i8* align 4 %121, i64 8, i1 false)
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %152

124:                                              ; preds = %84
  %125 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %126 = bitcast %struct.nf_hook_ops* %125 to i8*
  %127 = bitcast i8* %126 to %struct.nf_hook_ops*
  %128 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %11, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %128, i64 %130
  store %struct.nf_hook_ops* %127, %struct.nf_hook_ops** %131, align 8
  %132 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %133 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %136 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  store i32 %134, i32* %141, align 4
  %142 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %143 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %146 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 4
  store i32 1, i32* %13, align 4
  br label %152

152:                                              ; preds = %124, %96
  %153 = load i32, i32* %8, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %67

155:                                              ; preds = %67
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %186, label %158

158:                                              ; preds = %155
  %159 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %160 = bitcast %struct.nf_hook_ops* %159 to i8*
  %161 = bitcast i8* %160 to %struct.nf_hook_ops*
  %162 = load %struct.nf_hook_ops**, %struct.nf_hook_ops*** %11, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.nf_hook_ops*, %struct.nf_hook_ops** %162, i64 %164
  store %struct.nf_hook_ops* %161, %struct.nf_hook_ops** %165, align 8
  %166 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %167 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %170 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %169, i32 0, i32 1
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  store i32 %168, i32* %175, align 4
  %176 = load %struct.nf_hook_ops*, %struct.nf_hook_ops** %5, align 8
  %177 = getelementptr inbounds %struct.nf_hook_ops, %struct.nf_hook_ops* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  %180 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %179, i32 0, i32 1
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i32 %178, i32* %185, align 4
  br label %186

186:                                              ; preds = %158, %155
  %187 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %12, align 8
  store %struct.nf_hook_entries* %187, %struct.nf_hook_entries** %3, align 8
  br label %188

188:                                              ; preds = %186, %60, %51
  %189 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %3, align 8
  ret %struct.nf_hook_entries* %189
}

declare dso_local %struct.nf_hook_ops** @nf_hook_entries_get_hook_ops(%struct.nf_hook_entries*) #1

declare dso_local %struct.nf_hook_entries* @ERR_PTR(i32) #1

declare dso_local %struct.nf_hook_entries* @allocate_hook_entries_size(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
