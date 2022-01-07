; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_clk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-core.c_aio_port_set_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_aio_sub = type { %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.uniphier_aio_chip* }
%struct.uniphier_aio_chip = type { %struct.TYPE_8__*, %struct.regmap*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.regmap = type { i32 }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }

@OPORTMXCTR2_ACLKSEL_A1 = common dso_local global i32 0, align 4
@OPORTMXCTR2_ACLKSEL_F1 = common dso_local global i32 0, align 4
@OPORTMXCTR2_ACLKSEL_A2 = common dso_local global i32 0, align 4
@OPORTMXCTR2_ACLKSEL_F2 = common dso_local global i32 0, align 4
@OPORTMXCTR2_ACLKSEL_A2PLL = common dso_local global i32 0, align 4
@OPORTMXCTR2_ACLKSEL_RX1 = common dso_local global i32 0, align 4
@OPORTMXCTR2_DACCKSEL_1_2 = common dso_local global i32 0, align 4
@OPORTMXCTR2_DACCKSEL_1_3 = common dso_local global i32 0, align 4
@OPORTMXCTR2_DACCKSEL_1_1 = common dso_local global i32 0, align 4
@OPORTMXCTR2_DACCKSEL_2_3 = common dso_local global i32 0, align 4
@PORT_DIR_OUTPUT = common dso_local global i64 0, align 8
@PORT_TYPE_I2S = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"PLL(%d) is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PLL divider(%d) is invalid\0A\00", align 1
@OPORTMXCTR2_MSSEL_MASTER = common dso_local global i32 0, align 4
@OPORTMXCTR2_EXTLSIFSSEL_36 = common dso_local global i32 0, align 4
@OPORTMXCTR2_EXTLSIFSSEL_24 = common dso_local global i32 0, align 4
@PORT_TYPE_EVE = common dso_local global i64 0, align 8
@PORT_TYPE_SPDIF = common dso_local global i64 0, align 8
@IPORTMXCTR2_ACLKSEL_A1 = common dso_local global i32 0, align 4
@IPORTMXCTR2_MSSEL_SLAVE = common dso_local global i32 0, align 4
@IPORTMXCTR2_EXTLSIFSSEL_36 = common dso_local global i32 0, align 4
@IPORTMXCTR2_DACCKSEL_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uniphier_aio_sub*)* @aio_port_set_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_port_set_clk(%struct.uniphier_aio_sub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uniphier_aio_sub*, align 8
  %4 = alloca %struct.uniphier_aio_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.uniphier_aio_sub* %0, %struct.uniphier_aio_sub** %3, align 8
  %10 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %11 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %13, align 8
  store %struct.uniphier_aio_chip* %14, %struct.uniphier_aio_chip** %4, align 8
  %15 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %16 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %18, align 8
  %20 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %5, align 8
  %23 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %24 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %26, align 8
  %28 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %27, i32 0, i32 1
  %29 = load %struct.regmap*, %struct.regmap** %28, align 8
  store %struct.regmap* %29, %struct.regmap** %6, align 8
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %31 = load i32, i32* @OPORTMXCTR2_ACLKSEL_A1, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds i32, i32* %30, i64 1
  %33 = load i32, i32* @OPORTMXCTR2_ACLKSEL_F1, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = load i32, i32* @OPORTMXCTR2_ACLKSEL_A2, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @OPORTMXCTR2_ACLKSEL_F2, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %36, i64 1
  %39 = load i32, i32* @OPORTMXCTR2_ACLKSEL_A2PLL, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds i32, i32* %38, i64 1
  %41 = load i32, i32* @OPORTMXCTR2_ACLKSEL_RX1, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %43 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_2, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  %45 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_3, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_1, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* @OPORTMXCTR2_DACCKSEL_2_3, align 4
  store i32 %49, i32* %48, align 4
  %50 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %51 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PORT_DIR_OUTPUT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %237

57:                                               ; preds = %1
  %58 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %59 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PORT_TYPE_I2S, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %141

65:                                               ; preds = %57
  %66 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %67 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %72 = call i64 @ARRAY_SIZE(i32* %71)
  %73 = icmp uge i64 %70, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %77 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %256

84:                                               ; preds = %65
  %85 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %86 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %91 = call i64 @ARRAY_SIZE(i32* %90)
  %92 = icmp uge i64 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %96 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %256

103:                                              ; preds = %84
  %104 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %105 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @OPORTMXCTR2_MSSEL_MASTER, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %114 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %112, %119
  store i32 %120, i32* %9, align 4
  %121 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %122 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %125 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %136 [
    i32 0, label %132
    i32 36864000, label %132
    i32 33868800, label %132
  ]

132:                                              ; preds = %103, %103, %103
  %133 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_36, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %140

136:                                              ; preds = %103
  %137 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_24, align 4
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %132
  br label %226

141:                                              ; preds = %57
  %142 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %143 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PORT_TYPE_EVE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load i32, i32* @OPORTMXCTR2_ACLKSEL_A2PLL, align 4
  %151 = load i32, i32* @OPORTMXCTR2_MSSEL_MASTER, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_36, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_2, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %9, align 4
  br label %225

157:                                              ; preds = %141
  %158 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %159 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PORT_TYPE_SPDIF, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %216

165:                                              ; preds = %157
  %166 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %167 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %166, i32 0, i32 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %172 = call i64 @ARRAY_SIZE(i32* %171)
  %173 = icmp uge i64 %170, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %165
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %177 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %176, i32 0, i32 1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @dev_err(%struct.device* %175, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %256

184:                                              ; preds = %165
  %185 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %186 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @OPORTMXCTR2_MSSEL_MASTER, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_2, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %9, align 4
  %196 = load %struct.uniphier_aio_chip*, %struct.uniphier_aio_chip** %4, align 8
  %197 = getelementptr inbounds %struct.uniphier_aio_chip, %struct.uniphier_aio_chip* %196, i32 0, i32 0
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %200 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %199, i32 0, i32 1
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %211 [
    i32 0, label %207
    i32 36864000, label %207
    i32 33868800, label %207
  ]

207:                                              ; preds = %184, %184, %184
  %208 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_36, align 4
  %209 = load i32, i32* %9, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %9, align 4
  br label %215

211:                                              ; preds = %184
  %212 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_24, align 4
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %211, %207
  br label %224

216:                                              ; preds = %157
  %217 = load i32, i32* @OPORTMXCTR2_ACLKSEL_A1, align 4
  %218 = load i32, i32* @OPORTMXCTR2_MSSEL_MASTER, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @OPORTMXCTR2_EXTLSIFSSEL_36, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @OPORTMXCTR2_DACCKSEL_1_2, align 4
  %223 = or i32 %221, %222
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %216, %215
  br label %225

225:                                              ; preds = %224, %149
  br label %226

226:                                              ; preds = %225, %140
  %227 = load %struct.regmap*, %struct.regmap** %6, align 8
  %228 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %229 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %228, i32 0, i32 0
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @OPORTMXCTR2(i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @regmap_write(%struct.regmap* %227, i32 %234, i32 %235)
  br label %255

237:                                              ; preds = %1
  %238 = load i32, i32* @IPORTMXCTR2_ACLKSEL_A1, align 4
  %239 = load i32, i32* @IPORTMXCTR2_MSSEL_SLAVE, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @IPORTMXCTR2_EXTLSIFSSEL_36, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @IPORTMXCTR2_DACCKSEL_1_2, align 4
  %244 = or i32 %242, %243
  store i32 %244, i32* %9, align 4
  %245 = load %struct.regmap*, %struct.regmap** %6, align 8
  %246 = load %struct.uniphier_aio_sub*, %struct.uniphier_aio_sub** %3, align 8
  %247 = getelementptr inbounds %struct.uniphier_aio_sub, %struct.uniphier_aio_sub* %246, i32 0, i32 0
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @IPORTMXCTR2(i32 %251)
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @regmap_write(%struct.regmap* %245, i32 %252, i32 %253)
  br label %255

255:                                              ; preds = %237, %226
  store i32 0, i32* %2, align 4
  br label %256

256:                                              ; preds = %255, %174, %93, %74
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @OPORTMXCTR2(i32) #1

declare dso_local i32 @IPORTMXCTR2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
