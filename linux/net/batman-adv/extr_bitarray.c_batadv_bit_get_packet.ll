; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bitarray.c_batadv_bit_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bitarray.c_batadv_bit_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }

@BATADV_TQ_LOCAL_WINDOW_SIZE = common dso_local global i64 0, align 8
@BATADV_EXPECTED_SEQNO_RANGE = common dso_local global i64 0, align 8
@BATADV_DBG_BATMAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"We missed a lot of packets (%i) !\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Other host probably restarted!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_bit_get_packet(i8* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.batadv_priv*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.batadv_priv*
  store %struct.batadv_priv* %12, %struct.batadv_priv** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 8
  %18 = sub nsw i64 0, %17
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 0, %25
  %27 = call i32 @batadv_set_bit(i64* %24, i64 %26)
  br label %28

28:                                               ; preds = %23, %20
  store i32 0, i32* %5, align 4
  br label %82

29:                                               ; preds = %15, %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @batadv_bitmap_shift_left(i64* %37, i64 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64*, i64** %7, align 8
  %44 = call i32 @batadv_set_bit(i64* %43, i64 0)
  br label %45

45:                                               ; preds = %42, %36
  store i32 1, i32* %5, align 4
  br label %82

46:                                               ; preds = %32, %29
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @BATADV_EXPECTED_SEQNO_RANGE, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %56 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %55, %struct.batadv_priv* %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %58)
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 8
  %62 = call i32 @bitmap_zero(i64* %60, i64 %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i64*, i64** %7, align 8
  %67 = call i32 @batadv_set_bit(i64* %66, i64 0)
  br label %68

68:                                               ; preds = %65, %54
  store i32 1, i32* %5, align 4
  br label %82

69:                                               ; preds = %50, %46
  %70 = load i32, i32* @BATADV_DBG_BATMAN, align 4
  %71 = load %struct.batadv_priv*, %struct.batadv_priv** %10, align 8
  %72 = call i32 (i32, %struct.batadv_priv*, i8*, ...) @batadv_dbg(i32 %70, %struct.batadv_priv* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 8
  %75 = call i32 @bitmap_zero(i64* %73, i64 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i64*, i64** %7, align 8
  %80 = call i32 @batadv_set_bit(i64* %79, i64 0)
  br label %81

81:                                               ; preds = %78, %69
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %68, %45, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @batadv_set_bit(i64*, i64) #1

declare dso_local i32 @batadv_bitmap_shift_left(i64*, i64) #1

declare dso_local i32 @batadv_dbg(i32, %struct.batadv_priv*, i8*, ...) #1

declare dso_local i32 @bitmap_zero(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
