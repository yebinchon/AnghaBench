; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_int_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.btf_type = type { i32 }
%struct.seq_file = type { i32 }

@BTF_INT_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf*, %struct.btf_type*, i32, i8*, i32, %struct.seq_file*)* @btf_int_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btf_int_seq_show(%struct.btf* %0, %struct.btf_type* %1, i32 %2, i8* %3, i32 %4, %struct.seq_file* %5) #0 {
  %7 = alloca %struct.btf*, align 8
  %8 = alloca %struct.btf_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.seq_file*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %7, align 8
  store %struct.btf_type* %1, %struct.btf_type** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.seq_file* %5, %struct.seq_file** %12, align 8
  %17 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %18 = call i32 @btf_type_int(%struct.btf_type* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @BTF_INT_ENCODING(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @BTF_INT_SIGNED, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @BTF_INT_BITS(i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @BTF_INT_OFFSET(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %16, align 4
  %34 = call i64 @BITS_PER_BYTE_MASKED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32, %28, %6
  %37 = load %struct.btf*, %struct.btf** %7, align 8
  %38 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %42 = call i32 @btf_int_bits_seq_show(%struct.btf* %37, %struct.btf_type* %38, i8* %39, i32 %40, %struct.seq_file* %41)
  br label %120

43:                                               ; preds = %32
  %44 = load i32, i32* %16, align 4
  switch i32 %44, label %113 [
    i32 128, label %45
    i32 64, label %49
    i32 32, label %65
    i32 16, label %81
    i32 8, label %97
  ]

45:                                               ; preds = %43
  %46 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @btf_int128_print(%struct.seq_file* %46, i8* %47)
  br label %120

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %64

58:                                               ; preds = %49
  %59 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %52
  br label %120

65:                                               ; preds = %43
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  br label %80

74:                                               ; preds = %65
  %75 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %68
  br label %120

81:                                               ; preds = %43
  %82 = load i32, i32* %15, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %96

90:                                               ; preds = %81
  %91 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  br label %120

97:                                               ; preds = %43
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @seq_printf(%struct.seq_file* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %112

106:                                              ; preds = %97
  %107 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %120

113:                                              ; preds = %43
  %114 = load %struct.btf*, %struct.btf** %7, align 8
  %115 = load %struct.btf_type*, %struct.btf_type** %8, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load %struct.seq_file*, %struct.seq_file** %12, align 8
  %119 = call i32 @btf_int_bits_seq_show(%struct.btf* %114, %struct.btf_type* %115, i8* %116, i32 %117, %struct.seq_file* %118)
  br label %120

120:                                              ; preds = %36, %113, %112, %96, %80, %64, %45
  ret void
}

declare dso_local i32 @btf_type_int(%struct.btf_type*) #1

declare dso_local i32 @BTF_INT_ENCODING(i32) #1

declare dso_local i32 @BTF_INT_BITS(i32) #1

declare dso_local i64 @BTF_INT_OFFSET(i32) #1

declare dso_local i64 @BITS_PER_BYTE_MASKED(i32) #1

declare dso_local i32 @btf_int_bits_seq_show(%struct.btf*, %struct.btf_type*, i8*, i32, %struct.seq_file*) #1

declare dso_local i32 @btf_int128_print(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
