; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_btcur_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_ag_btcur_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xchk_ag = type { i32, i32, i32, i32, i8*, i32, i8*, i8*, i8*, i32 }

@XFS_BTNUM_BNO = common dso_local global i32 0, align 4
@XFS_BTNUM_CNT = common dso_local global i32 0, align 4
@XFS_BTNUM_INO = common dso_local global i32 0, align 4
@XFS_BTNUM_FINO = common dso_local global i32 0, align 4
@XFS_BTNUM_RMAP = common dso_local global i32 0, align 4
@XFS_BTNUM_REFC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_ag_btcur_init(%struct.xfs_scrub* %0, %struct.xchk_ag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca %struct.xchk_ag*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store %struct.xchk_ag* %1, %struct.xchk_ag** %5, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 1
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %6, align 8
  %11 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %12 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 1
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %17 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %18 = call i32 @xchk_perag_get(%struct.xfs_mount* %16, %struct.xchk_ag* %17)
  %19 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %20 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %25 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %26 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XFS_BTNUM_BNO, align 4
  %29 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %33 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %37 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @XFS_BTNUM_BNO, align 4
  %41 = call i8* @xfs_allocbt_init_cursor(%struct.xfs_mount* %32, i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %43 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %42, i32 0, i32 8
  store i8* %41, i8** %43, align 8
  %44 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %45 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %44, i32 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %31
  br label %224

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49, %23, %2
  %51 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %52 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %50
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %57 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %58 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @XFS_BTNUM_CNT, align 4
  %61 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %65 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %66 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %69 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @XFS_BTNUM_CNT, align 4
  %73 = call i8* @xfs_allocbt_init_cursor(%struct.xfs_mount* %64, i32 %67, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %75 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %77 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %76, i32 0, i32 7
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %63
  br label %224

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %55, %50
  %83 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %84 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %82
  %88 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %89 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %90 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XFS_BTNUM_INO, align 4
  %93 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %88, i32 %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %87
  %96 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %97 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %98 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %101 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @XFS_BTNUM_INO, align 4
  %105 = call i8* @xfs_inobt_init_cursor(%struct.xfs_mount* %96, i32 %99, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %107 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %109 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %108, i32 0, i32 6
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %95
  br label %224

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %87, %82
  %115 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %116 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %151

119:                                              ; preds = %114
  %120 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %121 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %120, i32 0, i32 0
  %122 = call i64 @xfs_sb_version_hasfinobt(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %119
  %125 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %126 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %127 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @XFS_BTNUM_FINO, align 4
  %130 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %125, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %124
  %133 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %134 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %135 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %138 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @XFS_BTNUM_FINO, align 4
  %142 = call i8* @xfs_inobt_init_cursor(%struct.xfs_mount* %133, i32 %136, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %144 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  %145 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %146 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %132
  br label %224

150:                                              ; preds = %132
  br label %151

151:                                              ; preds = %150, %124, %119, %114
  %152 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %153 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %187

156:                                              ; preds = %151
  %157 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %158 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %157, i32 0, i32 0
  %159 = call i64 @xfs_sb_version_hasrmapbt(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %156
  %162 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %163 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %164 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @XFS_BTNUM_RMAP, align 4
  %167 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %162, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %161
  %170 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %171 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %172 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %175 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @xfs_rmapbt_init_cursor(%struct.xfs_mount* %170, i32 %173, i32 %176, i32 %177)
  %179 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %180 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %182 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %169
  br label %224

186:                                              ; preds = %169
  br label %187

187:                                              ; preds = %186, %161, %156, %151
  %188 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %189 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %187
  %193 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %194 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %193, i32 0, i32 0
  %195 = call i64 @xfs_sb_version_hasreflink(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %223

197:                                              ; preds = %192
  %198 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %199 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %200 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @XFS_BTNUM_REFC, align 4
  %203 = call i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub* %198, i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %223

205:                                              ; preds = %197
  %206 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %207 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %208 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %211 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @xfs_refcountbt_init_cursor(%struct.xfs_mount* %206, i32 %209, i32 %212, i32 %213)
  %215 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %216 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load %struct.xchk_ag*, %struct.xchk_ag** %5, align 8
  %218 = getelementptr inbounds %struct.xchk_ag, %struct.xchk_ag* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %205
  br label %224

222:                                              ; preds = %205
  br label %223

223:                                              ; preds = %222, %197, %192, %187
  store i32 0, i32* %3, align 4
  br label %227

224:                                              ; preds = %221, %185, %149, %112, %80, %48
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %224, %223
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @xchk_perag_get(%struct.xfs_mount*, %struct.xchk_ag*) #1

declare dso_local i64 @xchk_ag_btree_healthy_enough(%struct.xfs_scrub*, i32, i32) #1

declare dso_local i8* @xfs_allocbt_init_cursor(%struct.xfs_mount*, i32, i32, i32, i32) #1

declare dso_local i8* @xfs_inobt_init_cursor(%struct.xfs_mount*, i32, i32, i32, i32) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(i32*) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local i32 @xfs_rmapbt_init_cursor(%struct.xfs_mount*, i32, i32, i32) #1

declare dso_local i64 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i32 @xfs_refcountbt_init_cursor(%struct.xfs_mount*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
