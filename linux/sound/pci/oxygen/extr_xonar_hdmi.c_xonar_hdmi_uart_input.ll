; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_hdmi_uart_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_hdmi.c_xonar_hdmi_uart_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"message from HDMI chip received:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xonar_hdmi_uart_input(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %3 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %4 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %12 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 79
  br i1 %19, label %20, label %50

20:                                               ; preds = %7
  %21 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %22 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 75
  br i1 %32, label %33, label %50

33:                                               ; preds = %20
  %34 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %35 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %45 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %40, i8* %43, i32 %46)
  %48 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %49 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %33, %20, %7, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
