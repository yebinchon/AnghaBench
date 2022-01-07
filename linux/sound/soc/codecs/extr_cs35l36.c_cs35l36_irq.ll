; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l36.c_cs35l36_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs35l36_private = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CS35L36_INT1_STATUS = common dso_local global i32 0, align 4
@CS35L36_INT1_MASK = common dso_local global i32 0, align 4
@CS35L36_AMP_SHORT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Amp short error\0A\00", align 1
@CS35L36_PROTECT_REL_ERR = common dso_local global i32 0, align 4
@CS35L36_AMP_SHORT_ERR_RLS = common dso_local global i32 0, align 4
@CS35L36_INT3_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CS35L36_TEMP_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Over temperature warning\0A\00", align 1
@CS35L36_TEMP_WARN_ERR_RLS = common dso_local global i32 0, align 4
@CS35L36_TEMP_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Over temperature error\0A\00", align 1
@CS35L36_TEMP_ERR_RLS = common dso_local global i32 0, align 4
@CS35L36_BST_OVP_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"VBST Over Voltage error\0A\00", align 1
@CS35L36_BST_DCM_UVP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"DCM VBST Under Voltage Error\0A\00", align 1
@CS35L36_BST_UVP_ERR_RLS = common dso_local global i32 0, align 4
@CS35L36_BST_SHORT_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"LBST SHORT error!\0A\00", align 1
@CS35L36_BST_SHORT_ERR_RLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cs35l36_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l36_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cs35l36_private*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cs35l36_private*
  store %struct.cs35l36_private* %11, %struct.cs35l36_private** %6, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %14 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %19 = call i32 @ARRAY_SIZE(i32* %18)
  %20 = call i32 @regmap_bulk_read(i32 %15, i32 %16, i32* %17, i32 %19)
  %21 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %22 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CS35L36_INT1_MASK, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = call i32 @regmap_bulk_read(i32 %23, i32 %24, i32* %25, i32 %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %2
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @IRQ_NONE, align 4
  store i32 %61, i32* %3, align 4
  br label %292

62:                                               ; preds = %52, %44, %36, %2
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CS35L36_AMP_SHORT_ERR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %70 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_crit(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %74 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %77 = load i32, i32* @CS35L36_AMP_SHORT_ERR_RLS, align 4
  %78 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %77, i32 0)
  %79 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %80 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %83 = load i32, i32* @CS35L36_AMP_SHORT_ERR_RLS, align 4
  %84 = load i32, i32* @CS35L36_AMP_SHORT_ERR_RLS, align 4
  %85 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %87 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %90 = load i32, i32* @CS35L36_AMP_SHORT_ERR_RLS, align 4
  %91 = call i32 @regmap_update_bits(i32 %88, i32 %89, i32 %90, i32 0)
  %92 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %93 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @CS35L36_INT3_STATUS, align 4
  %96 = load i32, i32* @CS35L36_AMP_SHORT_ERR, align 4
  %97 = load i32, i32* @CS35L36_AMP_SHORT_ERR, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %68, %62
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = load i32, i32* @CS35L36_TEMP_WARN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %138

106:                                              ; preds = %100
  %107 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %108 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_crit(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %111 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %112 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %115 = load i32, i32* @CS35L36_TEMP_WARN_ERR_RLS, align 4
  %116 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 0)
  %117 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %118 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %121 = load i32, i32* @CS35L36_TEMP_WARN_ERR_RLS, align 4
  %122 = load i32, i32* @CS35L36_TEMP_WARN_ERR_RLS, align 4
  %123 = call i32 @regmap_update_bits(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %125 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %128 = load i32, i32* @CS35L36_TEMP_WARN_ERR_RLS, align 4
  %129 = call i32 @regmap_update_bits(i32 %126, i32 %127, i32 %128, i32 0)
  %130 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %131 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %134 = load i32, i32* @CS35L36_TEMP_WARN, align 4
  %135 = load i32, i32* @CS35L36_TEMP_WARN, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %106, %100
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = load i32, i32* @CS35L36_TEMP_ERR, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %138
  %145 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %146 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dev_crit(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %149 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %150 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %153 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %154 = call i32 @regmap_update_bits(i32 %151, i32 %152, i32 %153, i32 0)
  %155 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %156 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %159 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %160 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %161 = call i32 @regmap_update_bits(i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %163 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %166 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %167 = call i32 @regmap_update_bits(i32 %164, i32 %165, i32 %166, i32 0)
  %168 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %169 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %172 = load i32, i32* @CS35L36_TEMP_ERR, align 4
  %173 = load i32, i32* @CS35L36_TEMP_ERR, align 4
  %174 = call i32 @regmap_update_bits(i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %144, %138
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %178 = load i32, i32* %177, align 16
  %179 = load i32, i32* @CS35L36_BST_OVP_ERR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %214

182:                                              ; preds = %176
  %183 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %184 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @dev_crit(i32 %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %187 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %188 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %191 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %192 = call i32 @regmap_update_bits(i32 %189, i32 %190, i32 %191, i32 0)
  %193 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %194 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %197 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %198 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %199 = call i32 @regmap_update_bits(i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %201 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %204 = load i32, i32* @CS35L36_TEMP_ERR_RLS, align 4
  %205 = call i32 @regmap_update_bits(i32 %202, i32 %203, i32 %204, i32 0)
  %206 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %207 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %210 = load i32, i32* @CS35L36_BST_OVP_ERR, align 4
  %211 = load i32, i32* @CS35L36_BST_OVP_ERR, align 4
  %212 = call i32 @regmap_update_bits(i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %213, i32* %9, align 4
  br label %214

214:                                              ; preds = %182, %176
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %216 = load i32, i32* %215, align 16
  %217 = load i32, i32* @CS35L36_BST_DCM_UVP_ERR, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %252

220:                                              ; preds = %214
  %221 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %222 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @dev_crit(i32 %223, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %225 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %226 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %229 = load i32, i32* @CS35L36_BST_UVP_ERR_RLS, align 4
  %230 = call i32 @regmap_update_bits(i32 %227, i32 %228, i32 %229, i32 0)
  %231 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %232 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %235 = load i32, i32* @CS35L36_BST_UVP_ERR_RLS, align 4
  %236 = load i32, i32* @CS35L36_BST_UVP_ERR_RLS, align 4
  %237 = call i32 @regmap_update_bits(i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %239 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %242 = load i32, i32* @CS35L36_BST_UVP_ERR_RLS, align 4
  %243 = call i32 @regmap_update_bits(i32 %240, i32 %241, i32 %242, i32 0)
  %244 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %245 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %248 = load i32, i32* @CS35L36_BST_DCM_UVP_ERR, align 4
  %249 = load i32, i32* @CS35L36_BST_DCM_UVP_ERR, align 4
  %250 = call i32 @regmap_update_bits(i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %220, %214
  %253 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %254 = load i32, i32* %253, align 16
  %255 = load i32, i32* @CS35L36_BST_SHORT_ERR, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %290

258:                                              ; preds = %252
  %259 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %260 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @dev_crit(i32 %261, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %263 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %264 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %267 = load i32, i32* @CS35L36_BST_SHORT_ERR_RLS, align 4
  %268 = call i32 @regmap_update_bits(i32 %265, i32 %266, i32 %267, i32 0)
  %269 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %270 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %273 = load i32, i32* @CS35L36_BST_SHORT_ERR_RLS, align 4
  %274 = load i32, i32* @CS35L36_BST_SHORT_ERR_RLS, align 4
  %275 = call i32 @regmap_update_bits(i32 %271, i32 %272, i32 %273, i32 %274)
  %276 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %277 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @CS35L36_PROTECT_REL_ERR, align 4
  %280 = load i32, i32* @CS35L36_BST_SHORT_ERR_RLS, align 4
  %281 = call i32 @regmap_update_bits(i32 %278, i32 %279, i32 %280, i32 0)
  %282 = load %struct.cs35l36_private*, %struct.cs35l36_private** %6, align 8
  %283 = getelementptr inbounds %struct.cs35l36_private, %struct.cs35l36_private* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @CS35L36_INT1_STATUS, align 4
  %286 = load i32, i32* @CS35L36_BST_SHORT_ERR, align 4
  %287 = load i32, i32* @CS35L36_BST_SHORT_ERR, align 4
  %288 = call i32 @regmap_update_bits(i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %289, i32* %9, align 4
  br label %290

290:                                              ; preds = %258, %252
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %60
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
