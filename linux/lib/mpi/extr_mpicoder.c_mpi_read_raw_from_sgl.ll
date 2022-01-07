; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_raw_from_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_raw_from_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i64 }
%struct.scatterlist = type { i32 }
%struct.sg_mapping_iter = type { i32, i32, i64* }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@MAX_EXTERN_MPI_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MPI: mpi too large (%u bits)\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@BYTES_PER_MPI_LIMB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @mpi_read_raw_from_sgl(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_mapping_iter, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_4__*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sg_nents_for_len(%struct.scatterlist* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %178

24:                                               ; preds = %2
  %25 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %28 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %6, %struct.scatterlist* %25, i32 %26, i32 %29)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %60, %24
  %32 = load i32, i32* %5, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i64*, i64** %15, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add i32 %48, -1
  store i32 %49, i32* %14, align 4
  %50 = load i64*, i64** %15, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %15, align 8
  br label %35

52:                                               ; preds = %43
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i64*, i64** %15, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %69

60:                                               ; preds = %55, %52
  %61 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %6)
  %62 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  store i64* %63, i64** %15, align 8
  %64 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %5, align 4
  store i32 0, i32* %12, align 4
  br label %31

69:                                               ; preds = %59, %31
  %70 = load i32, i32* %12, align 4
  %71 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul i32 %75, 8
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MAX_EXTERN_MPI_BITS, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %6)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %82)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %178

84:                                               ; preds = %69
  %85 = load i32, i32* %5, align 4
  %86 = icmp ugt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64*, i64** %15, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @count_leading_zeros(i64 %89)
  %91 = load i32, i32* @BITS_PER_LONG, align 4
  %92 = sub nsw i32 %91, 8
  %93 = sub nsw i32 %90, %92
  %94 = load i32, i32* %7, align 4
  %95 = sub i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %87, %84
  %97 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %6)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %100 = call i32 @DIV_ROUND_UP(i32 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call %struct.TYPE_4__* @mpi_alloc(i32 %101)
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %17, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %104 = icmp ne %struct.TYPE_4__* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %178

106:                                              ; preds = %96
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %3, align 8
  br label %178

119:                                              ; preds = %106
  %120 = load i32, i32* %8, align 4
  %121 = sub i32 %120, 1
  store i32 %121, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %122 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %125 = urem i32 %123, %124
  %126 = sub i32 %122, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %128 = load i32, i32* %11, align 4
  %129 = urem i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %172, %119
  %131 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %6)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %176

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  store i64* %135, i64** %15, align 8
  %136 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %6, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %169, %133
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = shl i32 %143, 8
  store i32 %144, i32* %16, align 4
  %145 = load i64*, i64** %15, align 8
  %146 = getelementptr inbounds i64, i64* %145, i32 1
  store i64* %146, i64** %15, align 8
  %147 = load i64, i64* %145, align 8
  %148 = load i32, i32* %16, align 4
  %149 = sext i32 %148 to i64
  %150 = or i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 1
  %156 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %157 = urem i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %142
  %160 = load i32, i32* %16, align 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %10, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %160, i32* %167, align 4
  store i32 0, i32* %16, align 4
  br label %168

168:                                              ; preds = %159, %142
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %138

172:                                              ; preds = %138
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %130

176:                                              ; preds = %130
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %177, %struct.TYPE_4__** %3, align 8
  br label %178

178:                                              ; preds = %176, %117, %105, %80, %23
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %179
}

declare dso_local i32 @sg_nents_for_len(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, %struct.scatterlist*, i32, i32) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @count_leading_zeros(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_4__* @mpi_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
