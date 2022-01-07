; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_mono.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_mono.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@logo_height = common dso_local global i32 0, align 4
@logo_width = common dso_local global i32 0, align 4
@logo_data = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [26 x i8] c"Image must be monochrome\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_logo_mono to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_logo_mono() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @logo_height, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %43, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @logo_width, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @logo_data, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @is_black(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %14
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @logo_data, align 8
  %29 = load i32, i32* %1, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @is_white(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %27
  %41 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %27, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %2, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %10

46:                                               ; preds = %10
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %5

50:                                               ; preds = %5
  %51 = call i32 (...) @write_header()
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %103, %50
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @logo_height, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %99, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @logo_width, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %57
  store i8 0, i8* %3, align 1
  store i8 -128, i8* %4, align 1
  br label %62

62:                                               ; preds = %92, %61
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @logo_width, align 4
  %69 = icmp ult i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %99

72:                                               ; preds = %70
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @logo_data, align 8
  %74 = load i32, i32* %1, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* %2, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %72
  %85 = load i8, i8* %4, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* %3, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %88, %86
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %3, align 1
  br label %91

91:                                               ; preds = %84, %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %2, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %2, align 4
  %95 = load i8, i8* %4, align 1
  %96 = zext i8 %95 to i32
  %97 = ashr i32 %96, 1
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %4, align 1
  br label %62

99:                                               ; preds = %70
  %100 = load i8, i8* %3, align 1
  %101 = call i32 @write_hex(i8 zeroext %100)
  br label %57

102:                                              ; preds = %57
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %1, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %52

106:                                              ; preds = %52
  %107 = call i32 (...) @write_footer()
  ret void
}

declare dso_local i32 @is_black(i64) #1

declare dso_local i32 @is_white(i64) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32 @write_hex(i8 zeroext) #1

declare dso_local i32 @write_footer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
