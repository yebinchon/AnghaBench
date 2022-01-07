; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__mark_jump_targets.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_annotation__mark_jump_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.annotation = type { i64, i32, %struct.annotation_line** }
%struct.annotation_line = type { i64 }
%struct.symbol = type { i32 }
%struct.disasm_line = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"@plt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @annotation__mark_jump_targets(%struct.annotation* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.annotation*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.annotation_line*, align 8
  %8 = alloca %struct.disasm_line*, align 8
  store %struct.annotation* %0, %struct.annotation** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %9 = load %struct.symbol*, %struct.symbol** %4, align 8
  %10 = call i64 @symbol__size(%struct.symbol* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strstr(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %73

17:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.annotation*, %struct.annotation** %3, align 8
  %24 = getelementptr inbounds %struct.annotation, %struct.annotation* %23, i32 0, i32 2
  %25 = load %struct.annotation_line**, %struct.annotation_line*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.annotation_line*, %struct.annotation_line** %25, i64 %26
  %28 = load %struct.annotation_line*, %struct.annotation_line** %27, align 8
  store %struct.annotation_line* %28, %struct.annotation_line** %7, align 8
  %29 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %30 = call %struct.disasm_line* @disasm_line(%struct.annotation_line* %29)
  store %struct.disasm_line* %30, %struct.disasm_line** %8, align 8
  %31 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %32 = load %struct.symbol*, %struct.symbol** %4, align 8
  %33 = call i32 @disasm_line__is_valid_local_jump(%struct.disasm_line* %31, %struct.symbol* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %70

36:                                               ; preds = %22
  %37 = load %struct.annotation*, %struct.annotation** %3, align 8
  %38 = getelementptr inbounds %struct.annotation, %struct.annotation* %37, i32 0, i32 2
  %39 = load %struct.annotation_line**, %struct.annotation_line*** %38, align 8
  %40 = load %struct.disasm_line*, %struct.disasm_line** %8, align 8
  %41 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.annotation_line*, %struct.annotation_line** %39, i64 %44
  %46 = load %struct.annotation_line*, %struct.annotation_line** %45, align 8
  store %struct.annotation_line* %46, %struct.annotation_line** %7, align 8
  %47 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %48 = icmp eq %struct.annotation_line* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %70

50:                                               ; preds = %36
  %51 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %52 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.annotation*, %struct.annotation** %3, align 8
  %56 = getelementptr inbounds %struct.annotation, %struct.annotation* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.annotation_line*, %struct.annotation_line** %7, align 8
  %61 = getelementptr inbounds %struct.annotation_line, %struct.annotation_line* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.annotation*, %struct.annotation** %3, align 8
  %64 = getelementptr inbounds %struct.annotation, %struct.annotation* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %50
  %66 = load %struct.annotation*, %struct.annotation** %3, align 8
  %67 = getelementptr inbounds %struct.annotation, %struct.annotation* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %49, %35
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  br label %18

73:                                               ; preds = %16, %18
  ret void
}

declare dso_local i64 @symbol__size(%struct.symbol*) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local %struct.disasm_line* @disasm_line(%struct.annotation_line*) #1

declare dso_local i32 @disasm_line__is_valid_local_jump(%struct.disasm_line*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
