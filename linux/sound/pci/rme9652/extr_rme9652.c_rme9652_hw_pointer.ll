; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_hw_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_rme9652_hw_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rme9652 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RME9652_status_register = common dso_local global i32 0, align 4
@RME9652_buffer_id = common dso_local global i32 0, align 4
@RME9652_buf_pos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Unexpected hw_pointer position (bufid == 0): status: %x offset: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"Unexpected hw_pointer position (bufid == 1): status: %x offset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rme9652*)* @rme9652_hw_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rme9652_hw_pointer(%struct.snd_rme9652* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_rme9652* %0, %struct.snd_rme9652** %3, align 8
  %9 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %10 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %14 = load i32, i32* @RME9652_status_register, align 4
  %15 = call i32 @rme9652_read(%struct.snd_rme9652* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %17 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RME9652_buffer_id, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %2, align 4
  br label %142

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RME9652_buf_pos, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %35 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %43 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 4
  %46 = icmp sle i32 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %49 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %30
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %54 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %57 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = udiv i32 %61, 4
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @RME9652_buffer_id, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %55
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %72 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ugt i32 %70, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %80 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %75
  br label %93

88:                                               ; preds = %69
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %142

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %95 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sub i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* %7, align 4
  %103 = mul i32 %102, 2
  %104 = load i32, i32* %5, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %101, %93
  br label %140

107:                                              ; preds = %55
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %111 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %109, %112
  %114 = icmp ugt i32 %108, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %115
  %119 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %120 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %119, i32 0, i32 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @dev_err(i32 %123, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %115
  br label %134

128:                                              ; preds = %107
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %142

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %127
  %135 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %136 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %134, %106
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %131, %91, %28
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i32 @rme9652_read(%struct.snd_rme9652*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
