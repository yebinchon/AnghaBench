; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_fill_ac.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_fill_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.tty_struct*, %struct.pacct_struct }
%struct.tty_struct = type { i32 }
%struct.pacct_struct = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i64, i64, i8*, i32 }

@current = common dso_local global %struct.TYPE_12__* null, align 8
@ACCT_VERSION = common dso_local global i32 0, align 4
@ACCT_BYTEORDER = common dso_local global i32 0, align 4
@AHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @fill_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_ac(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.pacct_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tty_struct*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store %struct.pacct_struct* %10, %struct.pacct_struct** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = call i32 @memset(%struct.TYPE_11__* %11, i32 0, i32 104)
  %13 = load i32, i32* @ACCT_VERSION, align 4
  %14 = load i32, i32* @ACCT_BYTEORDER, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strlcpy(i32 %20, i32 %23, i32 4)
  %25 = call i64 (...) @ktime_get_ns()
  store i64 %25, i64* %5, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @nsec_to_AHZ(i64 %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* %4, align 8
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i64 [ %38, %37 ], [ -1, %39 ]
  %42 = call i8* @encode_comp_t(i64 %41)
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 13
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i32, i32* @AHZ, align 4
  %47 = call i32 @do_div(i64 %45, i32 %46)
  %48 = call i64 (...) @get_seconds()
  %49 = load i64, i64* %4, align 8
  %50 = sub i64 %48, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 11
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.tty_struct*, %struct.tty_struct** %61, align 8
  store %struct.tty_struct* %62, %struct.tty_struct** %6, align 8
  %63 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %64 = icmp ne %struct.tty_struct* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %40
  %66 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %67 = call i32 @tty_devnum(%struct.tty_struct* %66)
  %68 = call i32 @old_encode_dev(i32 %67)
  br label %70

69:                                               ; preds = %40
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 0, %69 ]
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 9
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %75 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @nsec_to_AHZ(i64 %76)
  %78 = call i8* @encode_comp_t(i64 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %82 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @nsec_to_AHZ(i64 %83)
  %85 = call i8* @encode_comp_t(i64 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %89 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %94 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @encode_comp_t(i64 %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %100 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @encode_comp_t(i64 %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %106 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @encode_comp_t(i64 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.pacct_struct*, %struct.pacct_struct** %3, align 8
  %112 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = call i32 @spin_unlock_irq(i32* %119)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ktime_get_ns(...) #1

declare dso_local i64 @nsec_to_AHZ(i64) #1

declare dso_local i8* @encode_comp_t(i64) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @tty_devnum(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
