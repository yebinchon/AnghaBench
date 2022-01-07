; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdbstub_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdbstub_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i8)* }

@kgdb_connected = common dso_local global i64 0, align 8
@dbg_io_ops = common dso_local global %struct.TYPE_2__* null, align 8
@dbg_kdb_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i64, i64* @kgdb_connected, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %79

10:                                               ; preds = %1
  store i64 0, i64* @kgdb_connected, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* @dbg_kdb_mode, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  br label %79

17:                                               ; preds = %13
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  store i8 87, i8* %18, align 1
  %19 = load i32, i32* %2, align 4
  %20 = trunc i32 %19 to i8
  %21 = call zeroext i8 @hex_asc_hi(i8 zeroext %20)
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %2, align 4
  %24 = trunc i32 %23 to i8
  %25 = call zeroext i8 @hex_asc_lo(i8 zeroext %24)
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  store i8 %25, i8* %26, align 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32 (i8)*, i32 (i8)** %28, align 8
  %30 = call i32 %29(i8 zeroext 36)
  store i8 0, i8* %3, align 1
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %50, %17
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %4, align 1
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %3, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, %40
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %3, align 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (i8)*, i32 (i8)** %46, align 8
  %48 = load i8, i8* %4, align 1
  %49 = call i32 %47(i8 zeroext %48)
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i8)*, i32 (i8)** %55, align 8
  %57 = call i32 %56(i8 zeroext 35)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32 (i8)*, i32 (i8)** %59, align 8
  %61 = load i8, i8* %3, align 1
  %62 = call zeroext i8 @hex_asc_hi(i8 zeroext %61)
  %63 = call i32 %60(i8 zeroext %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (i8)*, i32 (i8)** %65, align 8
  %67 = load i8, i8* %3, align 1
  %68 = call zeroext i8 @hex_asc_lo(i8 zeroext %67)
  %69 = call i32 %66(i8 zeroext %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (...)*, i32 (...)** %71, align 8
  %73 = icmp ne i32 (...)* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %53
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (...)*, i32 (...)** %76, align 8
  %78 = call i32 (...) %77()
  br label %79

79:                                               ; preds = %9, %16, %74, %53
  ret void
}

declare dso_local zeroext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local zeroext i8 @hex_asc_lo(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
