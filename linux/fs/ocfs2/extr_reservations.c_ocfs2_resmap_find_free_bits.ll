; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_find_free_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_reservations.c_ocfs2_resmap_find_free_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_reservation_map = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_reservation_map*, i32, i32, i32, i32*, i32*)* @ocfs2_resmap_find_free_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_resmap_find_free_bits(%struct.ocfs2_reservation_map* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_reservation_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ocfs2_reservation_map* %0, %struct.ocfs2_reservation_map** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %14, align 8
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @trace_ocfs2_resmap_find_free_bits_begin(i32 %23, i32 %24, i32 %25, i32 %28)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %18, align 4
  br label %31

31:                                               ; preds = %72, %6
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_reservation_map, %struct.ocfs2_reservation_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @ocfs2_find_next_zero_bit(i8* %32, i32 %35, i32 %36)
  store i32 %37, i32* %17, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %73

39:                                               ; preds = %31
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %41, %42
  %44 = icmp uge i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %73

46:                                               ; preds = %39
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  br label %58

55:                                               ; preds = %46
  store i32 1, i32* %19, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp uge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %73

72:                                               ; preds = %67
  br label %31

73:                                               ; preds = %71, %45, %31
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %93

77:                                               ; preds = %73
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp uge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %16, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @trace_ocfs2_resmap_find_free_bits_end(i32 %88, i32 %89)
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %83, %76
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @trace_ocfs2_resmap_find_free_bits_begin(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_resmap_find_free_bits_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
