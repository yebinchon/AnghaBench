; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_ida.c_ida_check_conv.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_ida.c_ida_check_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }

@IDA_BITMAP_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ida*)* @ida_check_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ida_check_conv(%struct.ida* %0) #0 {
  %2 = alloca %struct.ida*, align 8
  %3 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %51, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %7 = mul nsw i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %56

10:                                               ; preds = %4
  %11 = load %struct.ida*, %struct.ida** %2, align 8
  %12 = load %struct.ida*, %struct.ida** %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %13, 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @ida_alloc_min(%struct.ida* %12, i64 %14, i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  %19 = icmp ne i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @IDA_BUG_ON(%struct.ida* %11, i32 %20)
  %22 = load %struct.ida*, %struct.ida** %2, align 8
  %23 = load %struct.ida*, %struct.ida** %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @BITS_PER_LONG, align 8
  %26 = add i64 %24, %25
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @ida_alloc_min(%struct.ida* %23, i64 %26, i32 %27)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @BITS_PER_LONG, align 8
  %31 = add i64 %29, %30
  %32 = icmp ne i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @IDA_BUG_ON(%struct.ida* %22, i32 %33)
  %35 = load %struct.ida*, %struct.ida** %2, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  %38 = call i32 @ida_free(%struct.ida* %35, i64 %37)
  %39 = load %struct.ida*, %struct.ida** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* @BITS_PER_LONG, align 8
  %42 = add i64 %40, %41
  %43 = call i32 @ida_free(%struct.ida* %39, i64 %42)
  %44 = load %struct.ida*, %struct.ida** %2, align 8
  %45 = load %struct.ida*, %struct.ida** %2, align 8
  %46 = call i32 @ida_is_empty(%struct.ida* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @IDA_BUG_ON(%struct.ida* %44, i32 %49)
  br label %51

51:                                               ; preds = %10
  %52 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %3, align 8
  br label %4

56:                                               ; preds = %4
  store i64 0, i64* %3, align 8
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i64, i64* %3, align 8
  %59 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %60 = mul nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.ida*, %struct.ida** %2, align 8
  %65 = load %struct.ida*, %struct.ida** %2, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i64 @ida_alloc(%struct.ida* %65, i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @IDA_BUG_ON(%struct.ida* %64, i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %57

75:                                               ; preds = %57
  %76 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %87, %75
  %80 = load i64, i64* %3, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load %struct.ida*, %struct.ida** %2, align 8
  %84 = load i64, i64* %3, align 8
  %85 = sub i64 %84, 1
  %86 = call i32 @ida_free(%struct.ida* %83, i64 %85)
  br label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, -1
  store i64 %89, i64* %3, align 8
  br label %79

90:                                               ; preds = %79
  %91 = load %struct.ida*, %struct.ida** %2, align 8
  %92 = load %struct.ida*, %struct.ida** %2, align 8
  %93 = call i32 @ida_is_empty(%struct.ida* %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @IDA_BUG_ON(%struct.ida* %91, i32 %96)
  store i64 0, i64* %3, align 8
  br label %98

98:                                               ; preds = %115, %90
  %99 = load i64, i64* %3, align 8
  %100 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @BITS_PER_LONG, align 8
  %103 = add i64 %101, %102
  %104 = sub i64 %103, 4
  %105 = icmp ult i64 %99, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load %struct.ida*, %struct.ida** %2, align 8
  %108 = load %struct.ida*, %struct.ida** %2, align 8
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i64 @ida_alloc(%struct.ida* %108, i32 %109)
  %111 = load i64, i64* %3, align 8
  %112 = icmp ne i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @IDA_BUG_ON(%struct.ida* %107, i32 %113)
  br label %115

115:                                              ; preds = %106
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %3, align 8
  br label %98

118:                                              ; preds = %98
  %119 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @BITS_PER_LONG, align 8
  %122 = add i64 %120, %121
  %123 = sub i64 %122, 4
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %132, %118
  %125 = load i64, i64* %3, align 8
  %126 = icmp ugt i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %124
  %128 = load %struct.ida*, %struct.ida** %2, align 8
  %129 = load i64, i64* %3, align 8
  %130 = sub i64 %129, 1
  %131 = call i32 @ida_free(%struct.ida* %128, i64 %130)
  br label %132

132:                                              ; preds = %127
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, -1
  store i64 %134, i64* %3, align 8
  br label %124

135:                                              ; preds = %124
  %136 = load %struct.ida*, %struct.ida** %2, align 8
  %137 = load %struct.ida*, %struct.ida** %2, align 8
  %138 = call i32 @ida_is_empty(%struct.ida* %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @IDA_BUG_ON(%struct.ida* %136, i32 %141)
  ret void
}

declare dso_local i32 @IDA_BUG_ON(%struct.ida*, i32) #1

declare dso_local i64 @ida_alloc_min(%struct.ida*, i64, i32) #1

declare dso_local i32 @ida_free(%struct.ida*, i64) #1

declare dso_local i32 @ida_is_empty(%struct.ida*) #1

declare dso_local i64 @ida_alloc(%struct.ida*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
