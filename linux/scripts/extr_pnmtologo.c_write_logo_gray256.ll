; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_gray256.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_pnmtologo.c_write_logo_gray256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@logo_height = common dso_local global i32 0, align 4
@logo_width = common dso_local global i32 0, align 4
@logo_data = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Image must be grayscale\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_logo_gray256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_logo_gray256() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @logo_height, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %28, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @logo_width, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @logo_data, align 8
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %13, i64 %15
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_gray(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %12
  %26 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %8

31:                                               ; preds = %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3

35:                                               ; preds = %3
  %36 = call i32 (...) @write_header()
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %62, %35
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* @logo_height, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @logo_width, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @logo_data, align 8
  %48 = load i32, i32* %1, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %2, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_hex(i32 %56)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %2, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %42

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %37

65:                                               ; preds = %37
  %66 = call i32 (...) @write_footer()
  ret void
}

declare dso_local i32 @is_gray(i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @write_header(...) #1

declare dso_local i32 @write_hex(i32) #1

declare dso_local i32 @write_footer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
