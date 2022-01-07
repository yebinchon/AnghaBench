; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_put_packet.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_put_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i8)* }

@dbg_io_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @put_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_packet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %1, %89
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (i8)*, i32 (i8)** %8, align 8
  %10 = call i32 %9(i8 signext 36)
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %18, %6
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %5, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (i8)*, i32 (i8)** %20, align 8
  %22 = load i8, i8* %5, align 1
  %23 = call i32 %21(i8 signext %22)
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %3, align 1
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i8)*, i32 (i8)** %34, align 8
  %36 = call i32 %35(i8 signext 35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (i8)*, i32 (i8)** %38, align 8
  %40 = load i8, i8* %3, align 1
  %41 = call signext i8 @hex_asc_hi(i8 zeroext %40)
  %42 = call i32 %39(i8 signext %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (i8)*, i32 (i8)** %44, align 8
  %46 = load i8, i8* %3, align 1
  %47 = call signext i8 @hex_asc_lo(i8 zeroext %46)
  %48 = call i32 %45(i8 signext %47)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (...)*, i32 (...)** %50, align 8
  %52 = icmp ne i32 (...)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %32
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (...)*, i32 (...)** %55, align 8
  %57 = call i32 (...) %56()
  br label %58

58:                                               ; preds = %53, %32
  %59 = call signext i8 (...) @gdbstub_read_wait()
  store i8 %59, i8* %5, align 1
  %60 = load i8, i8* %5, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call signext i8 (...) @gdbstub_read_wait()
  store i8 %64, i8* %5, align 1
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i8, i8* %5, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 43
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %90

70:                                               ; preds = %65
  %71 = load i8, i8* %5, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 36
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (i8)*, i32 (i8)** %76, align 8
  %78 = call i32 %77(i8 signext 45)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (...)*, i32 (...)** %80, align 8
  %82 = icmp ne i32 (...)* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32 (...)*, i32 (...)** %85, align 8
  %87 = call i32 (...) %86()
  br label %88

88:                                               ; preds = %83, %74
  br label %90

89:                                               ; preds = %70
  br label %6

90:                                               ; preds = %88, %69
  ret void
}

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

declare dso_local signext i8 @gdbstub_read_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
