; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_bitmap_show.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c_sbitmap_bitmap_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.seq_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbitmap_bitmap_show(%struct.sbitmap* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.sbitmap*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sbitmap* %0, %struct.sbitmap** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %79, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %15 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %20 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @READ_ONCE(i32 %26)
  %28 = ptrtoint i8* %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %30 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @READ_ONCE(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %70, %18
  %40 = load i32, i32* %10, align 4
  %41 = icmp ugt i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 8, %43
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = and i64 %47, %51
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 %52, %54
  %56 = load i64, i64* %5, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @emit_byte(%struct.seq_file* %64, i32 %65, i64 %66)
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %63, %42
  %71 = load i32, i32* %11, align 4
  %72 = load i64, i64* %9, align 8
  %73 = zext i32 %71 to i64
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %39

78:                                               ; preds = %39
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %12

82:                                               ; preds = %12
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @emit_byte(%struct.seq_file* %86, i32 %87, i64 %88)
  %90 = load i32, i32* %7, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %82
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %97 = call i32 @seq_putc(%struct.seq_file* %96, i8 signext 10)
  br label %98

98:                                               ; preds = %95, %92
  ret void
}

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @emit_byte(%struct.seq_file*, i32, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
