; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_strncmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-core.c_utf8_strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unicode_map = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.utf8data = type { i32 }
%struct.utf8cursor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_strncmp(%struct.unicode_map* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unicode_map*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.utf8data*, align 8
  %9 = alloca %struct.utf8cursor, align 4
  %10 = alloca %struct.utf8cursor, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.unicode_map* %0, %struct.unicode_map** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %13 = load %struct.unicode_map*, %struct.unicode_map** %5, align 8
  %14 = getelementptr inbounds %struct.unicode_map, %struct.unicode_map* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.utf8data* @utf8nfdi(i32 %15)
  store %struct.utf8data* %16, %struct.utf8data** %8, align 8
  %17 = load %struct.utf8data*, %struct.utf8data** %8, align 8
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qstr*, %struct.qstr** %6, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @utf8ncursor(%struct.utf8cursor* %9, %struct.utf8data* %17, i32 %20, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %64

29:                                               ; preds = %3
  %30 = load %struct.utf8data*, %struct.utf8data** %8, align 8
  %31 = load %struct.qstr*, %struct.qstr** %7, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.qstr*, %struct.qstr** %7, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @utf8ncursor(%struct.utf8cursor* %10, %struct.utf8data* %30, i32 %33, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %60, %42
  %44 = call i32 @utf8byte(%struct.utf8cursor* %9)
  store i32 %44, i32* %11, align 4
  %45 = call i32 @utf8byte(%struct.utf8cursor* %10)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48, %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %64

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %43, label %63

63:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %58, %51, %39, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.utf8data* @utf8nfdi(i32) #1

declare dso_local i64 @utf8ncursor(%struct.utf8cursor*, %struct.utf8data*, i32, i32) #1

declare dso_local i32 @utf8byte(%struct.utf8cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
