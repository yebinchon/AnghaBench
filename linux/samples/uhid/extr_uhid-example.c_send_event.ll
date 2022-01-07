; ModuleID = '/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@UHID_INPUT = common dso_local global i32 0, align 4
@btn1_down = common dso_local global i64 0, align 8
@btn2_down = common dso_local global i64 0, align 8
@btn3_down = common dso_local global i64 0, align 8
@abs_hor = common dso_local global i32 0, align 4
@abs_ver = common dso_local global i32 0, align 4
@wheel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhid_event, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @memset(%struct.uhid_event* %3, i32 0, i32 24)
  %5 = load i32, i32* @UHID_INPUT, align 4
  %6 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 5, i32* %9, align 8
  %10 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 1, i32* %14, align 4
  %15 = load i64, i64* @btn1_down, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i64, i64* @btn2_down, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i64, i64* @btn3_down, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 4
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %36
  %48 = load i32, i32* @abs_hor, align 4
  %49 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* @abs_ver, align 4
  %55 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @wheel, align 4
  %61 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @uhid_write(i32 %66, %struct.uhid_event* %3)
  ret i32 %67
}

declare dso_local i32 @memset(%struct.uhid_event*, i32, i32) #1

declare dso_local i32 @uhid_write(i32, %struct.uhid_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
