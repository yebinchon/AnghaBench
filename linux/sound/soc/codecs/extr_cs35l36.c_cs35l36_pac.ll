; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_pac.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l36_private = type { i64, i32, i32 }

@CS35L36_REV_B0 = common dso_local global i64 0, align 8
@CS35L36_TESTKEY_CTRL = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_UNLOCK2 = common dso_local global i32 0, align 4
@CS35L36_PAC_CTL1 = common dso_local global i32 0, align 4
@CS35L36_PAC_RESET = common dso_local global i32 0, align 4
@CS35L36_PAC_CTL3 = common dso_local global i32 0, align 4
@CS35L36_PAC_MEM_ACCESS = common dso_local global i32 0, align 4
@CS35L36_PAC_PMEM_WORD0 = common dso_local global i32 0, align 4
@CS35L36_B0_PAC_PATCH = common dso_local global i32 0, align 4
@CS35L36_PAC_MEM_ACCESS_CLR = common dso_local global i32 0, align 4
@CS35L36_PAC_ENABLE_MASK = common dso_local global i32 0, align 4
@CS35L36_INT4_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read int4_status %d\0A\00", align 1
@CS35L36_MCU_CONFIG_CLR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK1 = common dso_local global i32 0, align 4
@CS35L36_TEST_LOCK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs35l36_private*)* @cs35l36_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_pac(%struct.cs35l36_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cs35l36_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs35l36_private* %0, %struct.cs35l36_private** %3, align 8
  %7 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %8 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CS35L36_REV_B0, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %129

13:                                               ; preds = %1
  %14 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %15 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %18 = load i32, i32* @CS35L36_TEST_UNLOCK1, align 4
  %19 = call i32 @regmap_write(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %21 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %24 = load i32, i32* @CS35L36_TEST_UNLOCK2, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  %26 = call i32 @usleep_range(i32 9500, i32 10500)
  %27 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %28 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CS35L36_PAC_CTL1, align 4
  %31 = load i32, i32* @CS35L36_PAC_RESET, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %34 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CS35L36_PAC_CTL3, align 4
  %37 = load i32, i32* @CS35L36_PAC_MEM_ACCESS, align 4
  %38 = call i32 @regmap_write(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %40 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CS35L36_PAC_PMEM_WORD0, align 4
  %43 = load i32, i32* @CS35L36_B0_PAC_PATCH, align 4
  %44 = call i32 @regmap_write(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %46 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CS35L36_PAC_CTL3, align 4
  %49 = load i32, i32* @CS35L36_PAC_MEM_ACCESS_CLR, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %52 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CS35L36_PAC_CTL1, align 4
  %55 = load i32, i32* @CS35L36_PAC_ENABLE_MASK, align 4
  %56 = call i32 @regmap_write(i32 %53, i32 %54, i32 %55)
  %57 = call i32 @usleep_range(i32 9500, i32 10500)
  %58 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %59 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CS35L36_INT4_STATUS, align 4
  %62 = call i32 @regmap_read(i32 %60, i32 %61, i32* %6)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %13
  %66 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %67 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %129

72:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %103, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @CS35L36_MCU_CONFIG_CLR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = call i32 @usleep_range(i32 100, i32 200)
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %84 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @CS35L36_INT4_STATUS, align 4
  %87 = call i32 @regmap_read(i32 %85, i32 %86, i32* %6)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %79
  %91 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %92 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %129

97:                                               ; preds = %79
  %98 = load i32, i32* %5, align 4
  %99 = icmp sge i32 %98, 100
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %129

103:                                              ; preds = %97
  br label %73

104:                                              ; preds = %73
  %105 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %106 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CS35L36_INT4_STATUS, align 4
  %109 = load i32, i32* @CS35L36_MCU_CONFIG_CLR, align 4
  %110 = call i32 @regmap_write(i32 %107, i32 %108, i32 %109)
  %111 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %112 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CS35L36_PAC_CTL1, align 4
  %115 = load i32, i32* @CS35L36_PAC_ENABLE_MASK, align 4
  %116 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %118 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %121 = load i32, i32* @CS35L36_TEST_LOCK1, align 4
  %122 = call i32 @regmap_write(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.cs35l36_private*, %struct.cs35l36_private** %3, align 8
  %124 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CS35L36_TESTKEY_CTRL, align 4
  %127 = load i32, i32* @CS35L36_TEST_LOCK2, align 4
  %128 = call i32 @regmap_write(i32 %125, i32 %126, i32 %127)
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %104, %100, %90, %65, %12
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
