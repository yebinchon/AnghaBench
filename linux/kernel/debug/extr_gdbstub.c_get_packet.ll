; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_get_packet.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_get_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (i8)* }

@kgdb_connected = common dso_local global i32 0, align 4
@BUFMAX = common dso_local global i32 0, align 4
@dbg_io_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_packet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %7

7:                                                ; preds = %87, %1
  br label %8

8:                                                ; preds = %12, %7
  %9 = call signext i8 (...) @gdbstub_read_wait()
  store i8 %9, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 36
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %8

13:                                               ; preds = %8
  store i32 1, i32* @kgdb_connected, align 4
  store i8 0, i8* %3, align 1
  store i8 -1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @BUFMAX, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = call signext i8 (...) @gdbstub_read_wait()
  store i8 %20, i8* %6, align 1
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %39

25:                                               ; preds = %19
  %26 = load i8, i8* %3, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = add nsw i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %3, align 1
  %32 = load i8, i8* %6, align 1
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8 %32, i8* %36, align 1
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %24, %14
  %40 = load i8, i8* %6, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = call signext i8 (...) @gdbstub_read_wait()
  %45 = call zeroext i8 @hex_to_bin(i8 signext %44)
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, 4
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %4, align 1
  %49 = call signext i8 (...) @gdbstub_read_wait()
  %50 = call zeroext i8 @hex_to_bin(i8 signext %49)
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %4, align 1
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %4, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %43
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (i8)*, i32 (i8)** %63, align 8
  %65 = call i32 %64(i8 signext 45)
  br label %71

66:                                               ; preds = %43
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32 (i8)*, i32 (i8)** %68, align 8
  %70 = call i32 %69(i8 signext 43)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (...)*, i32 (...)** %73, align 8
  %75 = icmp ne i32 (...)* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_io_ops, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (...)*, i32 (...)** %78, align 8
  %80 = call i32 (...) %79()
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %39
  %83 = load i8*, i8** %2, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 0, i8* %86, align 1
  br label %87

87:                                               ; preds = %82
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* %4, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %7, label %93

93:                                               ; preds = %87
  ret void
}

declare dso_local signext i8 @gdbstub_read_wait(...) #1

declare dso_local zeroext i8 @hex_to_bin(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
