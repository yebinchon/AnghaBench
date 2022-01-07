; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_free.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_idr.c_ida_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida = type { i32 }
%struct.ida_bitmap = type { i32 }

@xas = common dso_local global i32 0, align 4
@IDA_BITMAP_BITS = common dso_local global i32 0, align 4
@BITS_PER_XA_VALUE = common dso_local global i32 0, align 4
@XA_FREE_MARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ida_free called for id=%d which is not allocated.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_free(%struct.ida* %0, i32 %1) #0 {
  %3 = alloca %struct.ida*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ida_bitmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ida* %0, %struct.ida** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @xas, align 4
  %10 = load %struct.ida*, %struct.ida** %3, align 8
  %11 = getelementptr inbounds %struct.ida, %struct.ida* %10, i32 0, i32 0
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %14 = udiv i32 %12, %13
  %15 = call i32 @XA_STATE(i32 %9, i32* %11, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @xas_lock_irqsave(i32* @xas, i64 %23)
  %25 = call %struct.ida_bitmap* @xas_load(i32* @xas)
  store %struct.ida_bitmap* %25, %struct.ida_bitmap** %6, align 8
  %26 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %27 = call i64 @xa_is_value(%struct.ida_bitmap* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %2
  %30 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %31 = call i64 @xa_to_value(%struct.ida_bitmap* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @BITS_PER_XA_VALUE, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %89

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 1, %39
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %89

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 1, %46
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %83

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = call i32* @xa_mk_value(i64 %55)
  %57 = call i32 @xas_store(i32* @xas, i32* %56)
  br label %86

58:                                               ; preds = %2
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %61 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @test_bit(i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %89

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %69 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @__clear_bit(i32 %67, i32 %70)
  %72 = load i32, i32* @XA_FREE_MARK, align 4
  %73 = call i32 @xas_set_mark(i32* @xas, i32 %72)
  %74 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %75 = getelementptr inbounds %struct.ida_bitmap, %struct.ida_bitmap* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IDA_BITMAP_BITS, align 4
  %78 = call i64 @bitmap_empty(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load %struct.ida_bitmap*, %struct.ida_bitmap** %6, align 8
  %82 = call i32 @kfree(%struct.ida_bitmap* %81)
  br label %83

83:                                               ; preds = %80, %53
  %84 = call i32 @xas_store(i32* @xas, i32* null)
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85, %54
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @xas_unlock_irqrestore(i32* @xas, i64 %87)
  br label %94

89:                                               ; preds = %65, %43, %35
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @xas_unlock_irqrestore(i32* @xas, i64 %90)
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  ret void
}

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xas_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ida_bitmap* @xas_load(i32*) #1

declare dso_local i64 @xa_is_value(%struct.ida_bitmap*) #1

declare dso_local i64 @xa_to_value(%struct.ida_bitmap*) #1

declare dso_local i32 @xas_store(i32*, i32*) #1

declare dso_local i32* @xa_mk_value(i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @xas_set_mark(i32*, i32) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @kfree(%struct.ida_bitmap*) #1

declare dso_local i32 @xas_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
