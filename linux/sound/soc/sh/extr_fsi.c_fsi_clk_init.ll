; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_priv = type { %struct.fsi_clk }
%struct.fsi_clk = type { i32 (%struct.device.0*, %struct.fsi_priv.1*)*, i32*, i32*, i32*, i32*, i64, i64 }
%struct.device.0 = type opaque
%struct.fsi_priv.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xcka\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xckb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"can't get xck clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"cpu doesn't support xck clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"icka\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ickb\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"can't get ick clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"cpu doesn't support ick clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"diva\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"divb\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"can't get div clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"cpu doesn't support div clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsi_priv*, i32, i32, i32, i32 (%struct.device*, %struct.fsi_priv*)*)* @fsi_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_clk_init(%struct.device* %0, %struct.fsi_priv* %1, i32 %2, i32 %3, i32 %4, i32 (%struct.device*, %struct.fsi_priv*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fsi_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32 (%struct.device*, %struct.fsi_priv*)*, align 8
  %14 = alloca %struct.fsi_clk*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.fsi_priv* %1, %struct.fsi_priv** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 (%struct.device*, %struct.fsi_priv*)* %5, i32 (%struct.device*, %struct.fsi_priv*)** %13, align 8
  %16 = load %struct.fsi_priv*, %struct.fsi_priv** %9, align 8
  %17 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %16, i32 0, i32 0
  store %struct.fsi_clk* %17, %struct.fsi_clk** %14, align 8
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %9, align 8
  %19 = call i32 @fsi_is_port_a(%struct.fsi_priv* %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %21 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %23 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  %24 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %25 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %27 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %29 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load i32 (%struct.device*, %struct.fsi_priv*)*, i32 (%struct.device*, %struct.fsi_priv*)** %13, align 8
  %31 = bitcast i32 (%struct.device*, %struct.fsi_priv*)* %30 to i32 (%struct.device.0*, %struct.fsi_priv.1*)*
  %32 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %33 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %32, i32 0, i32 0
  store i32 (%struct.device.0*, %struct.fsi_priv.1*)* %31, i32 (%struct.device.0*, %struct.fsi_priv.1*)** %33, align 8
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = call i8* @devm_clk_get(%struct.device* %34, i8* null)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %38 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %40 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %159

47:                                               ; preds = %6
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  %56 = call i8* @devm_clk_get(%struct.device* %51, i8* %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %59 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  %60 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %61 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.device*, %struct.device** %8, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %159

70:                                               ; preds = %50
  %71 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %72 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %75 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %73, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %8, align 8
  %80 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %159

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %47
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %121

87:                                               ; preds = %84
  %88 = load %struct.device*, %struct.device** %8, align 8
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %93 = call i8* @devm_clk_get(%struct.device* %88, i8* %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %96 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %95, i32 0, i32 3
  store i32* %94, i32** %96, align 8
  %97 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %98 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @IS_ERR(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %87
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %159

107:                                              ; preds = %87
  %108 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %109 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %112 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %110, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.device*, %struct.device** %8, align 8
  %117 = call i32 @dev_err(%struct.device* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %159

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %158

124:                                              ; preds = %121
  %125 = load %struct.device*, %struct.device** %8, align 8
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0)
  %130 = call i8* @devm_clk_get(%struct.device* %125, i8* %129)
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %133 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %132, i32 0, i32 2
  store i32* %131, i32** %133, align 8
  %134 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %135 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i64 @IS_ERR(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %124
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %159

144:                                              ; preds = %124
  %145 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %146 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.fsi_clk*, %struct.fsi_clk** %14, align 8
  %149 = getelementptr inbounds %struct.fsi_clk, %struct.fsi_clk* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp eq i32* %147, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %144
  %153 = load %struct.device*, %struct.device** %8, align 8
  %154 = call i32 @dev_err(%struct.device* %153, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %7, align 4
  br label %159

157:                                              ; preds = %144
  br label %158

158:                                              ; preds = %157, %121
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %152, %139, %115, %102, %78, %65, %44
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @fsi_is_port_a(%struct.fsi_priv*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
