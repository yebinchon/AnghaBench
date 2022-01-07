; ModuleID = '/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_raw_data.c'
source_filename = "/home/carl/AnghaBench/linux/lib/mpi/extr_mpicoder.c_mpi_read_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i64 }

@MAX_EXTERN_MPI_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"MPI: mpi too large (%u bits)\0A\00", align 1
@BITS_PER_LONG = common dso_local global i32 0, align 4
@BYTES_PER_MPI_LIMB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @mpi_read_raw_data(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %5, align 8
  br label %15

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX_EXTERN_MPI_BITS, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %123

40:                                               ; preds = %30
  %41 = load i64, i64* %5, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @count_leading_zeros(i64 %46)
  %48 = load i32, i32* @BITS_PER_LONG, align 4
  %49 = sub nsw i32 %48, 8
  %50 = sub nsw i32 %47, %49
  %51 = load i32, i32* %9, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %43, %40
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @BYTES_PER_MPI_LIMB, align 8
  %56 = call i32 @DIV_ROUND_UP(i64 %54, i64 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call %struct.TYPE_4__* @mpi_alloc(i32 %57)
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %12, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %60 = icmp ne %struct.TYPE_4__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %123

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* %5, align 8
  %72 = icmp ugt i64 %71, 0
  br i1 %72, label %73, label %121

73:                                               ; preds = %62
  %74 = load i64, i64* @BYTES_PER_MPI_LIMB, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @BYTES_PER_MPI_LIMB, align 8
  %77 = urem i64 %75, %76
  %78 = sub i64 %74, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %7, align 4
  %80 = load i64, i64* @BYTES_PER_MPI_LIMB, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = urem i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %117, %73
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* @BYTES_PER_MPI_LIMB, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 %96, 8
  store i32 %97, i32* %11, align 4
  %98 = load i64*, i64** %6, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %6, align 8
  %100 = load i64, i64* %98, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = or i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %90

108:                                              ; preds = %90
  store i32 0, i32* %7, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %109, i32* %116, align 4
  br label %117

117:                                              ; preds = %108
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %8, align 4
  br label %86

120:                                              ; preds = %86
  br label %121

121:                                              ; preds = %120, %62
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %3, align 8
  br label %123

123:                                              ; preds = %121, %61, %37
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %124
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @count_leading_zeros(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.TYPE_4__* @mpi_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
