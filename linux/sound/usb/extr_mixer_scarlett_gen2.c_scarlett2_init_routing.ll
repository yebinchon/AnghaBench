; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_init_routing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_init_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scarlett2_ports = type { i32* }

@scarlett2_init_routing.connect_order = internal constant [4 x i32] [i32 129, i32 128, i32 130, i32 -1], align 16
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@SCARLETT2_PORT_TYPE_PCM = common dso_local global i64 0, align 8
@SCARLETT2_PORT_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.scarlett2_ports*)* @scarlett2_init_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scarlett2_init_routing(i32* %0, %struct.scarlett2_ports* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.scarlett2_ports*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.scarlett2_ports* %1, %struct.scarlett2_ports** %4, align 8
  %12 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %13 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %14 = load i64, i64* @SCARLETT2_PORT_TYPE_PCM, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @scarlett2_get_port_start_num(%struct.scarlett2_ports* %12, i64 %13, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %18 = load i64, i64* @SCARLETT2_PORT_TYPE_PCM, align 8
  %19 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %17, i64 %18
  %20 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @scarlett2_init_routing.connect_order, i64 0, i64 0), align 16
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %66, %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %26
  %30 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %31 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @scarlett2_get_port_start_num(%struct.scarlett2_ports* %30, i64 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %34, i64 %36
  %38 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %60, %29
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  br label %43

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* @scarlett2_init_routing.connect_order, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %26

72:                                               ; preds = %26
  %73 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %74 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %75 = load i64, i64* @SCARLETT2_PORT_TYPE_PCM, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @scarlett2_get_port_start_num(%struct.scarlett2_ports* %73, i64 %74, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %79 = load i64, i64* @SCARLETT2_PORT_TYPE_PCM, align 8
  %80 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %78, i64 %79
  %81 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %86 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @scarlett2_init_routing.connect_order, i64 0, i64 0), align 16
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %127, %72
  %88 = load i32, i32* %8, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %133

90:                                               ; preds = %87
  %91 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %92 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @scarlett2_get_port_start_num(%struct.scarlett2_ports* %91, i64 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  %95 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %4, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %95, i64 %97
  %99 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %121, %90
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %108, %104
  %112 = phi i1 [ false, %104 ], [ %110, %108 ]
  br i1 %112, label %113, label %126

113:                                              ; preds = %111
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  %116 = load i32*, i32** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %7, align 4
  br label %104

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* @scarlett2_init_routing.connect_order, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  br label %87

133:                                              ; preds = %87
  ret void
}

declare dso_local i32 @scarlett2_get_port_start_num(%struct.scarlett2_ports*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
