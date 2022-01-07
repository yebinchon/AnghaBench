; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_num_to_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_mux_src_num_to_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scarlett2_ports = type { i32*, i32 }

@SCARLETT2_PORT_TYPE_COUNT = common dso_local global i32 0, align 4
@SCARLETT2_PORT_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scarlett2_ports*, i32)* @scarlett2_mux_src_num_to_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_mux_src_num_to_id(%struct.scarlett2_ports* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scarlett2_ports*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scarlett2_ports* %0, %struct.scarlett2_ports** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %44, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SCARLETT2_PORT_TYPE_COUNT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %13, i64 %15
  %17 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %12, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %11
  %24 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %24, i64 %26
  %28 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %11
  %33 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %33, i64 %35
  %37 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %7

47:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
