; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_lgr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.smc_sock = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.smc_link_group* }
%struct.smc_link_group = type { i32, %struct.smc_link*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i64, i64 }
%struct.smc_link = type { i64, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.smc_init_info = type { i32, i32, i32, i64, %struct.TYPE_11__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32* }

@SMC_CLC_DECL_ISMVLANERR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMC_CLC_DECL_MEM = common dso_local global i32 0, align 4
@SMC_RMBE_SIZES = common dso_local global i32 0, align 4
@SMC_LGR_NUM_INCR = common dso_local global i64 0, align 8
@smc_lgr_list = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@SMC_LGR_ID_SIZE = common dso_local global i32 0, align 4
@smc_lgr_free_work = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@SMC_SERV = common dso_local global i32 0, align 4
@SMC_CLNT = common dso_local global i32 0, align 4
@SMC_SYSTEMID_LEN = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@SMC_LNK_ACTIVATING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMC_CLC_DECL_INTERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_sock*, %struct.smc_init_info*)* @smc_lgr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_lgr_create(%struct.smc_sock* %0, %struct.smc_init_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_sock*, align 8
  %5 = alloca %struct.smc_init_info*, align 8
  %6 = alloca %struct.smc_link_group*, align 8
  %7 = alloca %struct.smc_link*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smc_sock* %0, %struct.smc_sock** %4, align 8
  store %struct.smc_init_info* %1, %struct.smc_init_info** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %12 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %17 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %22 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %25 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @smc_ism_get_vlan(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @SMC_CLC_DECL_ISMVLANERR, align 4
  store i32 %30, i32* %9, align 4
  br label %291

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %15, %2
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.smc_link_group* @kzalloc(i32 96, i32 %33)
  store %struct.smc_link_group* %34, %struct.smc_link_group** %6, align 8
  %35 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %36 = icmp ne %struct.smc_link_group* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @SMC_CLC_DECL_MEM, align 4
  store i32 %38, i32* %9, align 4
  br label %272

39:                                               ; preds = %32
  %40 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %41 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %44 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %43, i32 0, i32 16
  store i64 %42, i64* %44, align 8
  %45 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %46 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %45, i32 0, i32 15
  store i64 0, i64* %46, align 8
  %47 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %48 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %51 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 4
  %52 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %53 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %52, i32 0, i32 13
  %54 = call i32 @rwlock_init(i32* %53)
  %55 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %56 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %55, i32 0, i32 12
  %57 = call i32 @rwlock_init(i32* %56)
  %58 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %59 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %58, i32 0, i32 11
  %60 = call i32 @rwlock_init(i32* %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %80, %39
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @SMC_RMBE_SIZES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %67 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %66, i32 0, i32 10
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %74 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load i64, i64* @SMC_LGR_NUM_INCR, align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 2), align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 2), align 8
  %87 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %88 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %87, i32 0, i32 8
  %89 = load i32, i32* @SMC_LGR_ID_SIZE, align 4
  %90 = call i32 @memcpy(i32* %88, i32* bitcast (i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 2) to i32*), i32 %89)
  %91 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %92 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %91, i32 0, i32 7
  %93 = load i32, i32* @smc_lgr_free_work, align 4
  %94 = call i32 @INIT_DELAYED_WORK(i32* %92, i32 %93)
  %95 = load i32, i32* @RB_ROOT, align 4
  %96 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %97 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %99 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %83
  %103 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %104 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %107 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %109 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %112 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %247

113:                                              ; preds = %83
  %114 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %115 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @SMC_SERV, align 4
  br label %122

120:                                              ; preds = %113
  %121 = load i32, i32* @SMC_CLNT, align 4
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %125 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %127 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %130 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %129, i32 0, i32 5
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @SMC_SYSTEMID_LEN, align 4
  %135 = call i32 @memcpy(i32* %128, i32* %133, i32 %134)
  %136 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %137 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %136, i32 0, i32 1
  %138 = load %struct.smc_link*, %struct.smc_link** %137, align 8
  %139 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %140 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %138, i64 %139
  store %struct.smc_link* %140, %struct.smc_link** %7, align 8
  %141 = load i32, i32* @SMC_LNK_ACTIVATING, align 4
  %142 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %143 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %145 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %146 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %148 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %147, i32 0, i32 4
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %151 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %150, i32 0, i32 5
  store %struct.TYPE_11__* %149, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %153 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %156 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %158 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %157, i32 0, i32 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %163 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %171 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  %172 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %173 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %172, i32 0, i32 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %122
  %179 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %180 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %179, i32 0, i32 4
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = call i32 @smc_ib_setup_per_ibdev(%struct.TYPE_11__* %181)
  br label %183

