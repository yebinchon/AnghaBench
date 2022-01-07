; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_write_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_write_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portman = type { i32 }

@INT_EN = common dso_local global i32 0, align 4
@TXEMPTY = common dso_local global i32 0, align 4
@STROBE = common dso_local global i32 0, align 4
@ESTB = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.portman*, i32, i32)* @portman_write_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @portman_write_midi(%struct.portman* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.portman*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.portman* %0, %struct.portman** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @INT_EN, align 4
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %21, %3
  %15 = load %struct.portman*, %struct.portman** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @portman_write_command(%struct.portman* %15, i32 %16)
  %18 = load %struct.portman*, %struct.portman** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @portman_write_data(%struct.portman* %18, i32 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load %struct.portman*, %struct.portman** %4, align 8
  %23 = call i32 @portman_read_status(%struct.portman* %22)
  %24 = load i32, i32* @TXEMPTY, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @TXEMPTY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %14, label %28

28:                                               ; preds = %21
  %29 = load %struct.portman*, %struct.portman** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @STROBE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @portman_write_command(%struct.portman* %29, i32 %32)
  br label %34

34:                                               ; preds = %40, %28
  %35 = load %struct.portman*, %struct.portman** %4, align 8
  %36 = call i32 @portman_read_status(%struct.portman* %35)
  %37 = load i32, i32* @ESTB, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @cpu_relax()
  br label %34

42:                                               ; preds = %34
  %43 = load %struct.portman*, %struct.portman** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @portman_write_command(%struct.portman* %43, i32 %44)
  br label %46

46:                                               ; preds = %53, %42
  %47 = load %struct.portman*, %struct.portman** %4, align 8
  %48 = call i32 @portman_read_status(%struct.portman* %47)
  %49 = load i32, i32* @ESTB, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @ESTB, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @cpu_relax()
  br label %46

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %63, %55
  %57 = load %struct.portman*, %struct.portman** %4, align 8
  %58 = call i32 @portman_read_status(%struct.portman* %57)
  %59 = load i32, i32* @BUSY, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* @BUSY, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (...) @cpu_relax()
  br label %56

65:                                               ; preds = %56
  ret void
}

declare dso_local i32 @portman_write_command(%struct.portman*, i32) #1

declare dso_local i32 @portman_write_data(%struct.portman*, i32) #1

declare dso_local i32 @portman_read_status(%struct.portman*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
