; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@DEVICE_ALI = common dso_local global i64 0, align 8
@ICH_REG_OFF_CR = common dso_local global i64 0, align 8
@ICH_RESETREGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reset of registers failed?\0A\00", align 1
@ICH_REG_OFF_BDBAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*, i32)* @snd_intel8x0_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_chip_init(%struct.intel8x0* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel8x0*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %10 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DEVICE_ALI, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_intel8x0_ich_chip_init(%struct.intel8x0* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %155

21:                                               ; preds = %14
  %22 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %23 = call i32 @iagetword(%struct.intel8x0* %22, i32 0)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @snd_intel8x0_ali_chip_init(%struct.intel8x0* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %155

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %21
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %36 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %41 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %42 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %43 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %41, %49
  %51 = call i32 @iputbyte(%struct.intel8x0* %40, i64 %50, i32 0)
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %59 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %64 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %65 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %66 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %64, %72
  %74 = load i32, i32* @ICH_RESETREGS, align 4
  %75 = call i32 @iputbyte(%struct.intel8x0* %63, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %56

79:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %120, %79
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %83 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %123

86:                                               ; preds = %80
  store i32 100000, i32* %7, align 4
  br label %87

87:                                               ; preds = %108, %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %93 = load i64, i64* @ICH_REG_OFF_CR, align 8
  %94 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %95 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %93, %101
  %103 = call i32 @igetbyte(%struct.intel8x0* %92, i64 %102)
  %104 = load i32, i32* @ICH_RESETREGS, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %91
  br label %109

108:                                              ; preds = %91
  br label %87

109:                                              ; preds = %107, %87
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %114 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %112, %109
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %80

123:                                              ; preds = %80
  store i32 0, i32* %6, align 4
  br label %124

124:                                              ; preds = %151, %123
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %127 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %124
  %131 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %132 = load i64, i64* @ICH_REG_OFF_BDBAR, align 8
  %133 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %134 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %133, i32 0, i32 2
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %132, %140
  %142 = load %struct.intel8x0*, %struct.intel8x0** %4, align 8
  %143 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %142, i32 0, i32 2
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @iputdword(%struct.intel8x0* %131, i64 %141, i32 %149)
  br label %151

151:                                              ; preds = %130
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %124

154:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %29, %19
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @snd_intel8x0_ich_chip_init(%struct.intel8x0*, i32) #1

declare dso_local i32 @iagetword(%struct.intel8x0*, i32) #1

declare dso_local i32 @snd_intel8x0_ali_chip_init(%struct.intel8x0*, i32) #1

declare dso_local i32 @iputbyte(%struct.intel8x0*, i64, i32) #1

declare dso_local i32 @igetbyte(%struct.intel8x0*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
