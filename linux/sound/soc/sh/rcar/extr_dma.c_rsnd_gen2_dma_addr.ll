; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_gen2_dma_addr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_gen2_dma_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_mod = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }
%struct.dma_addr = type { i32, i32 }

@RSND_GEN2_SSI = common dso_local global i32 0, align 4
@RSND_GEN2_SCU = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@ssi = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"This driver doesn't support SSI%d-%d, so far\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DVC is selected without SRC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai_stream*, %struct.rsnd_mod*, i32, i32)* @rsnd_gen2_dma_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_gen2_dma_addr(%struct.rsnd_dai_stream* %0, %struct.rsnd_mod* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rsnd_dai_stream*, align 8
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsnd_priv*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x [2 x [3 x %struct.dma_addr]]], align 16
  store %struct.rsnd_dai_stream* %0, %struct.rsnd_dai_stream** %5, align 8
  store %struct.rsnd_mod* %1, %struct.rsnd_mod** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %20 = call %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream* %19)
  store %struct.rsnd_priv* %20, %struct.rsnd_priv** %9, align 8
  %21 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %22 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %21)
  store %struct.device* %22, %struct.device** %10, align 8
  %23 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %24 = load i32, i32* @RSND_GEN2_SSI, align 4
  %25 = call i32 @rsnd_gen_get_phy_addr(%struct.rsnd_priv* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.rsnd_priv*, %struct.rsnd_priv** %9, align 8
  %27 = load i32, i32* @RSND_GEN2_SCU, align 4
  %28 = call i32 @rsnd_gen_get_phy_addr(%struct.rsnd_priv* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %30 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %29)
  %31 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %32 = icmp eq %struct.rsnd_mod* %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %35 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream* %34)
  %36 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %37 = icmp eq %struct.rsnd_mod* %35, %36
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %33, %4
  %41 = phi i1 [ true, %4 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %44 = call i32 @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %50 = call i32 @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %40
  %53 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %54 = call i32 @rsnd_io_to_mod_mix(%struct.rsnd_dai_stream* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %58 = call i32 @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %52, %40
  %63 = phi i1 [ true, %52 ], [ true, %40 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %66 = call i32 @rsnd_mod_id(%struct.rsnd_mod* %65)
  store i32 %66, i32* %16, align 4
  %67 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %68 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream* %67)
  %69 = call i32 @rsnd_mod_id_sub(%struct.rsnd_mod* %68)
  store i32 %69, i32* %17, align 4
  %70 = getelementptr inbounds [3 x [2 x [3 x %struct.dma_addr]]], [3 x [2 x [3 x %struct.dma_addr]]]* %18, i64 0, i64 0
  %71 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %70, i64 0, i64 0
  %72 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %71, i64 0, i64 0
  %73 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %72, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %72, i64 1
  %76 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %75, i32 0, i32 0
  %77 = load i32, i32* @src, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @RDMA_SRC_O_N(i32 %77, i32 %78)
  store i32 %79, i32* %76, align 8
  %80 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %75, i32 0, i32 1
  %81 = load i32, i32* @src, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @RDMA_SRC_I_P(i32 %81, i32 %82)
  store i32 %83, i32* %80, align 4
  %84 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %75, i64 1
  %85 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %84, i32 0, i32 0
  %86 = load i32, i32* @src, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @RDMA_CMD_O_N(i32 %86, i32 %87)
  store i32 %88, i32* %85, align 8
  %89 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %84, i32 0, i32 1
  %90 = load i32, i32* @src, align 4
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @RDMA_SRC_I_P(i32 %90, i32 %91)
  store i32 %92, i32* %89, align 4
  %93 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %71, i64 1
  %94 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %93, i64 0, i64 0
  %95 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %94, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %94, i64 1
  %98 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %97, i32 0, i32 0
  %99 = load i32, i32* @src, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @RDMA_SRC_O_P(i32 %99, i32 %100)
  store i32 %101, i32* %98, align 8
  %102 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %97, i32 0, i32 1
  %103 = load i32, i32* @src, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @RDMA_SRC_I_N(i32 %103, i32 %104)
  store i32 %105, i32* %102, align 4
  %106 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %97, i64 1
  %107 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %106, i32 0, i32 0
  %108 = load i32, i32* @src, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @RDMA_CMD_O_P(i32 %108, i32 %109)
  store i32 %110, i32* %107, align 8
  %111 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %106, i32 0, i32 1
  %112 = load i32, i32* @src, align 4
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @RDMA_SRC_I_N(i32 %112, i32 %113)
  store i32 %114, i32* %111, align 4
  %115 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %70, i64 1
  %116 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %115, i64 0, i64 0
  %117 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %116, i64 0, i64 0
  %118 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %117, i32 0, i32 0
  %119 = load i32, i32* @ssi, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @RDMA_SSI_O_N(i32 %119, i32 %120)
  store i32 %121, i32* %118, align 8
  %122 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %117, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %117, i64 1
  %124 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %123, i32 0, i32 0
  %125 = load i32, i32* @ssi, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @RDMA_SSIU_O_P(i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %124, align 8
  %129 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %123, i32 0, i32 1
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %123, i64 1
  %131 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %130, i32 0, i32 0
  %132 = load i32, i32* @ssi, align 4
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @RDMA_SSIU_O_P(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %131, align 8
  %136 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %130, i32 0, i32 1
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %116, i64 1
  %138 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %137, i64 0, i64 0
  %139 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %138, i32 0, i32 1
  %141 = load i32, i32* @ssi, align 4
  %142 = load i32, i32* %16, align 4
  %143 = call i32 @RDMA_SSI_I_N(i32 %141, i32 %142)
  store i32 %143, i32* %140, align 4
  %144 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %138, i64 1
  %145 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %144, i32 0, i32 1
  %147 = load i32, i32* @ssi, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @RDMA_SSIU_I_P(i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %146, align 4
  %151 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %144, i64 1
  %152 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %151, i32 0, i32 1
  %154 = load i32, i32* @ssi, align 4
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @RDMA_SSIU_I_P(i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %153, align 4
  %158 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %115, i64 1
  %159 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %158, i64 0, i64 0
  %160 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %159, i64 0, i64 0
  %161 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %160, i32 0, i32 0
  %162 = load i32, i32* @ssi, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @RDMA_SSIU_O_N(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %161, align 8
  %166 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %160, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %160, i64 1
  %168 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %167, i32 0, i32 0
  %169 = load i32, i32* @ssi, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @RDMA_SSIU_O_P(i32 %169, i32 %170, i32 %171)
  store i32 %172, i32* %168, align 8
  %173 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %167, i32 0, i32 1
  store i32 0, i32* %173, align 4
  %174 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %167, i64 1
  %175 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %174, i32 0, i32 0
  %176 = load i32, i32* @ssi, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @RDMA_SSIU_O_P(i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %175, align 8
  %180 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %174, i32 0, i32 1
  store i32 0, i32* %180, align 4
  %181 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %159, i64 1
  %182 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %181, i64 0, i64 0
  %183 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  %184 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %182, i32 0, i32 1
  %185 = load i32, i32* @ssi, align 4
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @RDMA_SSIU_I_N(i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %184, align 4
  %189 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %182, i64 1
  %190 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %189, i32 0, i32 0
  store i32 0, i32* %190, align 8
  %191 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %189, i32 0, i32 1
  %192 = load i32, i32* @ssi, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %17, align 4
  %195 = call i32 @RDMA_SSIU_I_P(i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %191, align 4
  %196 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %189, i64 1
  %197 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %196, i32 0, i32 1
  %199 = load i32, i32* @ssi, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = call i32 @RDMA_SSIU_I_P(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %198, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp eq i32 %203, 9
  br i1 %204, label %205, label %213

205:                                              ; preds = %62
  %206 = load i32, i32* %17, align 4
  %207 = icmp sge i32 %206, 4
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load %struct.device*, %struct.device** %10, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %17, align 4
  %212 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %209, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %205, %62
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load %struct.device*, %struct.device** %10, align 8
  %221 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %222

222:                                              ; preds = %219, %216, %213
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %5, align 8
  %227 = call i64 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %229, %225, %222
  %233 = load i32, i32* %8, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [3 x [2 x [3 x %struct.dma_addr]]], [3 x [2 x [3 x %struct.dma_addr]]]* %18, i64 0, i64 %237
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %238, i64 0, i64 %240
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %241, i64 0, i64 %245
  %247 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  br label %263

249:                                              ; preds = %232
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [3 x [2 x [3 x %struct.dma_addr]]], [3 x [2 x [3 x %struct.dma_addr]]]* %18, i64 0, i64 %251
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x [3 x %struct.dma_addr]], [2 x [3 x %struct.dma_addr]]* %252, i64 0, i64 %254
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %15, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [3 x %struct.dma_addr], [3 x %struct.dma_addr]* %255, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.dma_addr, %struct.dma_addr* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  br label %263

263:                                              ; preds = %249, %235
  %264 = phi i32 [ %248, %235 ], [ %262, %249 ]
  ret i32 %264
}

declare dso_local %struct.rsnd_priv* @rsnd_io_to_priv(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_gen_get_phy_addr(%struct.rsnd_priv*, i32) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_to_mod_mix(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_mod_id(%struct.rsnd_mod*) #1

declare dso_local i32 @rsnd_mod_id_sub(%struct.rsnd_mod*) #1

declare dso_local i32 @RDMA_SRC_O_N(i32, i32) #1

declare dso_local i32 @RDMA_SRC_I_P(i32, i32) #1

declare dso_local i32 @RDMA_CMD_O_N(i32, i32) #1

declare dso_local i32 @RDMA_SRC_O_P(i32, i32) #1

declare dso_local i32 @RDMA_SRC_I_N(i32, i32) #1

declare dso_local i32 @RDMA_CMD_O_P(i32, i32) #1

declare dso_local i32 @RDMA_SSI_O_N(i32, i32) #1

declare dso_local i32 @RDMA_SSIU_O_P(i32, i32, i32) #1

declare dso_local i32 @RDMA_SSI_I_N(i32, i32) #1

declare dso_local i32 @RDMA_SSIU_I_P(i32, i32, i32) #1

declare dso_local i32 @RDMA_SSIU_O_N(i32, i32, i32) #1

declare dso_local i32 @RDMA_SSIU_I_N(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @rsnd_ssi_use_busif(%struct.rsnd_dai_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