183:                                              ; preds = %178, %122
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %185 = call i32 @get_random_bytes(i32* %184, i32 12)
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = shl i32 %189, 8
  %191 = add nsw i32 %187, %190
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 16
  %195 = add nsw i32 %191, %194
  %196 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %197 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  %198 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %199 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %198, i32 0, i32 5
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %202 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %205 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %208 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %211 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %210, i32 0, i32 3
  %212 = call i32 @smc_ib_determine_gid(%struct.TYPE_11__* %200, i32 %203, i32 %206, i32 %209, i32* %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %183
  br label %269

216:                                              ; preds = %183
  %217 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %218 = call i32 @smc_llc_link_init(%struct.smc_link* %217)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  br label %269

222:                                              ; preds = %216
  %223 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %224 = call i32 @smc_wr_alloc_link_mem(%struct.smc_link* %223)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %266

228:                                              ; preds = %222
  %229 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %230 = call i32 @smc_ib_create_protection_domain(%struct.smc_link* %229)
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %9, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %263

234:                                              ; preds = %228
  %235 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %236 = call i32 @smc_ib_create_queue_pair(%struct.smc_link* %235)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %260

240:                                              ; preds = %234
  %241 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %242 = call i32 @smc_wr_create_link(%struct.smc_link* %241)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %257

246:                                              ; preds = %240
  br label %247

247:                                              ; preds = %246, %102
  %248 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %249 = load %struct.smc_sock*, %struct.smc_sock** %4, align 8
  %250 = getelementptr inbounds %struct.smc_sock, %struct.smc_sock* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  store %struct.smc_link_group* %248, %struct.smc_link_group** %251, align 8
  %252 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 0))
  %253 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %254 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %253, i32 0, i32 0
  %255 = call i32 @list_add(i32* %254, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 1))
  %256 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @smc_lgr_list, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %306

257:                                              ; preds = %245
  %258 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %259 = call i32 @smc_ib_destroy_queue_pair(%struct.smc_link* %258)
  br label %260

260:                                              ; preds = %257, %239
  %261 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %262 = call i32 @smc_ib_dealloc_protection_domain(%struct.smc_link* %261)
  br label %263

263:                                              ; preds = %260, %233
  %264 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %265 = call i32 @smc_wr_free_link_mem(%struct.smc_link* %264)
  br label %266

266:                                              ; preds = %263, %227
  %267 = load %struct.smc_link*, %struct.smc_link** %7, align 8
  %268 = call i32 @smc_llc_link_clear(%struct.smc_link* %267)
  br label %269

269:                                              ; preds = %266, %221, %215
  %270 = load %struct.smc_link_group*, %struct.smc_link_group** %6, align 8
  %271 = call i32 @kfree(%struct.smc_link_group* %270)
  br label %272

272:                                              ; preds = %269, %37
  %273 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %274 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %272
  %278 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %279 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %277
  %283 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %284 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.smc_init_info*, %struct.smc_init_info** %5, align 8
  %287 = getelementptr inbounds %struct.smc_init_info, %struct.smc_init_info* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @smc_ism_put_vlan(i32 %285, i32 %288)
  br label %290

290:                                              ; preds = %282, %277, %272
  br label %291

291:                                              ; preds = %290, %29
  %292 = load i32, i32* %9, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %304

294:                                              ; preds = %291
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = sub nsw i32 0, %296
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %301

299:                                              ; preds = %294
  %300 = load i32, i32* @SMC_CLC_DECL_MEM, align 4
  store i32 %300, i32* %9, align 4
  br label %303

301:                                              ; preds = %294
  %302 = load i32, i32* @SMC_CLC_DECL_INTERR, align 4
  store i32 %302, i32* %9, align 4
  br label %303

303:                                              ; preds = %301, %299
  br label %304

304:                                              ; preds = %303, %291
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %3, align 4
  br label %306

306:                                              ; preds = %304, %247
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local i64 @smc_ism_get_vlan(i32, i32) #1

declare dso_local %struct.smc_link_group* @kzalloc(i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @smc_ib_setup_per_ibdev(%struct.TYPE_11__*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @smc_ib_determine_gid(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i32 @smc_llc_link_init(%struct.smc_link*) #1

declare dso_local i32 @smc_wr_alloc_link_mem(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_create_protection_domain(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_create_queue_pair(%struct.smc_link*) #1

declare dso_local i32 @smc_wr_create_link(%struct.smc_link*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @smc_ib_destroy_queue_pair(%struct.smc_link*) #1

declare dso_local i32 @smc_ib_dealloc_protection_domain(%struct.smc_link*) #1

declare dso_local i32 @smc_wr_free_link_mem(%struct.smc_link*) #1

declare dso_local i32 @smc_llc_link_clear(%struct.smc_link*) #1

declare dso_local i32 @kfree(%struct.smc_link_group*) #1

declare dso_local i32 @smc_ism_put_vlan(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
