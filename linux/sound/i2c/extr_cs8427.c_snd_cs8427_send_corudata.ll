; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_send_corudata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/extr_cs8427.c_snd_cs8427_send_corudata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_i2c_device = type { %struct.cs8427* }
%struct.cs8427 = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@CS8427_UBMMASK = common dso_local global i32 0, align 4
@CS8427_REG_UDATABUF = common dso_local global i64 0, align 8
@CS8427_UBMZEROS = common dso_local global i32 0, align 4
@CS8427_EFTUI = common dso_local global i32 0, align 4
@CS8427_REG_AUTOINC = common dso_local global i8 0, align 1
@CS8427_REG_CORU_DATABUF = common dso_local global i8 0, align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_i2c_device*, i32, i8*, i32)* @snd_cs8427_send_corudata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs8427_send_corudata(%struct.snd_i2c_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_i2c_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cs8427*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_i2c_device* %0, %struct.snd_i2c_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %6, align 8
  %16 = getelementptr inbounds %struct.snd_i2c_device, %struct.snd_i2c_device* %15, i32 0, i32 0
  %17 = load %struct.cs8427*, %struct.cs8427** %16, align 8
  store %struct.cs8427* %17, %struct.cs8427** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  %22 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %30

25:                                               ; preds = %4
  %26 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  %27 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i8* [ %24, %20 ], [ %29, %25 ]
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @memcmp(i8* %32, i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %136

38:                                               ; preds = %30
  %39 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @snd_cs8427_select_corudata(%struct.snd_i2c_device* %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %136

45:                                               ; preds = %38
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %97

52:                                               ; preds = %45
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 32)
  %55 = load i8*, i8** %11, align 8
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @memcmp(i8* %55, i8* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %96

60:                                               ; preds = %52
  %61 = load i32, i32* @CS8427_UBMMASK, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  %64 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @CS8427_REG_UDATABUF, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %62
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @CS8427_UBMZEROS, align 4
  %71 = load i32, i32* @CS8427_EFTUI, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  %74 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @CS8427_REG_UDATABUF, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %72
  store i32 %79, i32* %77, align 4
  %80 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %6, align 8
  %81 = load i64, i64* @CS8427_REG_UDATABUF, align 8
  %82 = load %struct.cs8427*, %struct.cs8427** %10, align 8
  %83 = getelementptr inbounds %struct.cs8427, %struct.cs8427* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @CS8427_REG_UDATABUF, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @snd_cs8427_reg_write(%struct.snd_i2c_device* %80, i64 %81, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %60
  %92 = load i32, i32* %13, align 4
  br label %94

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i32 [ %92, %91 ], [ 0, %93 ]
  store i32 %95, i32* %5, align 4
  br label %136

96:                                               ; preds = %52
  br label %97

97:                                               ; preds = %96, %45
  %98 = load i8, i8* @CS8427_REG_AUTOINC, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @CS8427_REG_CORU_DATABUF, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %99, %101
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8 %103, i8* %104, align 16
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %120, %97
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call zeroext i8 @bitrev8(i8 zeroext %114)
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 %118
  store i8 %115, i8* %119, align 1
  br label %120

120:                                              ; preds = %109
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load %struct.snd_i2c_device*, %struct.snd_i2c_device** %6, align 8
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = call i32 @snd_i2c_sendbytes(%struct.snd_i2c_device* %124, i8* %125, i32 %127)
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %136

135:                                              ; preds = %123
  store i32 1, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %132, %94, %43, %37
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @snd_cs8427_select_corudata(%struct.snd_i2c_device*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snd_cs8427_reg_write(%struct.snd_i2c_device*, i64, i32) #1

declare dso_local zeroext i8 @bitrev8(i8 zeroext) #1

declare dso_local i32 @snd_i2c_sendbytes(%struct.snd_i2c_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
